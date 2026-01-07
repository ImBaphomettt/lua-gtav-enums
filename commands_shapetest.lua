---@class SHAPETEST_STATUS
SHAPETEST_STATUS = {
	SHAPETEST_STATUS_NONEXISTENT = 0, -- Shapetest requests are discarded if they are ignored for a frame or as soon as the results are returned
	SHAPETEST_STATUS_RESULTS_NOTREADY = 1, -- Not ready yet; try again next frame
	SHAPETEST_STATUS_RESULTS_READY = 2, -- The result is ready and the results have been returned to you. The shapetest request has also just been destroyed
}

--- A list of the types of shape test available to script
---@class SHAPETEST_TYPE
SHAPETEST_TYPE = {
	SHAPETEST_INVALID = 0,
	SHAPETEST_LOSPROBE = 1,
	SHAPETEST_BOUND = 2,
	SHAPETEST_BOUNDINGBOX = 3,
	SHAPETEST_BOX = 4,
	SHAPETEST_CAPSULE = 5,
}

