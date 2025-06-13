#include <concord/discord.h>
#include <concord/discord-internal.h>

int get_ping_ms(struct discord *client) {
    return client->gw.timer->ping_ms;
}
