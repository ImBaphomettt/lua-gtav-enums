---@class VEHICLEMOUNTEDWEAPONTASKMODE
VEHICLEMOUNTEDWEAPONTASKMODE = {
	TASK_PLAYER = 0,
	TASK_IDLE = 1,
	TASK_AIM = 2,
	TASK_FIRE = 3,
	TASK_CAMERA = 4,
	TASK_SEARCH = 5,
}

---@class ARRESTTYPE
ARRESTTYPE = {
	ARREST_FALLBACK = -1,
	ARREST_CUFFING = 0,
	ARREST_UNCUFFING = 1,
	ARREST_COUNT = 2,
}

---@class REPEATMODE
REPEATMODE = {
	REPEAT_NOT = 0,
	REPEAT_FOREVER = 1,
}

---@class FOLLOWPOINTROUTEMODE
FOLLOWPOINTROUTEMODE = {
	TICKET_SINGLE = 0, -- Stop at the end of the route
	TICKET_RETURN = 1, -- Go once then return back once following the route backwards
	TICKET_SEASON = 2, -- As above but for forever
	TICKET_LOOP = 3, -- Treat the points as a loop, i.e follow it to the end then directly back to the first position, forever.
}

---@class NAVMESH_ROUTE_RESULT
NAVMESH_ROUTE_RESULT = {
	NAVMESHROUTE_TASK_NOT_FOUND = 0, -- on navmesh task was found on the ped
	NAVMESHROUTE_ROUTE_NOT_YET_TRIED = 1, -- the task has not yet looked for a route
	NAVMESHROUTE_ROUTE_NOT_FOUND = 2, -- the task has tried & failed to find a route (will keep trying)
	NAVMESHROUTE_ROUTE_FOUND = 3, -- the task has successfully found a route
}

---@class SYNCED_SCENE_PLAYBACK_FLAGS
SYNCED_SCENE_PLAYBACK_FLAGS = {
	SYNCED_SCENE_NONE = 0,
	SYNCED_SCENE_USE_PHYSICS = 1, -- When this flag is set, the task will run in kinematic physics mode (other entities will collide, and be pushed out of the way)
	SYNCED_SCENE_TAG_SYNC_OUT = 2, -- when this flag is set, the task will do a tag synchronized blend out with the movement behaviour of the ped.
	SYNCED_SCENE_DONT_INTERRUPT = 4, -- When this flag is set, the scene will not be interrupted by ai events like falling, entering water / etc. Also blocks all weapon reactions / etc
	SYNCED_SCENE_ON_ABORT_STOP_SCENE = 8, -- When this flag is set, the scene will be stopped if this task is aborted
	SYNCED_SCENE_ABORT_ON_WEAPON_DAMAGE = 16, -- When this flag is set, the task will end if the ped takes weapon damage
	SYNCED_SCENE_BLOCK_MOVER_UPDATE = 32, -- When this flag is set, the task will not update the mover
	SYNCED_SCENE_LOOP_WITHIN_SCENE = 64, -- When this flag is set, the tasks with anims shorter than the scene will loop while the scene is playing
	SYNCED_SCENE_PRESERVE_VELOCITY = 128, -- When this flag is set, the task will preserve it's velocity on clean up (must be using physics)
	SYNCED_SCENE_EXPAND_PED_CAPSULE_FROM_SKELETON = 256, -- When this flag is set, the task will apply the CPED_RESET_FLAG_ExpandPedCapsuleFromSkeleton flag to the ped
	SYNCED_SCENE_ACTIVATE_RAGDOLL_ON_COLLISION = 512, -- When this flag is set, the ped will switch to ragdoll and fall down on making contact with a physical object (other than flat ground)
	SYNCED_SCENE_HIDE_WEAPON = 1024, -- When this flag is set, the ped's weapon will be hidden while the scene is playing
	SYNCED_SCENE_ABORT_ON_DEATH = 2048, -- When this flag is set, task will end if the ped dies, even if the SYNCED_SCENE_DONT_INTERRUPT flag is set.
	SYNCED_SCENE_VEHICLE_ABORT_ON_LARGE_IMPACT = 4096, -- When running the scene on a vehicle, allow the scene to abort if the vehicle takes a heavy collision from another vehicle
	SYNCED_SCENE_VEHICLE_ALLOW_PLAYER_ENTRY = 8192, -- When running the scene on a vehicle, allow player peds to enter the vehicle
	SYNCED_SCENE_PROCESS_ATTACHMENTS_ON_START = 16384, -- When this flag is set, process the attachments at the start of the scene
	SYNCED_SCENE_NET_ON_EARLY_NON_PED_STOP_RETURN_TO_START = 32768, -- When this flag is set, a non-ped entity will be returned to their starting position if the scene finishes early
	SYNCED_SCENE_SET_PED_OUT_OF_VEHICLE_AT_START = 65536, -- When this flag is set, The ped will be set out of his vehicle when the task starts.
	SYNCED_SCENE_NET_DISREGARD_ATTACHMENT_CHECKS = 131072, -- When this flag is set, the attachment checks done in CNetworkSynchronisedScenes::Update when pending start will be disregarded
}

---@class TASK_RAPPEL_DOWN_WALL_STATE
TASK_RAPPEL_DOWN_WALL_STATE = {
	RAPPEL_STATE_INVALID = -1, -- The ped isn't currently running this task
	RAPPEL_STATE_CLIMBING_WALL = 1, -- Playing the initial climb intro animation
	RAPPEL_STATE_IDLE = 3, -- Not moving or jumping, just hanging idle
	RAPPEL_STATE_IDLE_AT_DESTINATION_Z = 4, -- At the lowest point allowed and waiting to smash the window
	RAPPEL_STATE_DESCENDING = 5, -- Moving down
	RAPPEL_STATE_JUMPING = 6, -- Jumping outwards (can also be moving down based on player stick input)
	RAPPEL_STATE_SMASHINGWINDOW = 7, -- Playing the window smash animation
}

--- Note: These should be kept in sync with CTaskVehicleChase::BehaviorFlags in code.
---@class TASK_VEHICLE_CHASE_BEHAVIOR_FLAGS
TASK_VEHICLE_CHASE_BEHAVIOR_FLAGS = {
	VEHICLE_CHASE_CANT_BLOCK = 1,
	VEHICLE_CHASE_CANT_BLOCK_FROM_PURSUE = 2,
	VEHICLE_CHASE_CANT_PURSUE = 4,
	VEHICLE_CHASE_CANT_RAM = 8,
	VEHICLE_CHASE_CANT_SPIN_OUT = 16,
	VEHICLE_CHASE_CANT_MAKE_AGGRESSIVE_MOVE = 32,
	VEHICLE_CHASE_CANT_CRUISE_IN_FRONT_DURING_BLOCK = 64,
	VEHICLE_CHASE_USE_CONTINUOUS_RAM = 128,
	VEHICLE_CHASE_CANT_PULL_ALONGSIDE = 256,
	VEHICLE_CHASE_CANT_PULL_ALONGSIDE_INFRONT = 512,
}

---@class TASK_GO_TO_COORD_ANY_MEANS_FLAGS
TASK_GO_TO_COORD_ANY_MEANS_FLAGS = {
	TGCAM_DEFAULT = 0,
	TGCAM_IGNORE_VEHICLE_HEALTH = 1,
	TGCAM_CONSIDER_ALL_NEARBY_VEHICLES = 2,
	TGCAM_PROPER_IS_DRIVEABLE_CHECK = 4,
	TGCAM_REMAIN_IN_VEHICLE_AT_DESTINATION = 8,
	TGCAM_NEVER_ABANDON_VEHICLE = 16,
	TGCAM_NEVER_ABANDON_VEHICLE_IF_MOVING = 32,
	TGCAM_USE_AI_TARGETING_FOR_THREATS = 64,
}

---@class TASK_HANDS_UP_FLAGS
TASK_HANDS_UP_FLAGS = {
	HANDS_UP_NOTHING = 0,
	HANDS_UP_STRAIGHT_TO_LOOP = 1,
}

---@class TASK_COMBAT_PED_FLAGS
TASK_COMBAT_PED_FLAGS = {
	COMBAT_PED_NONE = 0,
	COMBAT_PED_PREVENT_CHANGING_TARGET = 67108864,
	COMBAT_PED_DISABLE_AIM_INTRO = 134217728,
}

---@class TASK_THREAT_RESPONSE_FLAGS
TASK_THREAT_RESPONSE_FLAGS = {
	TASK_THREAT_RESPONSE_NONE = 0,
	TASK_THREAT_RESPONSE_CAN_FIGHT_ARMED_PEDS_WHEN_NOT_ARMED = 16,
}

---@class TASK_GO_TO_AIM_FLAGS
TASK_GO_TO_AIM_FLAGS = {
	GO_TO_AIM_NONE = 0,
	GO_TO_AIM_AT_GOTO_COORD_IF_TARGET_LOS_BLOCKED = 1, -- If our target is a ped and our LOS is blocked, we'll try aiming at the go to coord
}

--- High fall task entry behaviour. Affects how the ped will behave when first starting the nm high fall task.
--- Note: this only affects the starting behaviour of the fall. ONgoing behaviour will be determined by height from the ground / collisions / etc.
---@class HIGH_FALL_ENTRY_TYPE
HIGH_FALL_ENTRY_TYPE = {
	HIGHFALL_IN_AIR = 0, -- Standard behaviour. Pitches forward in the direction of movement (standard behaviour when a ped is warped into the air and dropped)
	HIGHFALL_VAULT = 1, -- not for use by script
	HIGHFALL_FROM_CAR_HIT = 2, -- Normally used when then ped has been hit by a car and falls off.
	HIGHFALL_SLOPE_SLIDE = 3, -- Used when the ped activates from an animated slide down a slope.
	HIGHFALL_TEETER_EDGE = 4, -- Will make the ped teeter in the direction of movement (as if at an edge). Best used for knocking peds off of the edge of buildings from standing / etc.
	HIGHFALL_SPRINT_EXHAUSTED = 5, -- Equivalent to fainting from running out of energy
	HIGHFALL_STUNT_JUMP = 6, -- Equivalent to the in air stunt jump activation (i.e. pressing circle / B whilst jumping)
}

--- ******************************************************************************************************************
--- ENAV_SCRIPT_FLAGS
--- This enumeration defines the set of bitflags which may be passed in to TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED.
--- If multiple flags are specified they must either be combined using a bitwise OR, or their values summed.
--- TASK_FOLLOW_NAV_MESH_TO_COORD_ADVANCED also takes a NAVDATA structure, which in some cases must contain values
--- required for the extra functionality - where this is the case it is described below.
---@class ENAV_SCRIPT_FLAGS
ENAV_SCRIPT_FLAGS = {
	ENAV_DEFAULT = 0,
	ENAV_NO_STOPPING = 1,
	ENAV_ADV_SLIDE_TO_COORD_AND_ACHIEVE_HEADING_AT_END = 2,
	ENAV_GO_FAR_AS_POSSIBLE_IF_TARGET_NAVMESH_NOT_LOADED = 4,
	ENAV_ALLOW_SWIMMING_UNDERWATER = 8,
	ENAV_KEEP_TO_PAVEMENTS = 16,
	ENAV_NEVER_ENTER_WATER = 32,
	ENAV_DONT_AVOID_OBJECTS = 64,
	ENAV_ADVANCED_USE_MAX_SLOPE_NAVIGABLE = 128,
	ENAV_STOP_EXACTLY = 512,
	ENAV_ACCURATE_WALKRUN_START = 1024,
	ENAV_DONT_AVOID_PEDS = 2048,
	ENAV_DONT_ADJUST_TARGET_POSITION = 4096,
	ENAV_SUPPRESS_EXACT_STOP = 8192,
	ENAV_ADVANCED_USE_CLAMP_MAX_SEARCH_DISTANCE = 16384,
	ENAV_PULL_FROM_EDGE_EXTRA = 32768,
}

--- **********************************************************************************************
--- EWDR_SCRIPT_FLAGS
--- This enumeration defines the set of bitflags which may be passed in to TASK_WANDER_STANDARD
---@class EWDR_SCRIPT_FLAGS
EWDR_SCRIPT_FLAGS = {
	EWDR_DEFAULT = 0,
	EWDR_KEEP_MOVING_WHILST_WAITING_FOR_FIRST_PATH = 1,
}

--- ******************************************************************************************
--- ESEEK_ENTITY_OFFSET_FLAGS
--- Bit flags which can be passed into TASK_GOTO_ENTITY_OFFSET & TASK_GOTO_ENTITY_OFFSET_XY
---@class ESEEK_ENTITY_OFFSET_FLAGS
ESEEK_ENTITY_OFFSET_FLAGS = {
	ESEEK_DEFAULT = 0,
	ESEEK_OFFSET_ORIENTATES_WITH_ENTITY = 1,
	ESEEK_KEEP_TO_PAVEMENTS = 2,
}

--- ******************************************************************************************
--- EGOTO_ENTITY_FLAGS
--- Bit flags which can be passed into TASK_GOTO_ENTITY
---@class EGOTO_ENTITY_FLAGS
EGOTO_ENTITY_FLAGS = {
	EGOTO_ENTITY_DEFAULT = 0,
	EGOTO_ENTITY_NEVER_SLOW_FOR_PATH_LENGTH = 1,
}

--- ***********************************************************************************
--- EWAYPOINT_FOLLOW_FLAGS
--- A combination of these flags can be passed into TASK_FOLLOW_WAYPOINT_RECORDING
---@class EWAYPOINT_FOLLOW_FLAGS
EWAYPOINT_FOLLOW_FLAGS = {
	EWAYPOINT_DEFAULT = 0,
	EWAYPOINT_TURN_TO_FACE_WAYPOINT_HEADING_AT_END = 1,
	EWAYPOINT_NAVMESH_TO_INITIAL_WAYPOINT = 2,
	EWAYPOINT_NAVMESH_BACK_TO_WAYPOINT_IF_LEFT_ROUTE = 4,
	EWAYPOINT_START_FROM_CLOSEST_POINT = 8,
	EWAYPOINT_VEHICLES_USE_AI_SLOWDOWN = 16,
	EWAYPOINT_DO_NOT_RESPOND_TO_COLLISION_EVENTS = 32,
	EWAYPOINT_DO_NOT_SLOW_FOR_CORNERS = 64,
	EWAYPOINT_START_TASK_INITIALLY_AIMING = 128,
	EWAYPOINT_START_TASK_EXACTSTOP = 256,
	EWAYPOINT_USE_TIGHTER_TURN_SETTINGS = 512,
	EWAYPOINT_ALLOW_STEERING_AROUND_PEDS = 1024,
	EWAYPOINT_SUPPRESS_EXACTSTOP = 2048,
	EWAYPOINT_SLOW_MORE_FOR_CORNERS = 4096,
}

--- *****************************************************************************************
--- EASSISTED_ROUTE_FLAGS
--- A combination of these flags can be passed into ASSISTED_MOVEMENT_SET_ROUTE_PROPERTIES
---@class EASSISTED_ROUTE_FLAGS
EASSISTED_ROUTE_FLAGS = {
	EASSISTED_DEFAULT = 0,
	EASSISTED_ROUTE_ACTIVE_WHEN_STRAFING = 2,
	EASSISTED_ROUTE_DISABLE_IN_FORWARDS_DIRECTION = 4,
	EASSISTED_ROUTE_DISABLE_IN_REVERSE_DIRECTION = 8,
}

--- NOTE: These are now mapped (as closely as possible) to firing patterns defined in commands_ped.sch
---@class FIRING_TYPE
FIRING_TYPE = {
	FIRING_TYPE_DEFAULT = 0, -- Some of these don't translate to firing patterns so we'll just not use those ones
	FIRING_TYPE_1_BURST = FIRING_TYPE_DEFAULT, -- Uses FIRING_TYPE_DEFAULT as it's no longer a valid type
	FIRING_TYPE_1_THEN_AIM = FIRING_PATTERN_SINGLE_SHOT, -- Fire 1 bullet then aim for the duration
	FIRING_TYPE_RANDOM_BURSTS = FIRING_PATTERN_BURST_FIRE, -- Fire random bursts for the time, can change the frequency using SET_PED_SHOOT_RATE
	FIRING_TYPE_CLIP = FIRING_TYPE_DEFAULT, -- Uses FIRING_TYPE_DEFAULT as it's no longer a valid type
	FIRING_TYPE_CONTINUOUS = FIRING_PATTERN_FULL_AUTO, -- Fires at the maximum rate for the duration, reloading if the clips empty
}

--- Only Pos/Neg Y will work correctly, since pitch is limited and we cannot control roll directly
--- Should be safe to use for perpendicular directions though
---@class MOVEMENT_AXIS
MOVEMENT_AXIS = {
	MOVE_POSX = 0,
	MOVE_NEGX = 1,
	MOVE_POSY = 2,
	MOVE_NEGY = 3,
	MOVE_POSZ = 4,
	MOVE_NEGZ = 5,
}

---@class SCRIPTTASKSTATUS
SCRIPTTASKSTATUS = {
	WAITING_TO_START_TASK = 0,
	PERFORMING_TASK = 1,
	DORMANT_TASK = 2,
	VACANT_STAGE = 3,
	GROUP_TASK_STAGE = 4,
	ATTRACTOR_SCRIPT_TASK_STAGE = 5,
	SECONDARY_TASK_STAGE = 6,
	FINISHED_TASK = 7,
}

---@class COVERPOINT_USAGE
COVERPOINT_USAGE = {
	COVUSE_WALLTOLEFT = 0, -- Fires round to the right
	COVUSE_WALLTORIGHT = 1, -- Fires round to the left
	COVUSE_WALLTOBOTH = 2, -- Must fire over the top, used for low or high cover points
	COVUSE_WALLTONEITHER = 3, -- Fires either left or right
}

---@class COVERPOINT_HEIGHT
COVERPOINT_HEIGHT = {
	COVHEIGHT_LOW = 0, -- < 1.4m Will crouch behind and fire over the top
	COVHEIGHT_HIGH = 1, -- <Unused
	COVHEIGHT_TOOHIGH = 2, -- >= 2.0m Must spin left or right to fire depending on WALL_TO_LEFT or WALL_TO_RIGHT COVERPOINT_USAGE
}

---@class COVERPOINT_ARC
COVERPOINT_ARC = {
	COVARC_180 = 0,
	COVARC_120 = 1,
	COVARC_90 = 2,
	COVARC_0TO60 = 3,
	COVARC_300TO0 = 4,
	COVARC_0TO45 = 5,
	COVARC_315TO0 = 6,
}

---@class COVERPOINT_STATUS
COVERPOINT_STATUS = {
	COVSTATUS_Invalid = 1, -- not been checked yet
	COVSTATUS_Clear = 2, -- cover point is clear
	COVSTATUS_PositionBlocked = 4, -- cover point is blocked by something
}

---@class DUCK_TOGGLE
DUCK_TOGGLE = {
	TOGGLE_DUCK_AUTO = -1,
	TOGGLE_DUCK_OFF = 0,
	TOGGLE_DUCK_ON = 1,
}

---@class MOBILE_PHONE_SUB_TASK
MOBILE_PHONE_SUB_TASK = {
	MOBILE_SUB_TASK_PHONE_IN = 0,
	MOBILE_SUB_TASK_PHONE_TALK = 1,
	MOBILE_SUB_TASK_PHONE_OUT = 2,
	MOBILE_SUB_TASK_PHONE_OTHER = 3,
}

---@class SEATED_FLAGS
SEATED_FLAGS = {
	SF_NONE = 0,
	SF_DOINSTANTLY = 1,
	SF_LOOPANIM = 2,
}

---@class CLIMB_STATE
CLIMB_STATE = {
	CS_NOT_CLIMBING = 0,
	CS_CLIMBING = 1, -- CS_CLIMBING means the ped is climbing, or valuting
	CS_HANGING = 2, -- CS_HANGING means that the ped is hanging from an edge and is ready to use a shimmy task.
	CS_SHIMMYING_LEFT = 3,
	CS_SHIMMYING_RIGHT = 4,
}

---@class ROLL_DIR
ROLL_DIR = {
	RD_LEFT = 0,
	RD_RIGHT = 1,
	RD_FWD = 2,
	RD_BWD = 3,
}

---@class FLARE_TYPE
FLARE_TYPE = {
	FT_WARNING = 0, -- Ped will fire a flare high above the target
	FT_LIGHT_TARGET = 1, -- Ped will try to shed some light on the target
	FT_ATTACK_TARGET = 2, -- Ped will fire directly at the target
}

---@class CHAT_FLAGS
CHAT_FLAGS = {
	CF_IS_INITIATOR = 1,
	CF_DO_QUICK_CHAT = 2,
	CF_GO_TO_SPECIFIC_POS = 4,
	CF_USE_CUSTOM_HEADING = 8,
	CF_AUTO_CHAT = 16,
	CF_PLAY_GREETING_GESTURES = 32, -- Will say a generic greeting to the ped they are talking to initially, this will force the other ped into a response
	CF_PLAY_GOODBYE_GESTURES = 64, -- Similar to the above but on leaving (Note, you should only set this and the above flag on one of the peds as response is automatically handled)
}

--- Keep in sync with eScriptAnimFlags in commands_task.cpp
---@class ANIMATION_FLAGS
ANIMATION_FLAGS = {
	AF_DEFAULT = 0,
	AF_LOOPING = 1, -- Repeat the animation
	AF_HOLD_LAST_FRAME = 2, -- Hold on the last frame of the animation
	AF_REPOSITION_WHEN_FINISHED = 4, -- When the animation finishes pop the peds physical reprsentation position to match the visual representations position Note that the animator must not unwind the animation and must have an independent mover node
	AF_NOT_INTERRUPTABLE = 8, -- Can the task not be interupted by extenal events
	AF_UPPERBODY = 16, -- Only plays the upper body part of the animation. Dampens any motion caused by the lower body animation.Note that the animation should include the root node
	AF_SECONDARY = 32, -- The task will run in the secondary task slot. This means it can be used aswell as a movement task (for instance)
	AF_REORIENT_WHEN_FINISHED = 64, -- When the animation finishes pop the peds physical reprsentation direction to match the visual representations direction. Note that the animator must not unwind the animation and must have an independent mover node
	AF_ABORT_ON_PED_MOVEMENT = 128, -- Ends the animation early if the ped attemps to move e.g. if the player tries to move using the controller. Can also be used to blend out automatically when an ai ped starts moving by combining it with the AF_SECONDARY flag.
	AF_ADDITIVE = 256, -- Play back the animation additively. Note, this will only produce sensible results on specifically authored additive animations!
	AF_TURN_OFF_COLLISION = 512, -- Do not react to collision detection whilst this anim is playing
	AF_OVERRIDE_PHYSICS = 1024, -- Do not apply any physics forces whilst the anim is playing. Automatically turns off collision, extracts any initial offset provided in the clip and uses per frame mover extraction.
	AF_IGNORE_GRAVITY = 2048, -- Do not apply gravity while the anim is playing
	AF_EXTRACT_INITIAL_OFFSET = 4096, -- Extract an initial offset from the playback position authored by the animator
	AF_EXIT_AFTER_INTERRUPTED = 8192, -- Exit the animation task if it is interrupted by another task (ie Natural Motion).  Without this flag bing set looped animations will restart ofter the NM task
	AF_TAG_SYNC_IN = 16384, -- Sync the anim whilst blending in (use for seamless transitions from walk / run into a full body anim)
	AF_TAG_SYNC_OUT = 32768, -- Sync the anim whilst blending out (use for seamless transitions from a full body anim into walking / running behaviour)
	AF_TAG_SYNC_CONTINUOUS = 65536, -- Sync all the time (Only usefull to synchronize a partial anim e.g. an upper body)
	AF_FORCE_START = 131072, -- Force the anim task to start even if the ped is falling / ragdolling / etc. Can fix issues with peds not playing their anims immediately after a warp / etc
	AF_USE_KINEMATIC_PHYSICS = 262144, -- Use the kinematic physics mode on the entity for the duration of the anim (it should push other entities out of the way, and not be pushed around by players / etc
	AF_USE_MOVER_EXTRACTION = 524288, -- Updates the peds capsule position every frame based on the animation. Use in conjunction with AF_USE_KINEMATIC_PHYSICS to create characters that cannot be pushed off course by other entities / geometry / etc whilst playing the anim.
	AF_HIDE_WEAPON = 1048576, -- Indicates that the ped's weapon should be hidden while this animation is playing.
	AF_ENDS_IN_DEAD_POSE = 2097152, -- When the anim ends, kill the ped and use the currently playing anim as the dead pose
	AF_ACTIVATE_RAGDOLL_ON_COLLISION = 4194304, -- If the peds ragdoll bounds make contact with something physical (that isn't flat ground) activate the ragdoll and fall over.
	AF_DONT_EXIT_ON_DEATH = 8388608, -- Currently used only on secondary anim tasks. Secondary anim tasks will end automatically when the ped dies. Setting this flag stops that from happening."
	AF_ABORT_ON_WEAPON_DAMAGE = 16777216, -- Allow aborting from damage events (including non-ragdoll damage events) even when blocking other ai events using AF_NOT_INTERRUPTABLE.
	AF_DISABLE_FORCED_PHYSICS_UPDATE = 33554432, -- Prevent adjusting the capsule on the enter state (useful if script is doing a sequence of scripted anims and they are known to more or less stand still)
	AF_PROCESS_ATTACHMENTS_ON_START = 67108864, -- Force the attachments to be processed at the start of the clip
	AF_EXPAND_PED_CAPSULE_FROM_SKELETON = 134217728, -- Expands the capsule to the extents of the skeleton
	AF_USE_ALTERNATIVE_FP_ANIM = 268435456, -- Plays an alternative first person version of the clip on the player when in first person mode (the first person clip must be in the same dictionary, and be named the same as the anim you're playing, but with _FP appended on the end)
	AF_BLENDOUT_WRT_LAST_FRAME = 536870912, -- Start blending out the anim early, so that the blend out duration completes at the end of the animation.
	AF_USE_FULL_BLENDING = 1073741824, -- Use full blending for this anim and override the heading/position adjustment in CTaskScriptedAnimation::CheckIfClonePlayerNeedsHeadingPositionAdjust(), so that we don't correct errors (special case such as scrip-side implemented AI tasks, i.e. diving)
}

---@class ANIM_PRIORITY_FLAGS
ANIM_PRIORITY_FLAGS = {
	AF_PRIORITY_LOW = 0, -- Use the lowest TASK_SCRIPTED_ANIMATION slot
	AF_PRIORITY_MEDIUM = 1, -- Use the medium TASK_SCRIPTED_ANIMATION slot
	AF_PRIORITY_HIGH = 2, -- Use the high TASK_SCRIPTED_ANIMATION slot
}

---@class IK_CONTROL_FLAGS
IK_CONTROL_FLAGS = {
	AIK_NONE = 0, -- No Ik control during the task
	AIK_DISABLE_LEG_IK = 1, -- Disable leg ik during the task
	AIK_DISABLE_ARM_IK = 2, -- Disable arm ik during the task
	AIK_DISABLE_HEAD_IK = 4, -- Disable head ik during the task
	AIK_DISABLE_TORSO_IK = 8, -- Disable torso ik during the task
	AIK_DISABLE_TORSO_REACT_IK = 16, -- Disable torso react ik during the task
	AIK_USE_LEG_ALLOW_TAGS = 32, -- Use anim leg allow tags to determine when leg ik is enabled
	AIK_USE_LEG_BLOCK_TAGS = 64, -- Use anim leg block tags to determine when leg ik is disabled
	AIK_USE_ARM_ALLOW_TAGS = 128, -- Use anim arm allow tags to determine when ik is enabled
	AIK_USE_ARM_BLOCK_TAGS = 256, -- Use anim arm block tags to determine when ik is disabled
	AIK_PROCESS_WEAPON_HAND_GRIP = 512, -- Process the left hand weapon grip ik during the task
	AIK_USE_FP_ARM_LEFT = 1024, -- Use first person ik setup for left arm (cannot be used with AIK_DISABLE_ARM_IK)
	AIK_USE_FP_ARM_RIGHT = 2048, -- Use first person ik setup for right arm (cannot be used with AIK_DISABLE_ARM_IK)
	AIK_DISABLE_TORSO_VEHICLE_IK = 4096, -- Disable torso vehicle ik during the task
	AIK_LINKED_FACIAL = 8192, -- Searches the dictionary of the clip being played for another clip with the _facial suffix to be played as a facial animation.
}

---@class MOVE_NETWORK_FLAGS
MOVE_NETWORK_FLAGS = {
	MOVE_DEFAULT = 0,
	MOVE_USE_KINEMATIC_PHYSICS = 4,
	MOVE_SECONDARY = 8,
	MOVE_USE_FIRST_PERSON_ARM_IK_LEFT = 16,
	MOVE_USE_FIRST_PERSON_ARM_IK_RIGHT = 32,
}

--- Keep in sync with CTaskScriptedAnimation::ePlayBackState (TaskScriptedAnimation.h)
---@class ANIMATION_PLAYBACK_TYPE
ANIMATION_PLAYBACK_TYPE = {
	APT_EMPTY = 0, -- No anim will play at this priority
	APT_SINGLE_ANIM = 1, -- A single anim will play at this priority
	APT_3_WAY_BLEND = 2, -- A blend of three anims will be played at this priority. Weights can be controlled independently.
}

---@class SCRIPT_LOOK_FLAG
SCRIPT_LOOK_FLAG = {
	SLF_DEFAULT = 0,
	SLF_SLOW_TURN_RATE = 1, -- turn the head toward the target slowly
	SLF_FAST_TURN_RATE = 2, -- turn the head toward the target quickly
	SLF_EXTEND_YAW_LIMIT = 4, -- wide yaw head limits
	SLF_EXTEND_PITCH_LIMIT = 8, -- wide pitch head limit
	SLF_WIDEST_YAW_LIMIT = 16, -- widest yaw head limit
	SLF_WIDEST_PITCH_LIMIT = 32, -- widest pitch head limit
	SLF_NARROW_YAW_LIMIT = 64, -- narrow yaw head limits
	SLF_NARROW_PITCH_LIMIT = 128, -- narrow pitch head limit
	SLF_NARROWEST_YAW_LIMIT = 256, -- narrowest yaw head limit
	SLF_NARROWEST_PITCH_LIMIT = 512, -- narrowest pitch head limit
	SLF_USE_TORSO = 1024, -- use the torso aswell as the neck and head (currently disabled)
	SLF_WHILE_NOT_IN_FOV = 2048, -- keep tracking the target even if they are not in the hard coded FOV
	SLF_USE_CAMERA_FOCUS = 4096, -- use the camera as the target
	SLF_USE_EYES_ONLY = 8192, -- only track the target with the eyes
	SLF_USE_LOOK_DIR = 16384, -- use information in look dir DOF
	SLF_FROM_SCRIPT = 32768, -- internal use only
	SLF_USE_REF_DIR_ABSOLUTE = 65536, -- use absolute reference direction mode for solver
}

--- Keep in sync with eLookAtPriority in IKManager.h
---@class SCRIPT_LOOK_PRIORITY
SCRIPT_LOOK_PRIORITY = {
	SLF_LOOKAT_VERY_LOW = 0,
	SLF_LOOKAT_LOW = 1,
	SLF_LOOKAT_MEDIUM = 2,
	SLF_LOOKAT_HIGH = 3,
	SLF_LOOKAT_VERY_HIGH = 4,
}

---@class SCRIPT_INVESTIGATE_FLAG
SCRIPT_INVESTIGATE_FLAG = {
	SIF_DEFAULT = 0,
	SIF_DONT_RETURN_TO_ORIGINAL_POSITION = 1, -- Don't return to the position you started in when the investigation is finished
}

---@class PATROL_ALERT_STATE
PATROL_ALERT_STATE = {
	PAS_CASUAL = 0,
	PAS_ALERT = 1,
}

--- *********************************************************************************************************
--- ENTER_EXIT_VEHICLE_FLAGS
--- Set of flags to define the behaviour of the enter and exit vehicle tasks
---@class ENTER_EXIT_VEHICLE_FLAGS
ENTER_EXIT_VEHICLE_FLAGS = {
	ECF_RESUME_IF_INTERRUPTED = 1,
	ECF_WARP_ENTRY_POINT = 2,
	ECF_JACK_ANYONE = 8,
	ECF_WARP_PED = 16,
	ECF_DONT_WAIT_FOR_VEHICLE_TO_STOP = 64,
	ECF_DONT_CLOSE_DOOR = 256,
	ECF_WARP_IF_DOOR_IS_BLOCKED = 512,
	ECF_JUMP_OUT = 4096,
	ECF_DONT_DEFAULT_WARP_IF_DOOR_BLOCKED = 65536,
	ECF_USE_LEFT_ENTRY = 131072,
	ECF_USE_RIGHT_ENTRY = 262144,
	ECF_JUST_PULL_PED_OUT = 524288,
	ECF_BLOCK_SEAT_SHUFFLING = 1048576,
	ECF_WARP_IF_SHUFFLE_LINK_IS_BLOCKED = 4194304,
	ECF_DONT_JACK_ANYONE = 8388608,
	ECF_WAIT_FOR_ENTRY_POINT_TO_BE_CLEAR = 16777216,
}

--- Specifies what components are attached at the end of a playing a attach anim
---@class NM_ATTACH_COMPONENTS
NM_ATTACH_COMPONENTS = {
	NAC_LEFT_HAND = 1,
	NAC_RIGHT_HAND = 2,
	NAC_LEFT_FOOT = 4,
	NAC_RIGHT_FOOT = 8,
	NAC_LEFT_FOREARM = 16,
	NAC_RIGHT_FOREARM = 32,
	NAC_LEFT_SHIN = 64,
	NAC_RIGHT_SHIN = 128,
	NAC_LEFT_THIGH = 256,
	NAC_RIGHT_THIGH = 512,
}

--- Specifies the list of available move networks
---@class MOVE_NETWORK
MOVE_NETWORK = {
	MOVE_NETWORK_MINIGAME_BENCHPRESS = 1,
	MOVE_NETWORK_MINIGAME_SQUATS = 2,
}

--- Scripted Gun Tasks
---@class SCRIPTED_GUN_TASK
SCRIPTED_GUN_TASK = {
	SCRIPTED_GUN_TASK_ON_CRATE = GetHashKey("SCRIPTED_GUN_TASK_ON_CRATE"),
	SCRIPTED_GUN_TASK_HANGING_UPSIDE_DOWN = GetHashKey("SCRIPTED_GUN_TASK_HANGING_UPSIDE_DOWN"),
	SCRIPTED_GUN_TASK_ON_ROPE = GetHashKey("SCRIPTED_GUN_TASK_ON_ROPE"),
	SCRIPTED_GUN_TASK_DINGY_RPG = GetHashKey("SCRIPTED_GUN_TASK_DINGY_RPG"),
	SCRIPTED_GUN_TASK_CRATE_RPG = GetHashKey("SCRIPTED_GUN_TASK_CRATE_RPG"),
	SCRIPTED_GUN_TASK_CRATE_BUDDY = GetHashKey("SCRIPTED_GUN_TASK_CRATE_BUDDY"),
	SCRIPTED_GUN_TASK_PLANE_WING = GetHashKey("SCRIPTED_GUN_TASK_PLANE_WING"),
	SCRIPTED_GUN_TASK_BIKE = GetHashKey("SCRIPTED_GUN_TASK_BIKE"),
}

---@class ADVANCE_TO_TARGET_FLAGS
ADVANCE_TO_TARGET_FLAGS = {
	ATTF_DISABLE_AUTO_CROUCHING = 1,
	ATTF_DISABLE_HAND_SIGNALS = 2,
	ATTF_DEFAULT = 0,
}

---@class STARTING_HURT_MODE
STARTING_HURT_MODE = {
	SHM_ONGROUND = 0,
}

--- Mobile Phone modes. Ensure this remains in sync with the "PhoneMode" enum in TaskMobilePhone.h.
---@class PHONE_MODE
PHONE_MODE = {
	Mode_None = 0,
	Mode_ToCall = 1,
	Mode_ToText = 2,
	Mode_ToCamera = 3,
	Mode_Max = 4,
}

---@class PARK_TYPE
PARK_TYPE = {
	PARK_TYPE_PARALLEL = 0,
	PARK_TYPE_PERPENDICULAR_NOSE_IN = 1,
	PARK_TYPE_PERPENDICULAR_BACK_IN = 2,
	PARK_TYPE_PULL_OVER = 3,
	PARK_TYPE_LEAVE_PARALLEL_SPACE = 4,
	PARK_TYPE_BACK_OUT_PERPENDICULAR_SPACE = 5,
	PARK_TYPE_PASSENGER_EXIT = 6,
	PARK_TYPE_PULL_OVER_IMMEDIATE = 7,
}

---@class STEALTH_KILL_TASK_FLAGS
STEALTH_KILL_TASK_FLAGS = {
	SKTF_DEFAULT = 0,
	SKTF_FORCE_STEALTH_MODE = 1, -- This will force the ped into stealth mode (not necessary for animal types)
}

--- Keep this in sync with VehicleEscortType in TaskVehicleEscort.h!
---@class VEHICLE_ESCORT_TYPE
VEHICLE_ESCORT_TYPE = {
	VEHICLE_ESCORT_REAR = -1,
	VEHICLE_ESCORT_FRONT = 0,
	VEHICLE_ESCORT_LEFT = 1,
	VEHICLE_ESCORT_RIGHT = 2,
}

---@class HELI_CHASE_ORIENTATIONMODE
HELI_CHASE_ORIENTATIONMODE = {
	OrientationMode_None = 0,
	OrientationMode_OrientOnArrival = 1,
	OrientationMode_OrientAllTheTime = 2,
}

---@class HELI_CHASE_OrientationRelative
HELI_CHASE_OrientationRelative = {
	OrientationRelative_World = 0,
	OrientationRelative_HeliToTarget = 1,
	OrientationRelative_TargetForward = 2,
}

