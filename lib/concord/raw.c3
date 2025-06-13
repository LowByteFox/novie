module concord::raw;

/* === TYPES === */
alias U64UnixMs = ulong;
alias U64Bitmask = ulong;
alias U64Snowflake = ulong;
alias JsonChar = char;

alias CcordCode = int;
const CcordCode CCORD_MALFORMED_PAYLOAD = -12;
const CcordCode CCORD_FULL_WORKER = -11;
const CcordCode CCORD_RESOURCE_UNAVAILABLE = -10;
const CcordCode CCORD_UNAVAILABLE = -10;
const CcordCode CCORD_RESOURCE_OWNERSHIP = -9;
const CcordCode CCORD_OWNERSHIP = -9; 
const CcordCode CCORD_GLOBAL_INIT = -8;
const CcordCode CCORD_CURLM_INTERNAL = -7;
const CcordCode CCORD_CURLE_INTERNAL = -6;
const CcordCode CCORD_BAD_JSON = -5;
const CcordCode CCORD_BAD_PARAMETER = -4;
const CcordCode CCORD_UNUSUAL_HTTP_CODE = -3;
const CcordCode CCORD_CURL_NO_RESPONSE = -2;
const CcordCode CCORD_HTTP_CODE = -1;
const CcordCode CCORD_OK = 0;
const CcordCode CCORD_PENDING = 1;
const CcordCode CCORD_DISCORD_JSON_CODE = 100;
const CcordCode CCORD_DISCORD_BAD_AUTH = 101;
const CcordCode CCORD_DISCORD_RATELIMIT = 102;
const CcordCode CCORD_DISCORD_CONNECTION = 103;

alias DiscordApplicationCommandTypes = int;
const DiscordApplicationCommandTypes DISCORD_APPLICATION_CHAT_INPUT = 0;
const DiscordApplicationCommandTypes DISCORD_APPLICATION_USER = 1;
const DiscordApplicationCommandTypes DISCORD_APPLICATION_MESSAGE = 2;

alias DiscordInteractionTypes = int;
const DiscordInteractionTypes DISCORD_INTERACTION_PING = 1;
const DiscordInteractionTypes DISCORD_INTERACTION_APPLICATION_COMMAND = 2;
const DiscordInteractionTypes DISCORD_INTERACTION_MESSAGE_COMPONENT = 3;
const DiscordInteractionTypes DISCORD_INTERACTION_APPLICATION_COMMAND_AUTOCOMPLETE = 4;
const DiscordInteractionTypes DISCORD_INTERACTION_MODAL_SUBMIT = 5;

alias DiscordComponentTypes = int;
const DiscordComponentTypes DISCORD_COMPONENT_ACTION_ROW = 1;
const DiscordComponentTypes DISCORD_COMPONENT_BUTTON = 2;
const DiscordComponentTypes DISCORD_COMPONENT_SELECT_MENU = 3;
const DiscordComponentTypes DISCORD_COMPONENT_TEXT_INPUT = 4;
const DiscordComponentTypes DISCORD_COMPONENT_USER_SELECT = 5;
const DiscordComponentTypes DISCORD_COMPONENT_ROLE_SELECT = 6;
const DiscordComponentTypes DISCORD_COMPONENT_MENTION_SELECT = 7;
const DiscordComponentTypes DISCORD_COMPONENT_CHANNEL_SELECT = 8;
const DiscordComponentTypes DISCORD_COMPONENT_SECTION = 9;
const DiscordComponentTypes DISCORD_COMPONENT_TEXT_DISPLAY = 10;
const DiscordComponentTypes DISCORD_COMPONENT_THUMBNAIL = 11;
const DiscordComponentTypes DISCORD_COMPONENT_MEDIA_GALLERY = 12;
const DiscordComponentTypes DISCORD_COMPONENT_FILE = 13;
const DiscordComponentTypes DISCORD_COMPONENT_SEPARATOR = 14;
const DiscordComponentTypes DISCORD_COMPONENT_CONTENT_INVENTORY_ENTRY = 16;
const DiscordComponentTypes DISCORD_COMPONENT_CONTAINER = 17;

alias DiscordApplicationCommandOptionTypes = int;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_SUB_COMMAND = 1;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_SUB_COMMAND_GROUP = 2;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_STRING = 3;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_INTEGER = 4;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_BOOLEAN = 5;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_USER = 6;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_CHANNEL = 7;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_ROLE = 8;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_MENTIONABLE = 9;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_NUMBER = 10;
const DiscordApplicationCommandOptionTypes DISCORD_APPLICATION_OPTION_ATTACHMENT = 11;

alias DiscordComponentStyles = int;
const DiscordComponentStyles DISCORD_BUTTON_PRIMARY = 1;
const DiscordComponentStyles DISCORD_BUTTON_SECONDARY = 2;
const DiscordComponentStyles DISCORD_BUTTON_SUCCESS = 3;
const DiscordComponentStyles DISCORD_BUTTON_DANGER = 4;
const DiscordComponentStyles DISCORD_BUTTON_LINK = 5;
const DiscordComponentStyles DISCORD_TEXT_SHORT = 1;
const DiscordComponentStyles DISCORD_TEXT_PARAGRAPH = 2;

alias DiscordPremiumTypes = int;
const DiscordPremiumTypes DISCORD_PREMIUM_NONE = 0;
const DiscordPremiumTypes DISCORD_PREMIUM_NITRO_CLASSIC = 1;
const DiscordPremiumTypes DISCORD_PREMIUM_NITRO = 2;

alias DiscordComponentSpacing = int;
const DiscordComponentSpacing DISCORD_COMPONENT_SPACING_SMALL = 1;
const DiscordComponentSpacing DISCORD_COMPONENT_SPACING_LARGE = 2;

alias DiscordChannelTypes = int;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_TEXT = 0;
const DiscordChannelTypes DISCORD_CHANNEL_DM = 1;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_VOICE = 2;
const DiscordChannelTypes DISCORD_CHANNEL_GROUP_DM = 3;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_CATEGORY = 4;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_ANNOUNCEMENT = 5;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_NEWS = 5;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_STORE = 6;
const DiscordChannelTypes DISCORD_CHANNEL_ANNOUNCEMENT_THREAD = 10;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_NEWS_THREAD = 10;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_PUBLIC_THREAD = 11;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_PRIVATE_THREAD = 12;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_STAGE_VOICE = 13;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_DIRECTORY = 14;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_FORUM = 15;
const DiscordChannelTypes DISCORD_CHANNEL_GUILD_MEDIA = 16;

alias DiscordSortOrderTypes = int;
const DiscordSortOrderTypes DISCORD_SORT_ORDER_LATEST_ACTIVITY = 0;
const DiscordSortOrderTypes DISCORD_SORT_ORDER_CREATION_DATE = 1;

alias DiscordForumLayoutTypes = int;
const DiscordForumLayoutTypes DISCORD_FORUM_LAYOUT_NOT_SET = 0;
const DiscordForumLayoutTypes DISCORD_FORUM_LAYOUT_LIST_VIEW = 1;
const DiscordForumLayoutTypes DISCORD_FORUM_LAYOUT_GALLERY_VIEW = 2;

alias DiscordMessageTypes = int;
const DiscordMessageTypes DISCORD_MESSAGE_DEFAULT = 0;
const DiscordMessageTypes DISCORD_MESSAGE_RECIPIENT_ADD = 1;
const DiscordMessageTypes DISCORD_MESSAGE_RECIPIENT_REMOVE = 2;
const DiscordMessageTypes DISCORD_MESSAGE_CALL = 3;
const DiscordMessageTypes DISCORD_MESSAGE_CHANNEL_NAME_CHANGE = 4;
const DiscordMessageTypes DISCORD_MESSAGE_CHANNEL_ICON_CHANGE = 5;
const DiscordMessageTypes DISCORD_MESSAGE_CHANNEL_PINNED_MESSAGE = 6;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_MEMBER_JOIN = 7;
const DiscordMessageTypes DISCORD_MESSAGE_USER_PREMIUM_GUILD_SUBSCRIPTION = 8;
const DiscordMessageTypes DISCORD_MESSAGE_USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_1 = 9;
const DiscordMessageTypes DISCORD_MESSAGE_USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_2 = 10;
const DiscordMessageTypes DISCORD_MESSAGE_USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_3 = 11;
const DiscordMessageTypes DISCORD_MESSAGE_CHANNEL_FOLLOW_ADD = 12;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_DISCOVERY_DISQUALIFIED = 14;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_DISCOVERY_REQUALIFIED = 15;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_DISCOVERY_GRACE_PERIOD_INITIAL_WARNING = 16;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_DISCOVERY_GRACE_PERIOD_FINAL_WARNING = 17;
const DiscordMessageTypes DISCORD_MESSAGE_THREAD_CREATED = 18;
const DiscordMessageTypes DISCORD_MESSAGE_REPLY = 19;
const DiscordMessageTypes DISCORD_MESSAGE_CHAT_INPUT_COMMAND = 20;
const DiscordMessageTypes DISCORD_MESSAGE_THREAD_STARTER_MESSAGE = 21;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_INVITE_REMINDER = 22;
const DiscordMessageTypes DISCORD_MESSAGE_CONTEXT_MENU_COMMAND = 23;
const DiscordMessageTypes DISCORD_MESSAGE_AUTO_MODERATION_ACTION = 24;
const DiscordMessageTypes DISCORD_MESSAGE_ROLE_SUBSCRIPTION_PURCHASE = 25;
const DiscordMessageTypes DISCORD_MESSAGE_INTERACTION_PREMIUM_UPSELL = 26;
const DiscordMessageTypes DISCORD_MESSAGE_STAGE_START = 27;
const DiscordMessageTypes DISCORD_MESSAGE_STAGE_END = 28;
const DiscordMessageTypes DISCORD_MESSAGE_STAGE_SPEAKER = 29;
const DiscordMessageTypes DISCORD_MESSAGE_STAGE_TOPIC = 31;
const DiscordMessageTypes DISCORD_MESSAGE_GUILD_APPLICATION_PREMIUM_SUBSCRIPTION = 32;

alias DiscordMessageActivityType = int;
const DiscordMessageActivityType DISCORD_MESSAGE_ACTIVITY_JOIN = 1;
const DiscordMessageActivityType DISCORD_MESSAGE_ACTIVITY_SPECTATE = 2;
const DiscordMessageActivityType DISCORD_MESSAGE_ACTIVITY_LISTEN = 3;
const DiscordMessageActivityType DISCORD_MESSAGE_ACTIVITY_JOIN_REQUEST = 5;

alias DiscordMembershipState = int;
const DiscordMembershipState DISCORD_MEMBERSHIP_INVITED = 1;
const DiscordMembershipState DISCORD_MEMBERSHIP_ACCEPTED = 2;

alias DiscordStickerFormatTypes = int;
const DiscordStickerFormatTypes DISCORD_STICKER_FORMAT_PNG = 1;
const DiscordStickerFormatTypes DISCORD_STICKER_FORMAT_APNG = 2;
const DiscordStickerFormatTypes DISCORD_STICKER_FORMAT_LOTTIE = 3;

alias DiscordStickerTypes = int;
const DiscordStickerTypes DISCORD_STICKER_STANDARD = 1;
const DiscordStickerTypes DISCORD_STICKER_GUILD = 2;

alias DiscordVerificationLevel = int;
const DiscordVerificationLevel DISCORD_VERIFICATION_NONE = 0;
const DiscordVerificationLevel DISCORD_VERIFICATION_LOW = 1;
const DiscordVerificationLevel DISCORD_VERIFICATION_MEDIUM = 2;
const DiscordVerificationLevel DISCORD_VERIFICATION_HIGH = 3;
const DiscordVerificationLevel DISCORD_VERIFICATION_VERY_HIGH = 4;

alias DiscordMessageNotificationLevel = int;
const DiscordMessageNotificationLevel DISCORD_MESSAGE_NOTIFICATION_ALL_MESSAGES = 0;
const DiscordMessageNotificationLevel DISCORD_MESSAGE_NOTIFICATION_ONLY_MESSAGES = 1;

alias DiscordExplicitContentFilterLevel = int;
const DiscordExplicitContentFilterLevel DISCORD_EXPLICIT_CONTENT_DISABLED = 0;
const DiscordExplicitContentFilterLevel DISCORD_EXPLICIT_CONTENT_MEMBERS_WITHOUT_ROLES = 1;
const DiscordExplicitContentFilterLevel DISCORD_MESSAGE_NOTIFICATION_ALL_MEMBERS = 2;

alias DiscordMfaLevel = int;
const DiscordMfaLevel DISCORD_MFA_NONE = 0;
const DiscordMfaLevel DISCORD_MFA_ELEVATED = 1;

alias DiscordActivityTypes = int;
const DiscordActivityTypes DISCORD_ACTIVITY_GAME = 0;
const DiscordActivityTypes DISCORD_ACTIVITY_STREAMING = 1;
const DiscordActivityTypes DISCORD_ACTIVITY_LISTENING = 2;
const DiscordActivityTypes DISCORD_ACTIVITY_WATCHING = 3;
const DiscordActivityTypes DISCORD_ACTIVITY_CUSTOM = 4;
const DiscordActivityTypes DISCORD_ACTIVITY_COMPETING = 5;

alias DiscordPremiumTier = int;
const DiscordPremiumTier DISCORD_PREMIUM_TIER_NONE = 0;
const DiscordPremiumTier DISCORD_PREMIUM_TIER_1 = 1;
const DiscordPremiumTier DISCORD_PREMIUM_TIER_2 = 2;
const DiscordPremiumTier DISCORD_PREMIUM_TIER_3 = 3;

alias DiscordGuildNSFWLevel = int;
const DiscordGuildNSFWLevel DISCORD_GUILD_NSFW_DEFAULT = 0;
const DiscordGuildNSFWLevel DISCORD_GUILD_NSFW_EXPLICIT = 1;
const DiscordGuildNSFWLevel DISCORD_GUILD_NSFW_SAFE = 2;
const DiscordGuildNSFWLevel DISCORD_GUILD_NSFW_AGE_RESTRICTED = 3;

alias DiscordPrivacyLevel = int;
const DiscordPrivacyLevel DISCORD_PRIVACY_PUBLIC = 1;
const DiscordPrivacyLevel DISCORD_PRIVACY_GUILD_ONLY = 2;

alias DiscordGuildScheduledEventPrivacyLevel = int;
const DiscordGuildScheduledEventPrivacyLevel DISCORD_GUILD_SCHEDULED_EVENT_GUILD_ONLY = 2;

alias DiscordGuildScheduledEventStatus = int;
const DiscordGuildScheduledEventStatus DISCORD_GUILD_SCHEDULED_EVENT_SCHEDULED = 1;
const DiscordGuildScheduledEventStatus DISCORD_GUILD_SCHEDULED_EVENT_ACTIVE = 2;
const DiscordGuildScheduledEventStatus DISCORD_GUILD_SCHEDULED_EVENT_COMPLETED = 3;
const DiscordGuildScheduledEventStatus DISCORD_GUILD_SCHEDULED_EVENT_CANCELED = 4;

alias DiscordGuildScheduledEventEntityTypes = int;
const DiscordGuildScheduledEventEntityTypes DISCORD_GUILD_SCHEDULED_EVENT_ENTITY_STAGE_INSTANCE = 1;
const DiscordGuildScheduledEventEntityTypes DISCORD_GUILD_SCHEDULED_EVENT_ENTITY_VOICE = 2;
const DiscordGuildScheduledEventEntityTypes DISCORD_GUILD_SCHEDULED_EVENT_ENTITY_EXTERNAL = 3;

alias DiscordInteractionCallbackTypes = int;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_PONG = 1;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_CHANNEL_MESSAGE_WITH_SOURCE = 4;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_DEFERRED_CHANNEL_MESSAGE_WITH_SOURCE = 5;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_DEFERRED_UPDATE_MESSAGE = 6;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_UPDATE_MESSAGE = 7;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_APPLICATION_COMMAND_AUTOCOMPLETE_RESULT = 8;
const DiscordInteractionCallbackTypes DISCORD_INTERACTION_MODAL = 9;

struct CcordSzbufReadonly {
    char *start;
    usz size;
}

struct DiscordApplicationCommandOptionChoice {
    char *name;
    JsonChar *value;
}

struct DiscordApplicationCommandOptionChoices {
    int size;
    DiscordApplicationCommandOptionChoice *array;
}

struct Integers {
    int size;
    int *array;
}

struct DiscordApplicationCommandOption {
    DiscordApplicationCommandOptionTypes type;
    char *name;
    char *description;
    bool required;
    DiscordApplicationCommandOptionChoices *choices;
    DiscordApplicationCommandOptions *options;
    Integers *channel_types;
    char *min_value;
    char *max_value;
    bool autocomplete;
}

struct DiscordApplicationCommandOptions {
    int size;
    DiscordApplicationCommandOption *array;
}

struct DiscordCreateGuildApplicationCommand {
    char *name;
    char *description;
    DiscordApplicationCommandOptions *options;
    U64Bitmask default_member_permissions;
    bool dm_permission;
    bool default_permission;
    DiscordApplicationCommandTypes type;
}

struct DiscordResolvedData {
    JsonChar *users;
    JsonChar *members;
    JsonChar *roles;
    JsonChar *channels;
    JsonChar *messages;
    JsonChar *attachments;
}

struct DiscordApplicationCommandInteractionDataOption {
    char *name;
    DiscordApplicationCommandOptionTypes type;
    JsonChar *value;
    DiscordApplicationCommandInteractionDataOptions *options;
    bool focused;
}

struct DiscordApplicationCommandInteractionDataOptions {
    int size;
    DiscordApplicationCommandInteractionDataOption *array;
}

struct Strings {
    int size;
    char **array;
}

struct Snowflakes {
    int size;
    U64Snowflake *array;
}

struct DiscordUser {
    U64Snowflake id;
    char *username;
    char *discriminator;
    char *avatar;
    bool bot;
    bool system;
    bool mfa_enabled;
    char *banner;
    int accent_color;
    char *locale;
    bool verified;
    char *email;
    U64Bitmask flags;
    DiscordPremiumTypes premium_type;
    U64Bitmask public_flags;
}

struct DiscordEmoji {
    U64Snowflake id;
    char *name;
    Snowflakes *roles;
    DiscordUser *user;
    bool require_colons;
    bool managed;
    bool animated;
    bool available;
}

struct DiscordSelectOption {
    char *label;
    char *value;
    char *description;
    DiscordEmoji *emoji;
    bool is_default;
}

struct DiscordSelectOptions {
    int size;
    DiscordSelectOption *array;
}

struct DiscordComponentMedia {
    char *url;
}

struct DiscordComponentItem {
    DiscordComponentMedia *media;
    char *description;
    bool spoiler;
}

struct DiscordComponentItems {
    int size;
    DiscordComponentItem *array;
}

struct DiscordComponent {
    U64Snowflake id;
    DiscordComponentTypes type;
    char *custom_id;
    U64Snowflake sku_id;
    DiscordComponentStyles style;
    char *label;
    DiscordEmoji *emoji;
    char *url;
    DiscordSelectOptions *options;
    char *placeholder;
    int min_values;
    int max_values;
    DiscordComponents *components;
    int min_length;
    int max_length;
    bool required;
    char *value;
    bool disabled;
    DiscordComponent *accessory;
    DiscordComponentMedia *media;
    char *content;
    char *description;
    bool spoiler;
    DiscordComponentItems *items;
    DiscordComponentMedia *file;
    bool divider;
    DiscordComponentSpacing spacing;
    int color;
}

struct DiscordComponents {
    int size;
    DiscordComponent *array;
}

struct DiscordInteractionData {
    U64Snowflake id;
    char *name;
    DiscordApplicationCommandTypes type;
    DiscordResolvedData *resolved;
    DiscordApplicationCommandInteractionDataOptions *options;
    char *custom_id;
    DiscordComponentTypes component_type;
    Strings *values;
    U64Snowflake target_id;
    DiscordComponents *components;
}

struct DiscordGuildMember {
    DiscordUser *user;
    char *nick;
    char *avatar;
    Snowflakes *roles;
    U64UnixMs joined_at;
    U64UnixMs premiun_since;
    bool deaf;
    bool muted;
    bool pending;
    U64Bitmask permissions;
    U64UnixMs communication_disabled_until;
    U64Snowflake guild_id;
}

struct DiscordOverwrite {
    U64Snowflake id;
    int type;
    U64Bitmask allow;
    U64Bitmask deny;
}

struct DiscordOverwrites {
    int size;
    DiscordOverwrite *array;
}

struct DiscordThreadMetadata {
    bool archived;
    int auto_archive_duration;
    U64UnixMs archive_timestamp;
    bool locked;
    bool invitable;
    U64UnixMs create_timestamp;
}

struct DiscordThreadMember {
    U64Snowflake id;
    U64Snowflake user_id;
    U64UnixMs join_timestamp;
    U64Bitmask flags;
    DiscordGuildMember *member;
    U64Snowflake guild_id;
}

struct DiscordThreadTag {
    U64Snowflake id;
    char *name;
    bool moderated;
    U64Snowflake emoji_id;
    char *emoji_name;
}

struct DiscordThreadTags {
    int size;
    DiscordThreadTag *array;
}

struct DiscordThreadDefaultReaction {
    U64Snowflake emoji_id;
    char *emoji_name;
}

struct DiscordChannel {
    U64Snowflake id;
    DiscordChannelTypes type;
    U64Snowflake guild_id;
    int position;
    DiscordOverwrites *permission_overwrites;
    char *name;
    char *topic;
    bool nsfw;
    U64Snowflake last_message_id;
    int bitrate;
    int user_limit;
    int rate_limit_per_user;
    DiscordUsers *recipients;
    char *icon;
    U64Snowflake owner_id;
    U64Snowflake application_id;
    bool managed;
    U64Snowflake parent_id;
    U64UnixMs last_pin_timestamp;
    char *rtc_region;
    int voice_quality_mode;
    int message_count;
    int member_count;
    DiscordThreadMetadata thread_metadata;
    DiscordThreadMember *member;
    int default_auto_archive_duration;
    U64Bitmask permissions;
    U64Bitmask flags;
    int total_message_count;
    DiscordThreadTags *available_tags;
    Snowflakes *applied_tags;
    DiscordThreadDefaultReaction *default_reaction_emoji;
    int default_thread_rate_limit_per_user;
    DiscordSortOrderTypes default_sort_order;
    DiscordForumLayoutTypes default_forum_layout;
}

struct DiscordChannels {
    int size;
    DiscordChannel *array;
}

struct DiscordUsers {
    int size;
    DiscordUser *array;
}

struct DiscordAttachment {
    char *content;
    U64Snowflake id;
    char *filename;
    char *description;
    char *content_type;
    usz size;
    char *url;
    char *proxy_url;
    int height;
    int width;
    bool ephemeral;
    int duration_secs;
    char *waveform;
    U64Bitmask flags;
}

struct DiscordAttachments {
    int size;
    DiscordAttachment *array;
}

struct DiscordEmbedFooter {
    char *text;
    char *icon_url;
    char *proxy_icon_url;
}

struct DiscordEmbedImage {
    char *icon_url;
    char *proxy_icon_url;
    int height;
    int width;
}

struct DiscordEmbedThumbnail {
    char *url;
    char *proxy_url;
    int height;
    int width;
}

alias DiscordEmbedVideo = DiscordEmbedThumbnail;

struct DiscordEmbedProvider {
    char *name;
    char *url;
}

struct DiscordEmbedAuthor {
    char *name;
    char *url;
    char *icon_url;
    char *proxy_icon_url;
}

struct DiscordEmbedField {
    char *name;
    char *value;
    bool is_inline;
}

struct DiscordEmbedFields {
    int size;
    DiscordEmbedField *array;
}

struct DiscordEmbed {
    char *title;
    char *type;
    char *description;
    char *url;
    U64UnixMs timestamp;
    int color;
    DiscordEmbedFooter *footer;
    DiscordEmbedImage *image;
    DiscordEmbedThumbnail *thumbnail;
    DiscordEmbedVideo *video;
    DiscordEmbedProvider *provider;
    DiscordEmbedAuthor *author;
    DiscordEmbedFields *fields;
}

struct DiscordEmbeds {
    int size;
    DiscordEmbed *array;
}

struct DiscordReactionCountDetails {
    int burst;
    int normal;
}

struct DiscordReaction {
    int count;
    DiscordReactionCountDetails *count_details;
    bool me;
    bool me_burst;
    DiscordEmoji *emoji;
    char *burst_colors;
}

struct DiscordReactions {
    int size;
    DiscordReaction *array;
}

struct DiscordMessageActivity {
    DiscordMessageActivityType type;
    char *party_id;
}

struct Bitmasks {
    int size;
    U64Bitmask *array;
}

struct DiscordTeamMember {
    DiscordMembershipState membership_state;
    Bitmasks *permissions;
    U64Snowflake team_id;
    DiscordUser *user;
}

struct DiscordTeamMembers {
    int size;
    DiscordTeamMember *array;
}

struct DiscordTeam {
    char *icon;
    U64Snowflake id;
    DiscordTeamMembers *members;
    char *name;
    U64Snowflake owner_user_id;
}

struct DiscordApplication {
    U64Snowflake id;
    char *name;
    char *icon;
    char *description;
    Strings *rpc_originl;
    bool bot_public;
    bool bot_require_code_grant;
    char *terms_of_service_url;
    char *privacy_policy_url;
    DiscordUser *owner;
    char *summary;
    char *verify_key;
    DiscordTeam *team;
    U64Snowflake guild_id;
    U64Snowflake primary_sku_id;
    char *slug;
    char *cover_image;
    U64Bitmask flags;
}

struct DiscordMessageReference {
    U64Snowflake message_id;
    U64Snowflake channel_id;
    U64Snowflake guild_id;
    bool fail_if_not_exists;
}

struct DiscordMessageInterration {
    U64Snowflake id;
    DiscordInteractionTypes type;
    char *name;
    DiscordUser *user;
    DiscordGuildMember *member;
}

struct DiscordStickerItem {
    U64Snowflake id;
    char *name;
    DiscordStickerFormatTypes format_type;
}

struct DiscordStickerItems {
    int size;
    DiscordStickerItem *array;
}

struct DiscordSticker {
    U64Snowflake id;
    U64Snowflake pack_id;
    char *name;
    char *description;
    char *tags;
    DiscordStickerTypes type;
    DiscordStickerFormatTypes format_type;
    bool available;
    U64Snowflake guild_id;
    DiscordUser *user;
    int sort_value;
}

struct DiscordStickers {
    int size;
    DiscordSticker *array;
}

struct DiscordRoleSubscriptionData {
    U64Snowflake role_subscription_listing_id;
    char *tier_name;
    int total_months_subscribed;
    bool is_renewal;
}

struct DiscordMessage {
    U64Snowflake id;
    U64Snowflake channel_id;
    U64Snowflake guild_id;
    DiscordUser *author;
    DiscordGuildMember *member;
    char *content;
    U64UnixMs timestamp;
    U64UnixMs edited_timestamp;
    bool tts;
    bool mention_everyone;
    DiscordUsers *mentions;
    Snowflakes *mention_roles;
    DiscordChannels *mention_channels;
    DiscordAttachments *attachments;
    DiscordEmbeds *embeds;
    DiscordReactions *reactions;
    JsonChar *nonce;
    bool pinned;
    U64Snowflake webhook_id;
    DiscordMessageTypes type;
    DiscordMessageActivity *activity;
    DiscordApplication *application;
    U64Snowflake application_id;
    DiscordMessageReference *message_reference;
    U64Bitmask flags;
    DiscordMessage *referenced_message;
    DiscordMessageInterration *interraction;
    DiscordChannel *thread;
    DiscordComponents *components;
    DiscordStickerItems *sticker_items;
    DiscordStickers *stickers;
    int position;
    DiscordRoleSubscriptionData *role_subscription_data;
    DiscordResolvedData *resolved;
}

struct DiscordInteraction {
    U64Snowflake id;
    U64Snowflake application_id;
    DiscordInteractionTypes type;
    DiscordInteractionData *data;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    DiscordGuildMember *member;
    DiscordUser *user;
    char *token;
    int version;
    DiscordMessage *message;
    char *locale;
    char *guild_locale;
}

struct DiscordRoleTag {
    U64Snowflake bot_id;
    U64Snowflake integration_id;
    bool premium_subscribe;
}

struct DiscordRoleTags {
    int size;
    DiscordRoleTag *array;
}

struct DiscordRole {
    U64Snowflake id;
    char *name;
    int color;
    bool hoist;
    char *icon;
    char *unicode_emoji;
    int position;
    U64Bitmask permissions;
    bool managed;
    bool mentionable;
    DiscordRoleTags *tags;
}

struct DiscordRoles {
    int size;
    DiscordRole *array;
}

struct DiscordEmojis {
    int size;
    DiscordEmoji *array;
}

struct DiscordVoiceState {
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    U64Snowflake user_id;
    DiscordGuildMember *member;
    char *session_id;
    bool deaf;
    bool mute;
    bool self_deaf;
    bool self_mute;
    bool self_stream;
    bool self_video;
    bool suppress;
    U64UnixMs request_to_speak_timestamp;
}

struct DiscordVoiceStates {
    int size;
    DiscordVoiceState *array;
}

struct DiscordGuildMembers {
    int size;
    DiscordGuildMember *array;
}

struct DiscordClientStatus {
    char *desktop;
    char *mobile;
    char *web;
}

struct DiscordActivityTimestamps {
    U64UnixMs start;
    U64UnixMs end;
}

struct DiscordActivityEmoji {
    char *name;
    U64Snowflake id;
    bool animated;
}

struct DiscordActivityParty {
    char *id;
    Integers *size;
}

struct DiscordActivityAssets {
    char *large_image;
    char *large_text;
    char *small_image;
    char *small_text;
}

struct DiscordActivitySecrets {
    char *join;
    char *spectate;
    char *match;
}

struct DiscordActivityButton {
    char *label;
    char *url;
}

struct DiscordActivityButtons {
    int size;
    DiscordActivityButton *array;
}

struct DiscordActivity {
    char *name;
    DiscordActivityTypes type;
    char *url;
    U64UnixMs created_at;
    DiscordActivityTimestamps *timestamps;
    U64Snowflake application_id;
    char *details;
    char *state;
    DiscordActivityEmoji *emoji;
    DiscordActivityParty *party;
    DiscordActivityAssets *assets;
    DiscordActivitySecrets *secrets;
    bool instance;
    U64Bitmask flags;
    DiscordActivityButtons *buttons;
}

struct DiscordActivities {
    int size;
    DiscordActivity *array;
}

struct DiscordPresenceUpdate {
    DiscordUser *user;
    U64Snowflake guild_id;
    char *status;
    DiscordClientStatus *client_status;
    DiscordActivities *activities;
    U64UnixMs since;
    bool afk;
}

struct DiscordPresenceUpdates {
    int size;
    DiscordPresenceUpdate *array;
}

struct DiscordWelcomeScreenChannel {
    U64Snowflake channel_id;
    char *description;
    U64Snowflake emoji_id;
    char *emoji_name;
}

struct DiscordWelcomeScreenChannels {
    int size;
    DiscordWelcomeScreenChannel *array;
}

struct DiscordWelcomeScreen {
    char *description;
    DiscordWelcomeScreenChannels *welcome_channels;
}

struct DiscordStageInstance {
    U64Snowflake id;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    char *topic;
    DiscordPrivacyLevel privacy_level;
    bool discoverable_disabled;
}

struct DiscordStageInstances {
    int size;
    DiscordStageInstance *array;
}

struct DiscordGuildScheduledEventEntityMetadata {
    char *location;
}

struct DiscordGuildScheduledEvent {
    U64Snowflake id;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    U64Snowflake creator_id;
    char *name;
    char *description;
    U64UnixMs scheduled_start_time;
    U64UnixMs scheduled_end_time;
    DiscordGuildScheduledEventPrivacyLevel privacy_level;
    DiscordGuildScheduledEventStatus status;
    DiscordGuildScheduledEventEntityTypes entity_type;
    U64Snowflake entity_id;
    DiscordGuildScheduledEventEntityMetadata *entity_metadata;
    DiscordUser *creator;
    int user_count;
    char *image;
}

struct DiscordGuildScheduledEvents {
    int size;
    DiscordGuildScheduledEvent *array;
}

struct DiscordGuild {
    U64Snowflake id;
    char *name;
    char *icon;
    char *icon_hash;
    char *splash;
    char *discovery_splash;
    bool owner;
    U64Snowflake owner_id;
    U64Bitmask permissions;
    U64Snowflake afk_channel_id;
    int afk_timeout;
    bool widget_enabled;
    U64Snowflake widget_channel_id;
    DiscordVerificationLevel verification_level;
    DiscordMessageNotificationLevel default_message_notifications;
    DiscordExplicitContentFilterLevel explicit_content_filter;
    DiscordRoles *roles;
    DiscordEmojis *emojis;
    Strings *features;
    DiscordMfaLevel mfa_level;
    U64Snowflake application_id;
    U64Snowflake system_channel_id;
    U64Bitmask system_channel_flags;
    U64Snowflake rules_channel_id;
    U64UnixMs joined_at;
    bool large;
    bool unavailable;
    int member_count;
    DiscordVoiceStates *voice_states;
    DiscordGuildMembers *members;
    DiscordChannels *channels;
    DiscordChannels *threads;
    DiscordPresenceUpdates *presences;
    int max_presences;
    int min_presences;
    char *vanity_url_code;
    char *description;
    char *banner;
    DiscordPremiumTier premium_tier;
    int premium_subscribtion_count;
    char *preffered_locale;
    U64Snowflake public_updates_channel_id;
    int max_video_channel_users;
    int approximate_member_count;
    int approximate_presence_count;
    DiscordWelcomeScreen *welcome_screen;
    DiscordGuildNSFWLevel nsfw_level;
    DiscordStageInstances *stage_instanced;
    DiscordStickers *stickers;
    DiscordGuildScheduledEvents *guild_scheduled_events;
    bool premium_progress_bar_enabled;
}

struct DiscordGuilds {
    int size;
    DiscordGuild *array;
}

struct DiscordReady {
    int v;
    DiscordUser *user;
    DiscordGuilds *guilds;
    char *session_id;
    Integers *shard;
    DiscordApplication *application;
}

struct DiscordApplicationCommand {
    U64Snowflake id;
    DiscordApplicationCommandTypes type;
    U64Snowflake application_id;
    U64Snowflake guild_id;
    char *name;
    char *description;
    DiscordApplicationCommandOptions *options;
    U64Bitmask default_member_permissions;
    bool dm_permission;
    bool default_permission;
    U64Snowflake version;
}

struct DiscordApplicationCommands {
    int size;
    DiscordApplicationCommand *array;
}

struct DiscordResponse {
    void *data;
    void *keep;
    CcordCode code;
}

alias DiscordRetApplicationCommands_Cleanup = fn void(Discord*, void*);
alias DiscordRetApplicationCommands_Fail = fn void(Discord*, DiscordResponse*);
alias DiscordRetApplicationCommands_Done = fn void(Discord*, DiscordResponse*, DiscordApplicationCommands*);

struct DiscordRetApplicationCommands {
    void *data;
    DiscordRetApplicationCommands_Cleanup cleanup;
    void *keep;
    bool high_priority;
    DiscordRetApplicationCommands_Fail fail;
    DiscordRetApplicationCommands_Done done;
    DiscordApplicationCommands *sync;
}

struct DiscordInteractionCallbackData {
    DiscordComponents *components;
    bool tts;
    char *content;
    DiscordEmbeds *embeds;
    U64Bitmask flags;
    DiscordAttachments *attachments;
    DiscordApplicationCommandOptionChoices *choices;
    char *custom_id;
    char *title;
}

struct DiscordInteractionResponse {
    DiscordInteractionCallbackTypes type;
    DiscordInteractionCallbackData *data;
}

alias DiscordRet_Cleanup = fn void(Discord*, void*);
alias DiscordRet_Fail = fn void(Discord*, DiscordResponse*);
alias DiscordRet_Done = fn void(Discord*, DiscordResponse*);

struct DiscordRet {
    void *data;
    DiscordRet_Cleanup cleanup;
    void *keep;
    bool high_priority;
    DiscordRet_Fail fail;
    DiscordRet_Done done;
    bool sync;
}

alias DiscordRetInteractionResponse_Cleanup = fn void(Discord*, void*);
alias DiscordRetInteractionResponse_Fail = fn void(Discord*, DiscordResponse*);
alias DiscordRetInteractionResponse_Done = fn void(Discord*, DiscordResponse*, DiscordInteractionResponse*);

struct DiscordRetInteractionResponse {
    void *data;
    DiscordRetInteractionResponse_Cleanup cleanup;
    void *keep;
    bool high_priority;
    DiscordRetInteractionResponse_Fail fail;
    DiscordRetInteractionResponse_Done done;
    DiscordInteractionResponse *sync;
}

alias Discord = void;
alias OnReady = fn void(Discord*, DiscordReady*);
alias OnInteraction = fn void(Discord*, DiscordInteraction*);

/* === FNS === */
extern fn CcordCode ccord_global_init();
extern fn Discord* discord_init(char* token);
extern fn Discord* discord_config_init(char* config_file);
extern fn CcordSzbufReadonly discord_config_get_field(Discord *client, char **path, uint depth);
extern fn void discord_set_on_ready(Discord *client, OnReady callback);
extern fn CcordCode discord_run(Discord *client);
extern fn CcordCode discord_get_guild_application_commands(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, DiscordRetApplicationCommands *ret);
extern fn CcordCode discord_delete_guild_application_command(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, U64Snowflake command_id, DiscordRet *ret);
extern fn void discord_application_commands_cleanup(DiscordApplicationCommands *self);
extern fn CcordCode discord_create_guild_application_command(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, DiscordCreateGuildApplicationCommand *params, DiscordRetApplicationCommands *ret);
extern fn ulong discord_timestamp(Discord *client);
extern fn void discord_update_presence(Discord *client, DiscordPresenceUpdate *presence);
extern fn void discord_set_on_interaction_create(Discord* client, OnInteraction callback);
extern fn CcordCode discord_create_interaction_response(Discord *client, U64Snowflake interaction_id, char *interaction_token, DiscordInteractionResponse *params, DiscordRetInteractionResponse *ret);
