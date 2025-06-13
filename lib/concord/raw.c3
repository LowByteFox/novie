module concord::raw;

/* === TYPES === */
alias U64UnixMs = ulong;
alias U64Bitmask = ulong;
alias U64Snowflake = ulong;
alias JsonChar = char;

typedef CcordCodeType = int;
enum CcordCode : (inline CcordCodeType v)
{
    MALFORMED_PAYLOAD = -12,
    FULL_WORKER = -11,
    RESOURCE_UNAVAILABLE = -10,
    UNAVAILABLE = -10,
    RESOURCE_OWNERSHIP = -9,
    OWNERSHIP = -9, 
    GLOBAL_INIT = -8,
    CURLM_INTERNAL = -7,
    CURLE_INTERNAL = -6,
    BAD_JSON = -5,
    BAD_PARAMETER = -4,
    UNUSUAL_HTTP_CODE = -3,
    CURL_NO_RESPONSE = -2,
    HTTP_CODE = -1,
    OK = 0,
    PENDING = 1,
    DISCORD_JSON_CODE = 100,
    DISCORD_BAD_AUTH = 101,
    DISCORD_RATELIMIT = 102,
    DISCORD_CONNECTION = 103
}

typedef DiscordApplicationCommandTypesType = int;
enum DiscordApplicationCommandTypes : (inline DiscordApplicationCommandTypesType v)
{
    CHAT_INPUT = 0,
    USER = 1,
    MESSAGE = 2,
}

typedef DiscordInteractionTypesType = int;
enum DiscordInteractionTypes : (inline DiscordInteractionTypesType v) {
    PING = 1,
    APPLICATION_COMMAND = 2,
    MESSAGE_COMPONENT = 3,
    APPLICATION_COMMAND_AUTOCOMPLETE = 4,
    MODAL_SUBMIT = 5,
}

typedef DiscordComponentTypesType = int;
enum DiscordComponentTypes : (inline DiscordComponentTypesType v)
{
    ACTION_ROW = 1,
    BUTTON = 2,
    SELECT_MENU = 3,
    TEXT_INPUT = 4,
    USER_SELECT = 5,
    ROLE_SELECT = 6,
    MENTION_SELECT = 7,
    CHANNEL_SELECT = 8,
    SECTION = 9,
    TEXT_DISPLAY = 10,
    THUMBNAIL = 11,
    MEDIA_GALLERY = 12,
    FILE = 13,
    SEPARATOR = 14,
    CONTENT_INVENTORY_ENTRY = 16,
    CONTAINER = 17,
}

typedef DiscordApplicationCommandOptionTypesType = int;
enum DiscordApplicationCommandOptionTypes : (inline DiscordApplicationCommandOptionTypesType v)
{
    SUB_COMMAND = 1,
    SUB_COMMAND_GROUP = 2,
    STRING = 3,
    INTEGER = 4,
    BOOLEAN = 5,
    USER = 6,
    CHANNEL = 7,
    ROLE = 8,
    MENTIONABLE = 9,
    NUMBER = 10,
    ATTACHMENT = 11,
}

typedef DiscordComponentStylesType = int;
enum DiscordComponentStyles : (inline DiscordComponentStylesType v)
{
    BUTTON_PRIMARY = 1,
    BUTTON_SECONDARY = 2,
    BUTTON_SUCCESS = 3,
    BUTTON_DANGER = 4,
    BUTTON_LINK = 5,
    TEXT_SHORT = 1,
    TEXT_PARAGRAPH = 2,
}

typedef DiscordPremiumTypesType = int;
enum DiscordPremiumTypes : (inline DiscordPremiumTypesType v)
{
    NONE = 0,
    NITRO_CLASSIC = 1,
    NITRO = 2,
}

typedef DiscordComponentSpacingType = int;
enum DiscordComponentSpacing : (inline DiscordComponentSpacingType v)
{
    SMALL = 1,
    LARGE = 2,
}

typedef DiscordChannelTypesType = int;
enum DiscordChannelTypes : (inline DiscordChannelTypesType v)
{
    GUILD_TEXT = 0,
    DM = 1,
    GUILD_VOICE = 2,
    GROUP_DM = 3,
    GUILD_CATEGORY = 4,
    GUILD_ANNOUNCEMENT = 5,
    GUILD_NEWS = 5,
    GUILD_STORE = 6,
    ANNOUNCEMENT_THREAD = 10,
    GUILD_NEWS_THREAD = 10,
    GUILD_PUBLIC_THREAD = 11,
    GUILD_PRIVATE_THREAD = 12,
    GUILD_STAGE_VOICE = 13,
    GUILD_DIRECTORY = 14,
    GUILD_FORUM = 15,
    GUILD_MEDIA = 16,
}

typedef DiscordSortOrderTypesType = int;
enum DiscordSortOrderTypes : (inline DiscordSortOrderTypesType v)
{
    LATEST_ACTIVITY = 0,
    CREATION_DATE = 1,
}

typedef DiscordForumLayoutTypesType = int;
enum DiscordForumLayoutTypes : (inline DiscordForumLayoutTypesType v)
{
    NOT_SET = 0,
    LIST_VIEW = 1,
    GALLERY_VIEW = 2,
}

typedef DiscordMessageTypesType = int;
enum DiscordMessageTypes : (inline DiscordMessageTypesType v)
{
    DEFAULT = 0,
    RECIPIENT_ADD = 1,
    RECIPIENT_REMOVE = 2,
    CALL = 3,
    CHANNEL_NAME_CHANGE = 4,
    CHANNEL_ICON_CHANGE = 5,
    CHANNEL_PINNED_MESSAGE = 6,
    GUILD_MEMBER_JOIN = 7,
    USER_PREMIUM_GUILD_SUBSCRIPTION = 8,
    USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_1 = 9,
    USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_2 = 10,
    USER_PREMIUM_GUILD_SUBSCRIPTION_TIER_3 = 11,
    CHANNEL_FOLLOW_ADD = 12,
    GUILD_DISCOVERY_DISQUALIFIED = 14,
    GUILD_DISCOVERY_REQUALIFIED = 15,
    GUILD_DISCOVERY_GRACE_PERIOD_INITIAL_WARNING = 16,
    GUILD_DISCOVERY_GRACE_PERIOD_FINAL_WARNING = 17,
    THREAD_CREATED = 18,
    REPLY = 19,
    CHAT_INPUT_COMMAND = 20,
    THREAD_STARTER_MESSAGE = 21,
    GUILD_INVITE_REMINDER = 22,
    CONTEXT_MENU_COMMAND = 23,
    AUTO_MODERATION_ACTION = 24,
    ROLE_SUBSCRIPTION_PURCHASE = 25,
    INTERACTION_PREMIUM_UPSELL = 26,
    STAGE_START = 27,
    STAGE_END = 28,
    STAGE_SPEAKER = 29,
    STAGE_TOPIC = 31,
    GUILD_APPLICATION_PREMIUM_SUBSCRIPTION = 32,
}

typedef DiscordMessageActivityTypeType = int;
enum DiscordMessageActivityType : (inline DiscordMessageActivityTypeType v)
{
    JOIN = 1,
    SPECTATE = 2,
    LISTEN = 3,
    JOIN_REQUEST = 5,
}

typedef DiscordMembershipStateType = int;
enum DiscordMembershipState : (inline DiscordMembershipStateType v)
{
    INVITED = 1,
    ACCEPTED = 2,
}

typedef DiscordStickerFormatTypesType = int;
enum DiscordStickerFormatTypes : (inline DiscordStickerFormatTypesType v)
{
    PNG = 1,
    APNG = 2,
    LOTTIE = 3,
}

typedef DiscordStickerTypesType = int;
enum DiscordStickerTypes : (inline DiscordStickerTypesType v)
{
    STANDARD = 1,
    GUILD = 2,
}

typedef DiscordVerificationLevelType = int;
enum DiscordVerificationLevel : (inline DiscordVerificationLevelType v)
{
    NONE = 0,
    LOW = 1,
    MEDIUM = 2,
    HIGH = 3,
    VERY_HIGH = 4,
}

typedef DiscordMessageNotificationLevelType = int;
enum DiscordMessageNotificationLevel : (inline DiscordMessageNotificationLevelType v)
{
    ALL_MESSAGES = 0,
    ONLY_MESSAGES = 1,
}

typedef DiscordExplicitContentFilterLevelType = int;
enum DiscordExplicitContentFilterLevel : (inline DiscordExplicitContentFilterLevelType v)
{
    DISABLED = 0,
    MEMBERS_WITHOUT_ROLES = 1,
    MESSAGE_NOTIFICATION_ALL_MEMBERS = 2,
}

typedef DiscordMfaLevelType = int;
enum DiscordMfaLevel : (inline DiscordMfaLevelType v)
{
    NONE = 0,
    ELEVATED = 1,
}

typedef DiscordActivityTypesType = int;
enum DiscordActivityTypes : (inline DiscordActivityTypesType v)
{
    GAME = 0,
    STREAMING = 1,
    LISTENING = 2,
    WATCHING = 3,
    CUSTOM = 4,
    COMPETING = 5,
}

typedef DiscordPremiumTierType = int;
enum DiscordPremiumTier : (inline DiscordPremiumTierType v)
{
    NONE = 0,
    ONE = 1,
    TWO = 2,
    THREE = 3,
}

typedef DiscordGuildNSFWLevelType = int;
enum DiscordGuildNSFWLevel : (inline DiscordGuildNSFWLevelType v)
{
    DEFAULT = 0,
    EXPLICIT = 1,
    SAFE = 2,
    AGE_RESTRICTED = 3,
}

typedef DiscordPrivacyLevelType = int;
enum DiscordPrivacyLevel : (inline DiscordPrivacyLevelType v)
{
    PUBLIC = 1,
    GUILD_ONLY = 2,
}

typedef DiscordGuildScheduledEventPrivacyLevelType = int;
enum DiscordGuildScheduledEventPrivacyLevel : (inline DiscordGuildScheduledEventPrivacyLevelType v)
{
    GUILD_ONLY = 2,
}

typedef DiscordGuildScheduledEventStatusType = int;
enum DiscordGuildScheduledEventStatus : (inline DiscordGuildScheduledEventStatusType v)
{
    SCHEDULED = 1,
    ACTIVE = 2,
    COMPLETED = 3,
    CANCELED = 4,
}

typedef DiscordGuildScheduledEventEntityTypesType = int;
enum DiscordGuildScheduledEventEntityTypes : (inline DiscordGuildScheduledEventEntityTypesType v)
{
    STAGE_INSTANCE = 1,
    VOICE = 2,
    EXTERNAL = 3,
}

typedef DiscordInteractionCallbackTypesType = int;
enum DiscordInteractionCallbackTypes : (inline DiscordInteractionCallbackTypesType v)
{
    PONG = 1,
    CHANNEL_MESSAGE_WITH_SOURCE = 4,
    DEFERRED_CHANNEL_MESSAGE_WITH_SOURCE = 5,
    DEFERRED_UPDATE_MESSAGE = 6,
    UPDATE_MESSAGE = 7,
    APPLICATION_COMMAND_AUTOCOMPLETE_RESULT = 8,
    MODAL = 9,
}

struct CcordSzbufReadonly {
    ZString start;
    usz size;
}

struct DiscordApplicationCommandOptionChoice {
    ZString name;
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
    DiscordApplicationCommandOptionTypesType type;
    ZString name;
    ZString description;
    bool required;
    DiscordApplicationCommandOptionChoices *choices;
    DiscordApplicationCommandOptions *options;
    Integers *channel_types;
    ZString min_value;
    ZString max_value;
    bool autocomplete;
}

struct DiscordApplicationCommandOptions {
    int size;
    DiscordApplicationCommandOption *array;
}

struct DiscordCreateGuildApplicationCommand {
    ZString name;
    ZString description;
    DiscordApplicationCommandOptions *options;
    U64Bitmask default_member_permissions;
    bool dm_permission;
    bool default_permission;
    DiscordApplicationCommandTypesType type;
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
    ZString name;
    DiscordApplicationCommandOptionTypesType type;
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
    ZString *array;
}

struct Snowflakes {
    int size;
    U64Snowflake *array;
}

struct DiscordUser {
    U64Snowflake id;
    ZString username;
    ZString discriminator;
    ZString avatar;
    bool bot;
    bool system;
    bool mfa_enabled;
    ZString banner;
    int accent_color;
    ZString locale;
    bool verified;
    ZString email;
    U64Bitmask flags;
    DiscordPremiumTypesType premium_type;
    U64Bitmask public_flags;
}

struct DiscordEmoji {
    U64Snowflake id;
    ZString name;
    Snowflakes *roles;
    DiscordUser *user;
    bool require_colons;
    bool managed;
    bool animated;
    bool available;
}

struct DiscordSelectOption {
    ZString label;
    ZString value;
    ZString description;
    DiscordEmoji *emoji;
    bool is_default;
}

struct DiscordSelectOptions {
    int size;
    DiscordSelectOption *array;
}

struct DiscordComponentMedia {
    ZString url;
}

struct DiscordComponentItem {
    DiscordComponentMedia *media;
    ZString description;
    bool spoiler;
}

struct DiscordComponentItems {
    int size;
    DiscordComponentItem *array;
}

struct DiscordComponent {
    U64Snowflake id;
    DiscordComponentTypesType type;
    ZString custom_id;
    U64Snowflake sku_id;
    DiscordComponentStylesType style;
    ZString label;
    DiscordEmoji *emoji;
    ZString url;
    DiscordSelectOptions *options;
    ZString placeholder;
    int min_values;
    int max_values;
    DiscordComponents *components;
    int min_length;
    int max_length;
    bool required;
    ZString value;
    bool disabled;
    DiscordComponent *accessory;
    DiscordComponentMedia *media;
    ZString content;
    ZString description;
    bool spoiler;
    DiscordComponentItems *items;
    DiscordComponentMedia *file;
    bool divider;
    DiscordComponentSpacingType spacing;
    int color;
}

struct DiscordComponents {
    int size;
    DiscordComponent *array;
}

struct DiscordInteractionData {
    U64Snowflake id;
    ZString name;
    DiscordApplicationCommandTypesType type;
    DiscordResolvedData *resolved;
    DiscordApplicationCommandInteractionDataOptions *options;
    ZString custom_id;
    DiscordComponentTypesType component_type;
    Strings *values;
    U64Snowflake target_id;
    DiscordComponents *components;
}

struct DiscordGuildMember {
    DiscordUser *user;
    ZString nick;
    ZString avatar;
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
    ZString name;
    bool moderated;
    U64Snowflake emoji_id;
    ZString emoji_name;
}

struct DiscordThreadTags {
    int size;
    DiscordThreadTag *array;
}

struct DiscordThreadDefaultReaction {
    U64Snowflake emoji_id;
    ZString emoji_name;
}

struct DiscordChannel {
    U64Snowflake id;
    DiscordChannelTypesType type;
    U64Snowflake guild_id;
    int position;
    DiscordOverwrites *permission_overwrites;
    ZString name;
    ZString topic;
    bool nsfw;
    U64Snowflake last_message_id;
    int bitrate;
    int user_limit;
    int rate_limit_per_user;
    DiscordUsers *recipients;
    ZString icon;
    U64Snowflake owner_id;
    U64Snowflake application_id;
    bool managed;
    U64Snowflake parent_id;
    U64UnixMs last_pin_timestamp;
    ZString rtc_region;
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
    DiscordSortOrderTypesType default_sort_order;
    DiscordForumLayoutTypesType default_forum_layout;
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
    ZString content;
    U64Snowflake id;
    ZString filename;
    ZString description;
    ZString content_type;
    usz size;
    ZString url;
    ZString proxy_url;
    int height;
    int width;
    bool ephemeral;
    int duration_secs;
    ZString waveform;
    U64Bitmask flags;
}

struct DiscordAttachments {
    int size;
    DiscordAttachment *array;
}

struct DiscordEmbedFooter {
    ZString text;
    ZString icon_url;
    ZString proxy_icon_url;
}

struct DiscordEmbedImage {
    ZString icon_url;
    ZString proxy_icon_url;
    int height;
    int width;
}

struct DiscordEmbedThumbnail {
    ZString url;
    ZString proxy_url;
    int height;
    int width;
}

alias DiscordEmbedVideo = DiscordEmbedThumbnail;

struct DiscordEmbedProvider {
    ZString name;
    ZString url;
}

struct DiscordEmbedAuthor {
    ZString name;
    ZString url;
    ZString icon_url;
    ZString proxy_icon_url;
}

struct DiscordEmbedField {
    ZString name;
    ZString value;
    bool is_inline;
}

struct DiscordEmbedFields {
    int size;
    DiscordEmbedField *array;
}

struct DiscordEmbed {
    ZString title;
    ZString type;
    ZString description;
    ZString url;
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
    ZString burst_colors;
}

struct DiscordReactions {
    int size;
    DiscordReaction *array;
}

struct DiscordMessageActivity {
    DiscordMessageActivityTypeType type;
    ZString party_id;
}

struct Bitmasks {
    int size;
    U64Bitmask *array;
}

struct DiscordTeamMember {
    DiscordMembershipStateType membership_state;
    Bitmasks *permissions;
    U64Snowflake team_id;
    DiscordUser *user;
}

struct DiscordTeamMembers {
    int size;
    DiscordTeamMember *array;
}

struct DiscordTeam {
    ZString icon;
    U64Snowflake id;
    DiscordTeamMembers *members;
    ZString name;
    U64Snowflake owner_user_id;
}

struct DiscordApplication {
    U64Snowflake id;
    ZString name;
    ZString icon;
    ZString description;
    Strings *rpc_originl;
    bool bot_public;
    bool bot_require_code_grant;
    ZString terms_of_service_url;
    ZString privacy_policy_url;
    DiscordUser *owner;
    ZString summary;
    ZString verify_key;
    DiscordTeam *team;
    U64Snowflake guild_id;
    U64Snowflake primary_sku_id;
    ZString slug;
    ZString cover_image;
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
    DiscordInteractionTypesType type;
    ZString name;
    DiscordUser *user;
    DiscordGuildMember *member;
}

struct DiscordStickerItem {
    U64Snowflake id;
    ZString name;
    DiscordStickerFormatTypesType format_type;
}

struct DiscordStickerItems {
    int size;
    DiscordStickerItem *array;
}

struct DiscordSticker {
    U64Snowflake id;
    U64Snowflake pack_id;
    ZString name;
    ZString description;
    ZString tags;
    DiscordStickerTypesType type;
    DiscordStickerFormatTypesType format_type;
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
    ZString tier_name;
    int total_months_subscribed;
    bool is_renewal;
}

struct DiscordMessage {
    U64Snowflake id;
    U64Snowflake channel_id;
    U64Snowflake guild_id;
    DiscordUser *author;
    DiscordGuildMember *member;
    ZString content;
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
    DiscordMessageTypesType type;
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
    DiscordInteractionTypesType type;
    DiscordInteractionData *data;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    DiscordGuildMember *member;
    DiscordUser *user;
    ZString token;
    int version;
    DiscordMessage *message;
    ZString locale;
    ZString guild_locale;
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
    ZString name;
    int color;
    bool hoist;
    ZString icon;
    ZString unicode_emoji;
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
    ZString session_id;
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
    ZString desktop;
    ZString mobile;
    ZString web;
}

struct DiscordActivityTimestamps {
    U64UnixMs start;
    U64UnixMs end;
}

struct DiscordActivityEmoji {
    ZString name;
    U64Snowflake id;
    bool animated;
}

struct DiscordActivityParty {
    ZString id;
    Integers *size;
}

struct DiscordActivityAssets {
    ZString large_image;
    ZString large_text;
    ZString small_image;
    ZString small_text;
}

struct DiscordActivitySecrets {
    ZString join;
    ZString spectate;
    ZString match;
}

struct DiscordActivityButton {
    ZString label;
    ZString url;
}

struct DiscordActivityButtons {
    int size;
    DiscordActivityButton *array;
}

struct DiscordActivity {
    ZString name;
    DiscordActivityTypesType type;
    ZString url;
    U64UnixMs created_at;
    DiscordActivityTimestamps *timestamps;
    U64Snowflake application_id;
    ZString details;
    ZString state;
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
    ZString status;
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
    ZString description;
    U64Snowflake emoji_id;
    ZString emoji_name;
}

struct DiscordWelcomeScreenChannels {
    int size;
    DiscordWelcomeScreenChannel *array;
}

struct DiscordWelcomeScreen {
    ZString description;
    DiscordWelcomeScreenChannels *welcome_channels;
}

struct DiscordStageInstance {
    U64Snowflake id;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    ZString topic;
    DiscordPrivacyLevelType privacy_level;
    bool discoverable_disabled;
}

struct DiscordStageInstances {
    int size;
    DiscordStageInstance *array;
}

struct DiscordGuildScheduledEventEntityMetadata {
    ZString location;
}

struct DiscordGuildScheduledEvent {
    U64Snowflake id;
    U64Snowflake guild_id;
    U64Snowflake channel_id;
    U64Snowflake creator_id;
    ZString name;
    ZString description;
    U64UnixMs scheduled_start_time;
    U64UnixMs scheduled_end_time;
    DiscordGuildScheduledEventPrivacyLevelType privacy_level;
    DiscordGuildScheduledEventStatusType status;
    DiscordGuildScheduledEventEntityTypesType entity_type;
    U64Snowflake entity_id;
    DiscordGuildScheduledEventEntityMetadata *entity_metadata;
    DiscordUser *creator;
    int user_count;
    ZString image;
}

struct DiscordGuildScheduledEvents {
    int size;
    DiscordGuildScheduledEvent *array;
}

struct DiscordGuild {
    U64Snowflake id;
    ZString name;
    ZString icon;
    ZString icon_hash;
    ZString splash;
    ZString discovery_splash;
    bool owner;
    U64Snowflake owner_id;
    U64Bitmask permissions;
    U64Snowflake afk_channel_id;
    int afk_timeout;
    bool widget_enabled;
    U64Snowflake widget_channel_id;
    DiscordVerificationLevelType verification_level;
    DiscordMessageNotificationLevelType default_message_notifications;
    DiscordExplicitContentFilterLevelType explicit_content_filter;
    DiscordRoles *roles;
    DiscordEmojis *emojis;
    Strings *features;
    DiscordMfaLevelType mfa_level;
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
    ZString vanity_url_code;
    ZString description;
    ZString banner;
    DiscordPremiumTierType premium_tier;
    int premium_subscribtion_count;
    ZString preffered_locale;
    U64Snowflake public_updates_channel_id;
    int max_video_channel_users;
    int approximate_member_count;
    int approximate_presence_count;
    DiscordWelcomeScreen *welcome_screen;
    DiscordGuildNSFWLevelType nsfw_level;
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
    ZString session_id;
    Integers *shard;
    DiscordApplication *application;
}

struct DiscordApplicationCommand {
    U64Snowflake id;
    DiscordApplicationCommandTypesType type;
    U64Snowflake application_id;
    U64Snowflake guild_id;
    ZString name;
    ZString description;
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
    CcordCodeType code;
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
    ZString content;
    DiscordEmbeds *embeds;
    U64Bitmask flags;
    DiscordAttachments *attachments;
    DiscordApplicationCommandOptionChoices *choices;
    ZString custom_id;
    ZString title;
}

struct DiscordInteractionResponse {
    DiscordInteractionCallbackTypesType type;
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
extern fn CcordCodeType ccord_global_init();

extern fn Discord* discord_init(ZString token);
extern fn Discord* discord_config_init(ZString config_file);
extern fn CcordCodeType discord_run(Discord *client);
extern fn void discord_cleanup(Discord *client);
extern fn int discord_get_ping(Discord *client);
extern fn CcordSzbufReadonly discord_config_get_field(Discord *client, ZString *path, uint depth);
extern fn DiscordUser *discord_get_self(Discord *client);
extern fn void discord_shutdown(Discord *client);
extern fn void discord_reconnect(Discord *client, bool resume);
extern fn void discord_set_data(Discord *client, void *data);
extern fn void *discord_get_data(Discord *client);
extern fn U64UnixMs discord_timestamp(Discord *client);
extern fn void discord_set_presence(Discord *client, DiscordPresenceUpdate *presence);
extern fn void discord_update_presence(Discord *client, DiscordPresenceUpdate *presence);

extern fn void discord_set_on_ready(Discord *client, OnReady callback);
extern fn CcordCodeType discord_get_guild_application_commands(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, DiscordRetApplicationCommands *ret);
extern fn CcordCodeType discord_delete_guild_application_command(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, U64Snowflake command_id, DiscordRet *ret);
extern fn void discord_application_commands_cleanup(DiscordApplicationCommands *self);
extern fn CcordCodeType discord_create_guild_application_command(Discord *client, U64Snowflake application_id, U64Snowflake guild_id, DiscordCreateGuildApplicationCommand *params, DiscordRetApplicationCommands *ret);
extern fn void discord_set_on_interaction_create(Discord* client, OnInteraction callback);
extern fn CcordCodeType discord_create_interaction_response(Discord *client, U64Snowflake interaction_id, ZString interaction_token, DiscordInteractionResponse *params, DiscordRetInteractionResponse *ret);
