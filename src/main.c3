module novie;

import concord::raw;
import std::io;
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
        .data = &&(DiscordInteractionCallbackData) { .content = &buf },
    };
    raw::discord_create_interaction_response(client, event.id, event.token,
        &params, null);
}

fn void on_ready(Discord *client)
{
    DiscordActivity[] activities = {
        {
            .name = "games with Cyano",
            .type =  DiscordActivityTypes.GAME,
        }
    };

    DiscordPresenceUpdate status = {
        .activities = &&(DiscordActivities) { .size = 1, .array = activities.ptr },
        .status = "online",
        .afk = false,
        .since = raw::discord_timestamp(client),
    };

    raw::discord_update_presence(client, &status);
}

fn int main(String[] args)
{
    raw::ccord_global_init();
    CcordSzbufReadonly value;
    Discord *bot = raw::discord_config_init("config.json");
    char*[] keys = {"discord", "guild_id"};
    value = raw::discord_config_get_field(bot, keys.ptr, 2);
    defer raw::discord_run(bot);

    novie::handler::init(libc::strtol(value.start, null, 10), bot, &on_ready);
	return 0;
}
