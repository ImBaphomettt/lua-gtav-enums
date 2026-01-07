--- NOTE: When applying forces to objects be sure to choose the correct type.
--- If you are not sure please ask for advice.
--- Generally, use FORCE and/or TORQUES when applying forces continuously (over multiple frames). e.g. simulating wind, rockets, etc.
--- Use an IMPULSE or ANGULAR_IMPULSE when applying a one off kick to an object. E.g. a bullet impact, car crash, etc.
--- This will ensure your forces are consistent when the frame rate varies.
---@class APPLY_FORCE_TYPE
APPLY_FORCE_TYPE = {
	APPLY_TYPE_FORCE = 0, -- continuous force applied every frame, will produce a constant acceleration independent of frame rate.
	APPLY_TYPE_IMPULSE = 1, -- Caution a single impact applied at a point in time, will produce a step change in velocity. If applied continuously will produce an acceleration that IS dependant on frame rate and may also break the physics engine, i.e. please do
	APPLY_TYPE_EXTERNAL_FORCE = 2, -- same as a normal force but applied as if it was an external push to the object, through the breaking system. This means that breakable objects will break apart due to the force you're applying.
	APPLY_TYPE_EXTERNAL_IMPULSE = 3, -- ditto, a nomal impulse plus breaking.
	APPLY_TYPE_TORQUE = 4, -- Angular equivalent of force, causes continuous angular acceleration independent of framerate
	APPLY_TYPE_ANGULAR_IMPULSE = 5, -- Angular equivalent of impulse, causes instantaneous change in angular velocity
}

---@class PED_RAGDOLL_COMPONENTS
PED_RAGDOLL_COMPONENTS = {
	RAGDOLL_PELVIS = 0,
	RAGDOLL_THIGH_L = 1,
	RAGDOLL_CALF_L = 2,
	RAGDOLL_FOOT_L = 3,
	RAGDOLL_THIGH_R = 4,
	RAGDOLL_CALF_R = 5,
	RAGDOLL_FOOT_R = 6,
	RAGDOLL_SPINE = 7,
	RAGDOLL_SPINE1 = 8,
	RAGDOLL_SPINE2 = 9,
	RAGDOLL_SPINE3 = 10,
	RAGDOLL_CLAVICLE_L = 11,
	RAGDOLL_UPPERARM_L = 12,
	RAGDOLL_LOWERARM_L = 13,
	RAGDOLL_HAND_L = 14,
	RAGDOLL_CLAVICLE_R = 15,
	RAGDOLL_UPPERARM_R = 16,
	RAGDOLL_LOWERARM_R = 17,
	RAGDOLL_HAND_R = 18,
	RAGDOLL_NECK = 19,
	RAGDOLL_HEAD = 20,
	RAGDOLL_NUM_COMPONENTS = 21,
}

---@class PED_NM_BEHAVIOURS
PED_NM_BEHAVIOURS = {
	NM_RELAX = 0, -- just relax
	NM_FOETAL = 1, -- go into foetal pose
	NM_ROLLUP = 2, -- not used this one yet
	NM_WRITHE = 3, -- writhe about in pain
	NM_BALANCE = 4, -- use whole body to balance and stay on feet
	NM_BRACE = 5, -- brace for impact, not that useful without params for what's gonna hit you
	NM_REACH = 6, -- reach for ground
	NM_SHOT = 7, -- be shot, not that useful without params
	NM_BLAST = 8, -- fly through air after explosion
}

---@class VEHICLE_SEAT
VEHICLE_SEAT = {
	VS_ANY_PASSENGER = -2, -- Any passenger seat
	VS_DRIVER = -1, -- Drivers seat
	VS_FRONT_RIGHT = 0, -- Front Right seat
	VS_BACK_LEFT = 1, -- Back left
	VS_BACK_RIGHT = 2, -- Back right
	VS_EXTRA_LEFT_1 = 3,
	VS_EXTRA_RIGHT_1 = 4,
	VS_EXTRA_LEFT_2 = 5,
	VS_EXTRA_RIGHT_2 = 6,
	VS_EXTRA_LEFT_3 = 7,
	VS_EXTRA_RIGHT_3 = 8,
}

