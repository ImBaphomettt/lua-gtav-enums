---@class RAY_FIRE_MAP_OBJECT_STATE
RAY_FIRE_MAP_OBJECT_STATE = {
	RFMO_STATE_INVALID = -1,
	RFMO_STATE_INIT = 0,
	RFMO_STATE_SYNC_STARTING = 1,
	RFMO_STATE_STARTING = 2,
	RFMO_STATE_START = 3,
	RFMO_STATE_PRIMING = 4,
	RFMO_STATE_PRIMED = 5,
	RFMO_STATE_START_ANIM = 6,
	RFMO_STATE_ANIMATING = 7,
	RFMO_STATE_SYNC_ENDING = 8,
	RFMO_STATE_ENDING = 9,
	RFMO_STATE_END = 10,
	RFMO_STATE_RESET = 11,
	RFMO_STATE_PAUSE = 12,
	RFMO_STATE_RESUME = 13,
	RFMO_STATE_PRIMING_PRELUDE = 14,
	RFMO_STATE_ABANDON = 15,
}

---@class PLACEMENT_FLAG
PLACEMENT_FLAG = {
	PLACEMENT_FLAG_MAP = 0, -- only used in MP. This is used for pickups that are created locally on each machine and only networked when collected.
	PLACEMENT_FLAG_FIXED = 1, -- sets the pickup as fixed so it cannot move
	PLACEMENT_FLAG_REGENERATES = 2, -- sets the pickup as regenerating
	PLACEMENT_FLAG_SNAP_TO_GROUND = 3, -- places the pickup on the ground
	PLACEMENT_FLAG_ORIENT_TO_GROUND = 4, -- orientates the pickup correctly on the ground
	PLACEMENT_FLAG_LOCAL_ONLY = 5, -- creates the pickup non-networked
	PLACEMENT_FLAG_BLIPPED_SIMPLE = 6, -- gives the pickup a simple blip
	PLACEMENT_FLAG_BLIPPED_COMPLEX = 7, -- gives the pickup a complex blip
	PLACEMENT_FLAG_UPRIGHT = 8, -- Some pickups need to be orientated differently to lie on the ground properly. Use this flag if your pickup is not lying correctly.
	PLACEMENT_FLAG_ROTATE = 9, -- Pickup will rotate
	PLACEMENT_FLAG_FACEPLAYER = 10, -- Pickup will always face the player
	PLACEMENT_FLAG_HIDE_IN_PHOTOS = 11, -- Pickup will be hidden when the player is using the phone camera
	PLACEMENT_FLAG_PLAYER_GIFT = 12, -- The pickup is being dropped as a gift to another player
	PLACEMENT_FLAG_ON_OBJECT = 13, -- The pickup is lying on an object and probes for that when snapping or orientating to ground
	PLACEMENT_FLAG_GLOW_IN_TEAM = 14, -- Set pickups to glow even if pickup can't be picked up because of team checks
	PLACEMENT_CREATION_FLAG_AUTO_EQUIP = 15, -- if set on a weapon pickup, it will auto equip the picked up weapon. It will ignore autoswap logic
	PLACEMENT_CREATION_FLAG_COLLECTABLE_IN_VEHICLE = 16, -- if set the pickup can be collected by a ped in a vehicle
	PLACEMENT_CREATION_FLAG_DISABLE_WEAPON_HD_MODEL = 17, -- if set the weapon pickup will render SD model only (HD<->SD model switch will be disabled)
	PLACEMENT_CREATION_FLAG_FORCE_DEFERRED_MODEL = 18, -- if set the pickup will render as deferred model (no transparency/alpha blending in this render mode)
}

---@class PICKUP_REWARD_TYPE
PICKUP_REWARD_TYPE = {
	PICKUP_REWARD_TYPE_NONE = 0,
	PICKUP_REWARD_TYPE_AMMO = 1, -- 1<<0
	PICKUP_REWARD_TYPE_BULLET_MP = 2, -- 1<<1
	PICKUP_REWARD_TYPE_MISSILE_MP = 4, -- 1<<2
	PICKUP_REWARD_TYPE_GRENADE_LAUNCHER_MP = 8, -- 1<<3
	PICKUP_REWARD_TYPE_ARMOUR = 16, -- 1<<4
	PICKUP_REWARD_TYPE_HEALTH = 32, -- 1<<5
	PICKUP_REWARD_TYPE_MONEY = 64, -- 1<<6
	PICKUP_REWARD_TYPE_WEAPON = 128, -- 1<<7
	PICKUP_REWARD_TYPE_STAT = 256, -- 1<<8
	PICKUP_REWARD_TYPE_VEHICLE_FIX = 512, -- 1<<9
	PICKUP_REWARD_TYPE_FIREWORK_MP = 1024, -- 1<<10
	PICKUP_REWARD_TYPE_ALL = 2047, -- 1<<11 - 1
}

---@class ANIMATED_BUILDING_RATE_FLAGS
ANIMATED_BUILDING_RATE_FLAGS = {
	AB_RATE_RANDOM = 1, -- 1 << 0
}

---@class ANIMATED_BUILDING_PHASE_FLAGS
ANIMATED_BUILDING_PHASE_FLAGS = {
	AB_PHASE_RANDOM = 1, -- 1 << 0
}

---@class DOOR_STATE_ENUM
DOOR_STATE_ENUM = {
	DOORSTATE_INVALID = -1,
	DOORSTATE_UNLOCKED = 0,
	DOORSTATE_LOCKED = 1,
	DOORSTATE_FORCE_LOCKED_UNTIL_OUT_OF_AREA = 2,
	DOORSTATE_FORCE_UNLOCKED_THIS_FRAME = 3,
	DOORSTATE_FORCE_LOCKED_THIS_FRAME = 4,
	DOORSTATE_FORCE_OPEN_THIS_FRAME = 5,
	DOORSTATE_FORCE_CLOSED_THIS_FRAME = 6,
}

---@class SEARCH_LOCATION_FLAGS
SEARCH_LOCATION_FLAGS = {
	SEARCH_LOCATION_EXTERIORS = 1, -- 1<<0
	SEARCH_LOCATION_INTERIORS = 2, -- 1<<1
}

