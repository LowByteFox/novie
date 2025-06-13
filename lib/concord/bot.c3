module concord::bot;

import concord::raw;

struct Bot {
    Discord *client;
    Allocator alloc;
}

<*
    @param [in] token
*>
fn void Bot.init(&self, Allocator alloc, ZString token) {
    self.alloc = alloc;
    self.client = raw::discord_init(token);
}

<*
    @param [in] config_path
*>
fn void Bot.init_from_cfg(&self, Allocator alloc, ZString config_path) {
    self.alloc = alloc;
    self.client = raw::discord_config_init(config_path);
}

fn CcordCodeType Bot.run(&self) {
    return raw::discord_run(self.client);
}

fn void Bot.free(&self) {
    raw::discord_cleanup(self.client);
}
