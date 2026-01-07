---@class SCRIPT_EVENT_QUEUES
SCRIPT_EVENT_QUEUES = {
	SCRIPT_EVENT_QUEUE_AI = 0,
	SCRIPT_EVENT_QUEUE_NETWORK = 1,
	SCRIPT_EVENT_QUEUE_ERRORS = 2,
	NUM_SCRIPT_EVENT_QUEUES = 3,
}

--- ~> Event structures that can be used to retrieve data from the network events
--- PURPOSE: This structure can be used to retrieve information from these events:
--- - EVENT_NETWORK_PLAYER_JOIN_SESSION.
--- - EVENT_NETWORK_PLAYER_LEFT_SESSION.
--- - EVENT_NETWORK_PLAYER_SPAWN.
--- Should be passed in GET_EVENT_DATA() as the data STRUCT member.
--- STRUCT STRUCT_PLAYER_SESSION_EVENTS
--- 
--- TEXT_LABEL_23	PlayerName
--- PLAYER_INDEX	PlayerIndex
--- INT				PlayerTeam
--- 
--- ENDSTRUCT
---@class PLAYER_SOURCE
PLAYER_SOURCE = {
	SOURCE_NORMAL = 0,
	SOURCE_TRANSITION = 1,
	SOURCE_STORE = 2,
}

--- PURPOSE: Response from host when joining a session
--- Comments next to the types that script might consider relaying to the user on failing to join an
--- invite session. For others, check with code or display general message
--- 
---@class NETWORK_REASON_PED_LEFT_BEHIND
NETWORK_REASON_PED_LEFT_BEHIND = {
	REASON_DEFAULT = 0, -- Triggered in a normal leave ped behind.
	REASON_PLAYER_LEFT_SESSION = 1, -- Triggered when player leaves the session.
}

---@class SESSION_TYPE
SESSION_TYPE = {
	SESSION_TYPE_GAME = 0,
	SESSION_TYPE_TRANSITION = 1,
}

--- PURPOSE: This structure can be used to retrieve information from these events:
--- - EVENT_NETWORK_INVITE_ACCEPTED.
--- - EVENT_NETWORK_INVITE_CONFIRMED.
--- Should be passed in GET_EVENT_DATA() as the data STRUCT member.
---@class INVITE_FLAGS
INVITE_FLAGS = {
	INVITE_PLATFORM = 0,
	INVITE_JVP = 1,
	INVITE_VIA_PARTY = 2,
	INVITE_VIA_PRESENCE = 3,
	INVITE_SCTV = 4,
	INVITE_PRIVATE = 5,
	INVITE_PRESENCE_INACTIVE = 6,
	INVITE_FOLLOW = 7,
}

--- PURPOSE: This structure can be used to retrieve information from these events:
--- - EVENT_NETWORK_NETWORK_HOST_MIGRATION, EVENT_NETWORK_ATTEMPT_HOST_MIGRATION
--- Should be passed in GET_EVENT_DATA() as the data STRUCT member.
--- STRUCT STRUCT_SCRIPTED_EVENT_HOST_MIGRATION
--- 
--- THREADID		Thread
--- PLAYER_INDEX	HostPlayerIndex // the index of the new host
--- 
--- ENDSTRUCT
--- PURPOSE: Response from host when joining a session
--- Comments next to the types that script might consider relaying to the user on failing to join an
--- invite session. For others, check with code or display general message
--- 
---@class JOIN_RESPONSE_CODE
JOIN_RESPONSE_CODE = {
	RESPONSE_ACCEPT = 0, -- Join successful
	RESPONSE_DENY_UNKNOWN = 1, -- Unknown - Indicates bug - Use Generic Error
	RESPONSE_DENY_WRONG_SESSION = 2, -- Different session - Indicates bug - Use Generic Error
	RESPONSE_DENY_NOT_HOSTING = 3, -- User not hosting - (might have left and come back) - Use Generic Error
	RESPONSE_DENY_NOT_READY = 4, -- Session still starting - would occur if someone hosted and immediately sent an invite.
	RESPONSE_DENY_BLACKLISTED = 5, -- Gamer is blacklisted from session
	RESPONSE_DENY_INVALID_REQUEST_DATA = 6, -- Indicates bug - Use Generic Error
	RESPONSE_DENY_INCOMPATIBLE_ASSETS = 7, -- Different assets
	RESPONSE_DENY_SESSION_FULL = 8, -- Session is full
	RESPONSE_DENY_GROUP_FULL = 9, -- Selected group is full
	RESPONSE_DENY_WRONG_VERSION = 10, -- Different session - Dev only - Use Generic Error
	RESPONSE_DENY_NOT_VISIBLE = 11, -- Session not visible for Matchmaking - Won't happen for Invites (would be a bug)
	RESPONSE_DENY_BLOCKING = 12, -- Session has been blocked for invites by host (this would be set by script and,
	RESPONSE_DENY_AIM_PREFERENCE = 13, -- Different aim settings
	RESPONSE_DENY_CHEATER = 14, -- Cheater setting different (either local or session is flagged as cheater)
	RESPONSE_DENY_TIMEOUT = 15, -- Different time out - Dev only - Use Generic Error
	RESPONSE_DENY_DATA_HASH = 16, -- Different data hash - Indicates cloud assets different
	RESPONSE_DENY_CREW_LIMIT = 17, -- Too many crews
	RESPONSE_DENY_POOL_NORMAL = 18, -- Pool we tried to join is NORMAL. Player must be bad sport or cheater
	RESPONSE_DENY_POOL_BAD_SPORT = 19, -- Pool we tried to join is BAD SPORT. Player must be normal or cheater
	RESPONSE_DENY_POOL_CHEATER = 20, -- Pool we tried to join is CHEATER. Player must be normal or bad sport
	RESPONSE_DENY_NOT_JOINABLE = 21, -- Session no longer exists
	RESPONSE_DENY_PRIVATE_ONLY = 22, -- Session has only private slots. Player was not invited.
	RESPONSE_DENY_DIFFERENT_BUILD = 23, -- Different build type - Dev Only
	RESPONSE_DENY_DIFFERENT_PORT = 24, -- Different socket port - Dev Only
	RESPONSE_DENY_DIFFERENT_CONTENT_SETTING = 25, -- Different content setting (online vs. offline)
	RESPONSE_DENY_NOT_FRIEND = 26, -- A player who is not a friend of the host is trying to join a friends-only session
	RESPONSE_DENY_REPUTATION = 27, -- Reputation of players is different (One is bad, other is good). Xbox One only.
	RESPONSE_DENY_FAILED_TO_ESTABLISH = 28, -- Couldn't contact the session. It may no longer exist
	RESPONSE_DENY_PREMIUM = 29, -- Premium session, no access
	RESPONSE_SOLO = 30, -- Solo session
	RESPONSE_DENY_ADMIN_BLOCKED = 31, -- Admin blocked due to no notification
	RESPONSE_DENY_TOO_MANY_BOSSES = 32, -- Too many bosses in the session
}

--- PURPOSE: This structure can be used to retrieve information from these events:
--- - EVENT_NETWORK_CHEAT_TRIGGERED.
---@class CHEAT_EVENT_TYPES
CHEAT_EVENT_TYPES = {
	CHEAT_EVENT_INVINCIBLE = 0,
	CHEAT_EVENT_WEAPONS = 1,
	CHEAT_EVENT_HEALTH = 2,
	CHEAT_EVENT_VEHICLE = 3,
	CHEAT_EVENT_WARP = 4,
}

---@class ARREST_EVENT_TYPES
ARREST_EVENT_TYPES = {
	ARREST_EVENT_CUFF_SUCCESSFUL = 0,
	ARREST_EVENT_CUFF_FAILED = 1,
	ARREST_EVENT_UNCUFF_SUCCESSFUL = 2,
	ARREST_EVENT_UNCUFF_FAILED = 3,
	ARREST_EVENT_TAKENCUSTODY = 4,
	ARREST_EVENT_CUSTODY_EXIT_CUSTODIAN_DEAD = 5,
	ARREST_EVENT_CUSTODY_EXIT_ABANDONED = 6,
	ARREST_EVENT_CUSTODY_EXIT_CUSTODIAN_OUTOFRANGE = 7,
	ARREST_EVENT_CUSTODY_EXIT_UNCUFFED = 8,
	ARREST_EVENT_TAKENCUSTODY_FAILED = 9,
}

---@class BAIL_REASON
BAIL_REASON = {
	BAIL_FROM_SCRIPT = 0,
	BAIL_FROM_RAG = 1,
	BAIL_PROFILE_CHANGE = 2,
	BAIL_NEW_CONTENT_INSTALLED = 3,
	BAIL_SESSION_FIND_FAILED = 4,
	BAIL_SESSION_HOST_FAILED = 5,
	BAIL_SESSION_JOIN_FAILED = 6,
	BAIL_SESSION_START_FAILED = 7,
	BAIL_SESSION_ATTR_FAILED = 8,
	BAIL_SESSION_MIGRATE_FAILED = 9,
	BAIL_PARTY_HOST_FAILED = 10,
	BAIL_PARTY_JOIN_FAILED = 11,
	BAIL_START_TIMED_OUT = 12,
	BAIL_OUT_OF_MEMORY = 13,
	BAIL_TRANSITION_LAUNCH_FAILED = 14,
	BAIL_END_TIMED_OUT = 15,
	BAIL_MATCHMAKING_TIMED_OUT = 16,
	BAIL_CLOUD_FAILED = 17,
	BAIL_COMPAT_PACK_CONFIG_INCORRECT = 18,
	BAIL_CONSOLE_BAN = 19,
	BAIL_MATCHMAKING_FAILED = 20,
	BAIL_ONLINE_PRIVILEGE_REVOKED = 21,
	BAIL_SYSTEM_SUSPENDED = 22,
	BAIL_EXIT_GAME = 23,
	BAIL_TOKEN_REFRESH_FAILED = 24,
	BAIL_CATALOG_REFRESH_FAILED = 25,
	BAIL_SESSION_REFRESH_FAILED = 26,
	BAIL_SESSION_RESTART_FAILED = 27,
	BAIL_GAME_SERVER_MAINTENANCE = 28,
	BAIL_GAME_SERVER_FORCE_BAIL = 29,
	BAIL_GAME_SERVER_HEART_BAIL = 30,
	BAIL_GAME_SERVER_GAME_VERSION = 31,
	BAIL_CATALOGVERSION_REFRESH_FAILED = 32,
	BAIL_CATALOG_BUFFER_TOO_SMALL = 33,
	BAIL_INVALIDATED_ROS_TICKET = 34,
}

--- PURPOSE: These structure can be used to retrieve information from these events:
--- - EVENT_NETWORK_CASH_TRANSACTION_LOG
---@class eTransactionTypes
eTransactionTypes = {
	CASH_TRANSACTION_DEPOSIT = 0,
	CASH_TRANSACTION_WITHDRAW = 1,
}

---@class eTransactionIds
eTransactionIds = {
	CASH_TRANSACTION_ATM = 0, -- Money deposited/withdrawn by the player - this is relation to VC commands - So deposit or withdraw from BANk Account.
	CASH_TRANSACTION_GAMER = 1, -- Money received/paid from friends.
	CASH_TRANSACTION_STORE = 2, -- STORE money always credits the BANK account
	CASH_TRANSACTION_BANK = 3, -- BANK account transaction
}

--- --- Background Scripts --------------------------------------------------------------------------------------------------------------
--- -- DO NOT CHANGE without also changing BackgroundScripts.h -----------------------------
---@class BG_SCRIPT_TYPES
BG_SCRIPT_TYPES = {
	SCRIPT_TYPE_UNKNOWN = -1,
	SCRIPT_TYPE_UTIL = 0,
}

