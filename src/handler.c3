module novie::handler;

import std::io;
import concord_raw;

alias OnReady = fn void(Discord*);
alias OnCall = fn void(Discord*, DiscordInteraction*);

U64Snowflake _guild_id @private = 0;
OnReady _on_ready @private = null;

struct GuildCommand {
    concord_raw::DiscordCreateGuildApplicationCommand cmd;
    OnCall on_call;
}

fn void init(U64Snowflake guild_id, Discord *client, OnReady callback) {
    io::printn("Starting bot");
    _guild_id = guild_id;
    _on_ready = callback;
    concord_raw::discord_set_on_ready(client, &on_concord_ready);
}

fn void on_concord_ready(Discord *client, DiscordReady *event) {
    io::printn("Cleaning up old commands");
    DiscordApplicationCommands app_cmds;

    DiscordRetApplicationCommands ret = {
        .sync = &app_cmds
    };

    DiscordRet del_ret = { .sync = true };

    CcordCode code = concord_raw::discord_get_guild_application_commands(client,
        event.application.id, _guild_id, &ret);

    if (code == CCORD_OK && app_cmds.size > 0) {
        defer concord_raw::discord_application_commands_cleanup(&app_cmds);
        for (int i = 0; i < app_cmds.size; i++) {
            concord_raw::discord_delete_guild_application_command(client,
                event.application.id, _guild_id, app_cmds.array[i].id, &del_ret);
        }
    }

    io::printn("Installing commands");
    foreach (GuildCommand cmd : novie::commands) {
        io::printfn("Installing: %s", ((ZString)cmd.cmd.name).str_view());
        concord_raw::discord_create_guild_application_command(client,
            event.application.id, _guild_id, &cmd.cmd, null);
    }

    io::printn("Bot is ready");

    if (_on_ready != null) _on_ready(client);
}
