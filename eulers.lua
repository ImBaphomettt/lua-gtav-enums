--- Defines the rotation order to be used for Euler composition and decomposition.
--- NOTE: This is NOT the order in which the angles are specified in a vector, but rather the order in which the rotations should be applied.
--- NOTE: This enumeration must match the code equivalent in script/script.h, which in turn matches the RAGE enumeration(s).
---@class EULER_ROT_ORDER
EULER_ROT_ORDER = {
	EULER_XYZ = 0,
	EULER_XZY = 1,
	EULER_YXZ = 2,
	EULER_YZX = 3,
	EULER_ZXY = 4,
	EULER_ZYX = 5,
	EULER_MAX = 6,
}

