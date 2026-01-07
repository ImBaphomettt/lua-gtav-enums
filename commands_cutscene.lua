--- a list of concatenated sections for a scene
---@class CUTSCENE_SECTION
CUTSCENE_SECTION = {
	CS_SECTION_1 = 1, -- index into an array on the codes so hence the mis match. The cutscene documentation will always refer to section_1.
	CS_SECTION_2 = 2,
	CS_SECTION_3 = 4,
	CS_SECTION_4 = 8,
	CS_SECTION_5 = 16,
	CS_SECTION_6 = 32,
	CS_SECTION_7 = 64,
	CS_SECTION_8 = 128,
	CS_SECTION_9 = 256,
	CS_SECTION_10 = 512,
	CS_SECTION_11 = 1024,
	CS_SECTION_12 = 2048,
	CS_SECTION_13 = 4096,
	CS_SECTION_14 = 8192,
	CS_SECTION_15 = 16384,
	CS_SECTION_16 = 32768,
	CS_SECTION_17 = 65536,
	CS_SECTION_18 = 131072,
	CS_SECTION_19 = 262144,
	CS_SECTION_20 = 524288,
	CS_SECTION_21 = 1048576,
	CS_SECTION_22 = 2097152,
	CS_SECTION_23 = 4194304,
	CS_SECTION_24 = 8388608,
	CS_SECTION_25 = 16777216,
	CS_SECTION_26 = 33554432,
	CS_SECTION_27 = 67108864,
	CS_SECTION_28 = 134217728,
	CS_SECTION_29 = 268435456,
	CS_SECTION_30 = 536870912,
	CS_SECTION_31 = 1073741824,
}

---@class CUTSCENE_USAGE
CUTSCENE_USAGE = {
	CU_ANIMATE_EXISTING_SCRIPT_ENTITY = 0, -- Get the cut scene to animate a script controlled entity
	CU_ANIMATE_AND_DELETE_EXISTING_SCRIPT_ENTITY = 1, -- Get the cutscene to animate a script controled entity and then delete it. e.g. if the entity dies in the scene
	CU_CREATE_AND_ANIMATE_NEW_SCRIPT_ENTITY = 2, -- Get the cut scene to create and script that will be handed to script control at the end of the scene. e.g. player meets a buddy in the scene
	CU_DONT_ANIMATE_ENTITY = 3, -- Tell the the cutscene that this ped is dead and should not appera in the scene.
}

---@class CUTSCENE_ENTITY_OPTION_FLAGS
CUTSCENE_ENTITY_OPTION_FLAGS = {
	CEO_NONE = 0,
	CEO_PRESERVE_FACE_BLOOD_DAMAGE = 1, -- If specified, leave facial blood decals when the cutscene starts. These are removed by default.
	CEO_PRESERVE_BODY_BLOOD_DAMAGE = 2, -- If specified, leave body damage decals when the cutscene starts. By default these are reduced, but not completely removed
	CEO_REMOVE_BODY_BLOOD_DAMAGE = 4, -- If specified, body damage decals will be completely cleared (instead of just reduced) when the cutscene starts
	CEO_CLONE_DAMAGE_TO_CS_MODEL = 8, -- If specified, if you have a reposition only entity, then any damage is cloned from that to the animated entity
	CEO_RESET_CAPSULE_AT_END = 16, -- If specified, the character's capsule will be reset so that it is vertical at the end of cutscenes.
	CEO_IS_CASCADE_SHADOW_FOCUS_ENTITY_DURING_EXIT = 32, -- If specified, this entity will be used as the focus for the cascade shadow system during seamless exits.  Required when characters get into vehicles at the end of cutscenes.
	CEO_IGNORE_MODEL_NAME = 64, -- If specified, force the cutscene to animate the registered ped using the given scene handle, even if the model name doesn't match.
	CEO_PRESERVE_HAIR_SCALE = 128, -- If specified, the characters hair scale is frozen when the cutscene starts.
	CEO_INSTANT_HAIR_SCALE_SETUP = 256, -- If specified, the characters hair scale will snap to it's new value when the cutscene starts, otherwise it will lerp.
	CEO_DONT_RESET_PED_CAPSULE = 512,
	CEO_UPDATE_AS_REAL_DOOR = 1024,
}

---@class CUTSCENE_PLAYBACK_FLAGS
CUTSCENE_PLAYBACK_FLAGS = {
	CUTSCENE_REQUESTED_FROM_WIDGET = 1,
	CUTSCENE_REQUESTED_DIRECTLY_FROM_SKIP = 2,
	CUTSCENE_REQUESTED_FROM_Z_SKIP = 4,
	CUTSCENE_REQUESTED_IN_MISSION = 8,
	CUTSCENE_PLAYBACK_FORCE_LOAD_AUDIO_EVENT = 16, -- HACK HACK HACK - see B* 3705257. In some rare cases in GTA it's possible for the load audio event to not get sent from the data, which can lead to the cutscene audio failing. This flag can be used to fix that problem in those specific cases. So far this is only for a single scene - bs_2b_mcs_3.
}

---@class CUTSCENE_OPTION_FLAGS
CUTSCENE_OPTION_FLAGS = {
	CUTSCENE_NO_OPTIONS = 0,
	CUTSCENE_PLAYER_TARGETABLE = 1,
	CUTSCENE_PROCGRASS_FORCE_HD = 2,
	CUTSCENE_DO_NOT_REPOSITION_PLAYER_TO_SCENE_ORIGIN = 4,
	CUTSCENE_NO_WIDESCREEN_BORDERS = 8,
	CUTSCENE_DELAY_ENABLING_PLAYER_CONTROL_FOR_UP_TO_DATE_GAMEPLAY_CAMERA = 16,
	CUTSCENE_DO_NOT_CLEAR_PICKUPS = 32,
	CUTSCENE_CREATE_OBJECTS_AT_SCENE_ORIGIN = 64,
	CUTSCENE_PLAYER_EXITS_IN_A_VEHICLE = 128,
	CUTSCENE_PLAYER_FP_FLASH_MICHAEL = 256, -- Use Michael's colour coded first person transition flash if exiting the cutscene into first person (rather than the neutral flash)
	CUTSCENE_PLAYER_FP_FLASH_FRANKLIN = 512, -- Use Franklin's colour coded first person transition flash if exiting the cutscene into first person (rather than the neutral flash)
	CUTSCENE_PLAYER_FP_FLASH_TREVOR = 1024, -- Use Trevor's colour coded first person transition flash if exiting the cutscene into first person (rather than the neutral flash)
	CUTSCENE_SUPPRESS_FP_TRANSITION_FLASH = 2048, -- Disable the first person transition flash at the end of the cutscene (use to disable the auto flash if you're anbout to transition to a scripted cam, etc)
	CUTSCENE_USE_FP_CAMERA_BLEND_OUT_MODE = 4096, -- Allow the special first person only blend out mode when doing a standard camera blend back to first person mode.
	CUTSCENE_EXITS_INTO_COVER = 8192, -- Informs the cutscene that the player is exiting into cover, so we can disable the first person flash when appropriate.
}

---@class CUTSCENE_HANDLE_SEARCH_RESULT
CUTSCENE_HANDLE_SEARCH_RESULT = {
	CHSR_NO_CUTSCENE_RUNNING = 0,
	CHSR_CUTFILE_STILL_LOADING = 1,
	CHSR_HANDLE_EXISTS = 2,
	CHSR_HANDLE_NOT_FOUND = 3,
}

---@class CUTSCENE_ENTITY_STREAMING_FLAGS
CUTSCENE_ENTITY_STREAMING_FLAGS = {
	CES_NONE = 0,
	CES_DONT_STREAM_AND_APPLY_VARIATIONS = 1,
}

