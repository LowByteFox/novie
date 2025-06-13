module concord;

import std::core::mem;
import concord::raw;

alias BotOnReady = fn void(Bot*, DiscordReady*);

struct Bot {
    Discord *client;
    Allocator alloc;
    void *userdata;
    
    BotOnReady on_ready;
}

fn void Bot.init(&self, Allocator alloc, ZString token) {
    self.alloc = alloc;
    self.client = raw::discord_init(token);
    raw::discord_set_data(self.client, self);
}

fn void Bot.init_from_cfg(&self, Allocator alloc, ZString config_path) {
    self.alloc = alloc;
    self.client = raw::discord_config_init(config_path);
    raw::discord_set_data(self.client, self);
}

fn CcordSzbufReadonly Bot.cfg_get(&self, ZString[] path) {
    return raw::discord_config_get_field(self.client, path.ptr, path.len);
}

fn DiscordUser *Bot.get_self(&self) {
    return raw::discord_get_self(self.client);
}

fn CcordCodeType Bot.run(&self) {
    return raw::discord_run(self.client);
}

fn void Bot.shutdown(&self) {
    raw::discord_shutdown(self.client);
}

fn void Bot.reconnect(&self, bool resume) {
    raw::discord_reconnect(self.client, resume);
}

fn void Bot.free(&self) {
    self.shutdown();
    raw::discord_cleanup(self.client);
}

fn void Bot.set_presence(&self, DiscordPresenceUpdate *status) {
    raw::discord_set_presence(self.client, status);
}

fn void Bot.update_presence(&self, DiscordPresenceUpdate *status) {
    raw::discord_update_presence(self.client, status);
}

fn void Bot.set_on_ready(&self, BotOnReady callback) {
    self.on_ready = callback;
    raw::discord_set_on_ready(self.client, &_on_ready);
}

fn void _on_ready(Discord *client, DiscordReady *event) @private {
    Bot *b = raw::discord_get_data(client);
    b.on_ready(b, event);
}

fn U64UnixMs Bot.now(&self) {
    return raw::discord_timestamp(self.client);
}
