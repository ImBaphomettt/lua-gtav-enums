---@class CAMERA_GRAPH_TYPE
CAMERA_GRAPH_TYPE = {
	GRAPH_TYPE_LINEAR = 0, -- simple linear motion
	GRAPH_TYPE_SIN_ACCEL_DECEL = 1, -- accelerates at start, decelerates at end
	GRAPH_TYPE_ACCEL = 2, -- Just Acceleration
	GRAPH_TYPE_DECEL = 3, -- Just Deceleration
	GRAPH_TYPE_SLOW_IN = 4,
	GRAPH_TYPE_SLOW_OUT = 5,
	GRAPH_TYPE_SLOW_IN_OUT = 6,
	GRAPH_TYPE_VERY_SLOW_IN = 7,
	GRAPH_TYPE_VERY_SLOW_OUT = 8,
	GRAPH_TYPE_VERY_SLOW_IN_SLOW_OUT = 9,
	GRAPH_TYPE_SLOW_IN_VERY_SLOW_OUT = 10,
	GRAPH_TYPE_VERY_SLOW_IN_VERY_SLOW_OUT = 11,
	GRAPH_TYPE_EASE_IN = 12,
	GRAPH_TYPE_EASE_OUT = 13,
	GRAPH_TYPE_QUADRATIC_EASE_IN = 14,
	GRAPH_TYPE_QUADRATIC_EASE_OUT = 15,
	GRAPH_TYPE_QUADRATIC_EASE_IN_OUT = 16,
	GRAPH_TYPE_CUBIC_EASE_IN = 17,
	GRAPH_TYPE_CUBIC_EASE_OUT = 18,
	GRAPH_TYPE_CUBIC_EASE_IN_OUT = 19,
	GRAPH_TYPE_QUARTIC_EASE_IN = 20,
	GRAPH_TYPE_QUARTIC_EASE_OUT = 21,
	GRAPH_TYPE_QUARTIC_EASE_IN_OUT = 22,
	GRAPH_TYPE_QUINTIC_EASE_IN = 23,
	GRAPH_TYPE_QUINTIC_EASE_OUT = 24,
	GRAPH_TYPE_QUINTIC_EASE_IN_OUT = 25,
	GRAPH_TYPE_CIRCULAR_EASE_IN = 26,
	GRAPH_TYPE_CIRCULAR_EASE_OUT = 27,
	GRAPH_TYPE_CIRCULAR_EASE_IN_OUT = 28,
	GRAPH_TYPE_MAX = 29, -- The maximum number of graph types, do not use.
}

--- Defines the different gameplay contexts for which camera view modes may be configured. Must match camControlHelperMetadataViewMode::eViewModeContext in camera/system/CameraMetadata.h
---@class CAM_VIEW_MODE_CONTEXT
CAM_VIEW_MODE_CONTEXT = {
	CAM_VIEW_MODE_CONTEXT_ON_FOOT = 0,
	CAM_VIEW_MODE_CONTEXT_IN_VEHICLE = 1,
	CAM_VIEW_MODE_CONTEXT_ON_BIKE = 2,
	CAM_VIEW_MODE_CONTEXT_IN_BOAT = 3,
	CAM_VIEW_MODE_CONTEXT_IN_AIRCRAFT = 4,
	CAM_VIEW_MODE_CONTEXT_IN_SUBMARINE = 5,
	CAM_VIEW_MODE_CONTEXT_IN_HELI = 6,
	CAM_VIEW_MODE_CONTEXT_IN_TURRET = 7,
	NUM_CAM_VIEW_MODE_CONTEXTS = 8,
}

--- Defines the different view modes supported by gameplay cameras. Must match camControlHelperMetadataViewMode::eViewMode in camera/system/CameraMetadata.h
---@class CAM_VIEW_MODE
CAM_VIEW_MODE = {
	CAM_VIEW_MODE_THIRD_PERSON_NEAR = 0,
	CAM_VIEW_MODE_THIRD_PERSON_MEDIUM = 1,
	CAM_VIEW_MODE_THIRD_PERSON_FAR = 2,
	CAM_VIEW_MODE_CINEMATIC = 3,
	CAM_VIEW_MODE_FIRST_PERSON = 4,
	NUM_CAM_VIEW_MODES = 5,
	CAM_VIEW_MODE_THIRD_PERSON = CAM_VIEW_MODE_THIRD_PERSON_MEDIUM,
}

--- For use with setting the follow ped submode.
--- NOTE: This enum is deprecated. Please use CAM_VIEW_MODE instead
---@class PED_ZOOM_LEVEL
PED_ZOOM_LEVEL = {
	PED_ZOOM_LEVEL_BAD = -1,
	PED_ZOOM_LEVEL_NEAR = 0,
	PED_ZOOM_LEVEL_MEDIUM = 1,
	PED_ZOOM_LEVEL_FAR = 2,
	PED_ZOOM_LEVEL_CINEMATIC = 3,
	PED_ZOOM_LEVEL_FIRST_PERSON = 4,
	NUM_PED_ZOOM_LEVELS = 5,
}

--- For use with setting the follow vehicle submode.
--- NOTE: This enum is deprecated. Please use CAM_VIEW_MODE instead
---@class VEHICLE_ZOOM_LEVEL
VEHICLE_ZOOM_LEVEL = {
	VEHICLE_ZOOM_LEVEL_BAD = -1,
	VEHICLE_ZOOM_LEVEL_NEAR = 0,
	VEHICLE_ZOOM_LEVEL_MEDIUM = 1,
	VEHICLE_ZOOM_LEVEL_FAR = 2,
	VEHICLE_ZOOM_LEVEL_CINEMATIC = 3,
	VEHICLE_ZOOM_LEVEL_BONNET = 4,
	NUM_VEHICLE_ZOOM_LEVELS = 5,
}

--- Allows for custom options to be specified for the node of a camera spline. Must match camSplineNode::eFlags in camera/helpers/SplineNode.h
---@class CAM_SPLINE_NODE_FLAGS
CAM_SPLINE_NODE_FLAGS = {
	CAM_SPLINE_NODE_NO_FLAGS = 0,
	CAM_SPLINE_NODE_SMOOTH_ROT = 1, -- Additional smoothing is applied to the transition in orientation between the previous node and the specified node. This smoothing can reduce the appearance of discontinuities at the nodes, but may not be desirable where a linear transition is required.
	CAM_SPLINE_NODE_SMOOTH_LENS_PARAMS = 2, -- Additional smoothing is applied to the transition in lens paramaters, such as FOV and motion blur strength, between the previous node and the specified node. This smoothing can reduce the appearance of discontinuities at the nodes, but may not be desirable where a linear transition is required.
	CAM_SPLINE_NODE_EASE_IN = 4, -- Per-node ease in
	CAM_SPLINE_NODE_EASE_OUT = 8, -- Per-node ease out
	CAM_SPLINE_NODE_EASE_INOUT = 16, -- Per-node ease in and out
}

--- Allows for custom options to be specified for the node of a camera spline. Must match camSplineNode::eFlags in camera/helpers/SplineNode.h
---@class CAM_SPLINE_NODE_FORCE_FLAGS
CAM_SPLINE_NODE_FORCE_FLAGS = {
	CAM_SPLINE_NODE_FORCE_NONE = 0,
	CAM_SPLINE_NODE_FORCE_LINEAR = 1, -- Do linear interpolation between this node and the next.
	CAM_SPLINE_NODE_FORCE_CUT = 2, -- Do not interpolate to next node, cut to it.
	CAM_SPLINE_NODE_FORCE_PAUSE = 4, -- Force camera to pause before starting this node.
	CAM_SPLINE_NODE_FORCE_LEVEL = 8, -- Force look at entity offset to be level with camera position.
}

---@class CAM_SPLINE_SMOOTHING_FLAGS
CAM_SPLINE_SMOOTHING_FLAGS = {
	CAM_SPLINE_NO_SMOOTH = 0, -- no smoothing just moves at a constant rate
	CAM_SPLINE_SLOW_IN_SMOOTH = 1, -- Decelerates when approaching a node
	CAM_SPLINE_SLOW_OUT_SMOOTH = 2, -- Accelerates slowly when leaving a node
	CAM_SPLINE_SLOW_IN_OUT_SMOOTH = 3, -- Decelerates when approaching a node and accelerates slowly when leaving a node
	CAM_SPLINE_VERY_SLOW_IN = 4,
	CAM_SPLINE_VERY_SLOW_OUT = 5,
	CAM_SPLINE_VERY_SLOW_IN_SLOW_OUT = 6,
	CAM_SPLINE_SLOW_IN_VERY_SLOW_OUT = 7,
	CAM_SPLINE_VERY_SLOW_IN_VERY_SLOW_OUT = 8,
	CAM_SPLINE_EASE_IN = 9,
	CAM_SPLINE_EASE_OUT = 10,
	CAM_SPLINE_QUADRATIC_EASE_IN = 11,
	CAM_SPLINE_QUADRATIC_EASE_OUT = 12,
	CAM_SPLINE_QUADRATIC_EASE_IN_OUT = 13,
	CAM_SPLINE_CUBIC_EASE_IN = 14,
	CAM_SPLINE_CUBIC_EASE_OUT = 15,
	CAM_SPLINE_CUBIC_EASE_IN_OUT = 16,
	CAM_SPLINE_QUARTIC_EASE_IN = 17,
	CAM_SPLINE_QUARTIC_EASE_OUT = 18,
	CAM_SPLINE_QUARTIC_EASE_IN_OUT = 19,
	CAM_SPLINE_QUINTIC_EASE_IN = 20,
	CAM_SPLINE_QUINTIC_EASE_OUT = 21,
	CAM_SPLINE_QUINTIC_EASE_IN_OUT = 22,
	CAM_SPLINE_CIRCULAR_EASE_IN = 23,
	CAM_SPLINE_CIRCULAR_EASE_OUT = 24,
	CAM_SPLINE_CIRCULAR_EASE_IN_OUT = 25,
}

---@class RENDERING_OPTION_FLAGS
RENDERING_OPTION_FLAGS = {
	RO_NO_OPTIONS = 0,
	RO_STOP_RENDERING_OPTION_WHEN_PLAYER_EXITS_INTO_COVER = 1,
}

---@class CAM_ANIMATION_FLAGS
CAM_ANIMATION_FLAGS = {
	CAF_DEFAULT = 0,
	CAF_LOOPING = 1, -- Repeat the animation
}

--- Type of hint to call to override the default hint behaviour
---@class HINT_TYPE
HINT_TYPE = {
	HINTTYPE_DEFAULT = 0,
	HINTTYPE_NO_FOV = GetHashKey("NO_FOV_HINT_HELPER"), -- / 1511508800
	HINTTYPE_VEHICLE_HIGH_ZOOM = GetHashKey("VEHICLE_HIGH_ZOOM_HINT_HELPER"), -- 1726668277
	HINTTYPE_ARM3_VEHICLE = GetHashKey("ARM3_VEHICLE_HINT_HELPER"), -- -244429742
	HINTTYPE_AGENCY_HEIST_3B_SKY_DIVING = GetHashKey("AGENCY_HEIST_3B_SKY_DIVING_HINT_HELPER"), -- 1213015174
	HINTTYPE_FAMILY3_HOUSE_VEHICLE = GetHashKey("FAMILY3_HOUSE_VEHICLE_HINT_HELPER"), -- -1123838900
	HINTTYPE_ARM2_MCS6_VEHICLE = GetHashKey("ARM2_MCS6_VEHICLE_HINT_HELPER"), -- 2010485655
	HINTTYPE_KILLER_CAM = GetHashKey("KILLER_CAM_HINT_HELPER"), -- 1844968929
	HINTTYPE_FAMILY3_COACH_ON_BALCONY_VEHICLE_HINT_HELPER = GetHashKey("FAMILY3_COACH_ON_BALCONY_VEHICLE_HINT_HELPER"), -- -87780624
	HINTTYPE_CHOP_HINT_HELPER = GetHashKey("CHOP_HINT_HELPER"), -- 193150208
}

--- Camera types
---@class CAMERA_TYPE
CAMERA_TYPE = {
	CAMTYPE_SCRIPTED = GetHashKey("DEFAULT_SCRIPTED_CAMERA"),
	CAMTYPE_SCRIPTED_FLY = GetHashKey("DEFAULT_SCRIPTED_FLY_CAMERA"), -- An in-game fly camera designed for use in the mission creator
	CAMTYPE_ANIMATED = GetHashKey("DEFAULT_ANIMATED_CAMERA"),
	CAMTYPE_TRANSITION = GetHashKey("DEFAULT_TRANSITION_CAMERA"),
	CAMTYPE_SPLINE_DEFAULT = GetHashKey("DEFAULT_SPLINE_CAMERA" ), -- smoothed and velocity constrained spline, not continous velocity
	CAMTYPE_SPLINE_TIMED = GetHashKey("TIMED_SPLINE_CAMERA"), -- smoothed and velocity constrained spline, not continous velocity
	CAMTYPE_SPLINE_ROUNDED = GetHashKey("ROUNDED_SPLINE_CAMERA"), -- rounded spline with continous velocity
	CAMTYPE_SPLINE_SMOOTHED = GetHashKey("SMOOTHED_SPLINE_CAMERA"), -- smoothed spline with continous velocity
	CAMTYPE_SPLINE_TIMED_CUSTOM = GetHashKey("CUSTOM_TIMED_SPLINE_CAMERA"), -- smoothed and velocity constrained spline, not continous velocity, custom speeds can be set
}

--- Shot Type
---@class SHOT_TYPE
SHOT_TYPE = {
	SHOTTYPE_CAMERA_MAN = GetHashKey("CAMERA_MAN_SHOT"),
	SHOTTYPE_HELI_CHASE = GetHashKey("HELI_CHASE_SHOT"),
	SHOTTYPE_VEHICLE_MOUNTED_CAMERA = GetHashKey("SCRIPT_CAR_MOUNTED_SHOT"),
}

---@class CAM_IN_VEHICLE_STATE
CAM_IN_VEHICLE_STATE = {
	CAM_ENTERING_VEHICLE = 0, -- Gameplay camera is interpolating to the follow vehicle camera.
	CAM_INSIDE_VEHICLE = 1, -- Gameplay camera is running the follow vehilce camera.
	CAM_EXITING_VEHICLE = 2, -- Gameplay camera is interpolating to the follow ped camera.
	CAM_OUTSIDE_VEHICLE = 3, -- Gameplay camera is running the follow ped camera.
}

--- Must match camInterface::eDeathFailEffectState in camera/CamInterface.h
---@class CAM_DEATH_FAIL_EFFECT_STATE
CAM_DEATH_FAIL_EFFECT_STATE = {
	CAM_DEATH_FAIL_EFFECT_INACTIVE = 0,
	CAM_DEATH_FAIL_EFFECT_INTRO = 1,
	CAM_DEATH_FAIL_EFFECT_OUTRO = 2,
}

---@class FPS_FLASH_TYPE
FPS_FLASH_TYPE = {
	FLASH_TYPE_NEUTRAL = 0, -- neutral flash (default, for non character switch situations)
	FLASH_TYPE_MICHAEL = 1, -- Michael's character colour
	FLASH_TYPE_FRANKLIN = 2, -- Franklin's character colour
	FLASH_TYPE_TREVOR = 3, -- Trevor's character colour
}

---@class TABLE_GAMES_CAMERA_TYPE
TABLE_GAMES_CAMERA_TYPE = {
	TABLE_GAMES_CAMERA_TYPE_BLACK_JACK = GetHashKey("CASINO_BLACKJACK_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_LUCKY_WHEEL = GetHashKey("CASINO_LUCKY_WHEEL_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_SLOT_MACHINE = GetHashKey("CASINO_SLOT_MACHINE_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_ROULETTE = GetHashKey("CASINO_ROULETTE_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_POKER = GetHashKey("CASINO_POKER_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_INSIDE_TRACK = GetHashKey("CASINO_INSIDE_TRACK_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_LOVE_PROFESSOR_P1 = GetHashKey("ARCADE_LOVE_PROFESSOR_P1_CAMERA"),
	TABLE_GAMES_CAMERA_TYPE_LOVE_PROFESSOR_P2 = GetHashKey("ARCADE_LOVE_PROFESSOR_P2_CAMERA"),
}

