module concord;

import concord::raw;
import std::core::mem;

fn void DiscordActivities.add_activity(&self, DiscordActivity activity) {
    self.array = trealloc(self.array, DiscordActivity.sizeof *
        ((long) self.size + 1));
    self.array[self.size] = activity;
    self.size++;
}

fn void DiscordActivity.set_emoji(&self, ZString name, U64Snowflake id, bool animated) {
    self.emoji = mem::tnew(DiscordActivityEmoji);
    *self.emoji = { name, id, animated };
}

fn void DiscordActivity.add_button(&self, ZString label, ZString url) {
    if (self.buttons == null) {
        self.buttons = mem::tnew(DiscordActivityButtons);
        self.buttons.array = mem::temp_array(DiscordActivityButton, 2);
    }
    if (self.buttons.size + 1 > 2) return;

    self.buttons.array[self.buttons.size] = {
        .label = label,
        .url = url,
    };
    self.buttons.size++;
}
