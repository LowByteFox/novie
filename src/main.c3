module novie;

import concord;
import concord::raw;
import std::io;
import std::core::mem;
import libc;

extern fn int get_ping_ms(Discord*);

novie::handler::GuildCommand[] commands = {
    {{ .name = "ping", .description = "pong!" }, &on_ping },
};

fn void on_ping(Discord *client, DiscordInteraction *event)
{
    char[256] buf;
    io::bprintf(&buf, "pong %dms!", raw::discord_get_ping(client));
    DiscordInteractionResponse params = {
        .type =  DiscordInteractionCallbackTypes.CHANNEL_MESSAGE_WITH_SOURCE,
        .data = &&(DiscordInteractionCallbackData) { .content = (ZString) &buf },
    };
    raw::discord_create_interaction_response(client, event.id, event.token,
        &params, null);
}

fn void on_ready(Bot *bot, DiscordReady *event)
{
    @pool() {
        DiscordActivities activities;
        activities.add_activity({
            .name = "to birds",
            .type = DiscordActivityTypes.LISTENING,
        });

        DiscordPresenceUpdate status = {
            .activities = &activities,
            .status = "online",
            .afk = false,
            .since = bot.now(),
        };

        bot.set_presence(&status);
    };
}

fn int main(String[] args)
{
    raw::ccord_global_init();
    Bot bot;
    defer bot.free();
    bot.init_from_cfg(mem, "config.json");
    CcordSzbufReadonly value = bot.cfg_get({"discord", "guild_id"});

    bot.set_on_ready(&on_ready);

    // handler::init(value.start.str_view()[:value.size].to_long()!!, bot.client, &on_ready);
    bot.run();
	return 0;
}
