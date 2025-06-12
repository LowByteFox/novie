module novie;

import concord_raw;
import std::io;
import libc;

novie::handler::GuildCommand[] commands = {
    {{ .name = "ping", .description = "pong!" }, &on_ping },
};

fn void on_ping(Discord *client, DiscordInteraction *event) {
}

fn void on_ready(Discord *client) {
    DiscordActivity[] activities = {
        {
            .name = "Blåhaj prices",
            .type = DISCORD_ACTIVITY_WATCHING,
        }
    };

    DiscordPresenceUpdate status = {
        .activities = &&(DiscordActivities) { .size = 1, .array = activities.ptr },
        .status = "online",
        .afk = false,
        .since = concord_raw::discord_timestamp(client),
    };

    concord_raw::discord_update_presence(client, &status);
}

fn int main(String[] args)
{
    concord_raw::ccord_global_init();
    CcordSzbufReadonly value;
    Discord *bot = concord_raw::discord_config_init("config.json");
    char*[] keys = {"discord", "guild_id"};
    value = concord_raw::discord_config_get_field(bot, keys.ptr, 2);
    defer concord_raw::discord_run(bot);

    novie::handler::init(libc::strtol(value.start, null, 10), bot, &on_ready);
	return 0;
}
