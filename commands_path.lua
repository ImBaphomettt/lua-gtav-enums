--- ENUM : GET_SAFE_COORD_FLAGS
--- Flags to be passed in to GET_SAFE_COORD_FOR_PED to govern which navmesh polygons it considers
---@class GET_SAFE_COORD_FLAGS
GET_SAFE_COORD_FLAGS = {
	GSC_FLAG_DEFAULT = 0,
	GSC_FLAG_ONLY_PAVEMENT = 1,
	GSC_FLAG_NOT_ISOLATED = 2,
	GSC_FLAG_NOT_INTERIOR = 4,
	GSC_FLAG_NOT_WATER = 8,
	GSC_FLAG_ONLY_NETWORK_SPAWN = 16,
	GSC_FLAG_USE_FLOOD_FILL = 32,
}

---@class GPS_SLOT_TYPE
GPS_SLOT_TYPE = {
	GPS_SLOT_WAYPOINT = 0,
	GPS_SLOT_RADAR_BLIP = 1,
	GPS_SLOT_DISCRETE = 2,
}

--- INFO: This enum is the available set of directions returned by GENERATE_DIRECTIONS_TO_COORD
--- Keep this in sync with the GpsDirections enum in CPathFind (pathfind.cpp)
---@class VEHICLE_PATH_DIRECTIONS
VEHICLE_PATH_DIRECTIONS = {
	DIRECTIONS_UNKNOWN = 0,
	DIRECTIONS_WRONG_WAY = 1,
	DIRECTIONS_KEEP_DRIVING = 2,
	DIRECTIONS_LEFT_AT_JUNCTION = 3,
	DIRECTIONS_RIGHT_AT_JUNCTION = 4,
	DIRECTIONS_STRAIGHT_THROUGH_JUNCTION = 5,
	DIRECTIONS_KEEP_LEFT = 6,
	DIRECTIONS_KEEP_RIGHT = 7,
	DIRECTIONS_UTURN = 8,
}

--- ~>						Vehicle commands
--- INFO: This enum primarily filters the return results of GetNode functions.
--- Keep it in sync with GetClosestNodeFlags in commands_path.cpp
---@class NODE_FLAGS
NODE_FLAGS = {
	NF_NONE = 0, -- No flags
	NF_INCLUDE_SWITCHED_OFF_NODES = 1, -- Include switched off nodes in any search
	NF_INCLUDE_BOAT_NODES = 2, -- Include boat nodes
	NF_IGNORE_SLIPLANES = 4, -- Ignore sliplanes
	NF_IGNORE_SWITCHED_OFF_DEADENDS = 8, -- Ignore dead-ends, only if they're switched off. If NF_INCLUDE_SWITCHED_OFF_NODES is false this won't find anything to ignore
}

--- INFO : The enum defins vehicle node properties as returned by GET_VEHICLE_NODE_PROPERTIES
---@class VEHICLE_NODE_PROPERTIES
VEHICLE_NODE_PROPERTIES = {
	VNP_OFF_ROAD = 1, -- node has been flagged as 'off road', suitable only for 4x4 vehicles, etc
	VNP_ON_PLAYERS_ROAD = 2, -- node has been dynamically marked as somewhere ahead, possibly on (or near to) the player's current road
	VNP_NO_BIG_VEHICLES = 4, -- node has been marked as not suitable for big vehicles
	VNP_SWITCHED_OFF = 8, -- node is switched off for ambient population
	VNP_TUNNEL_OR_INTERIOR = 16, -- node is in a tunnel or an interior
	VNP_LEADS_TO_DEAD_END = 32, -- node is, or leads to, a dead end
	VNP_HIGHWAY = 64, -- node is marked as highway
	VNP_JUNCTION = 128, -- node qualifies as junction
	VNP_TRAFFIC_LIGHT = 256, -- node's special function is traffic-light
	VNP_GIVE_WAY = 512, -- node's special function is give-way
	VNP_WATER = 1024, -- node is water/boat
}

---@class VEHICLE_DENSITY
VEHICLE_DENSITY = {
	MIN_VEHICLE_DENSITY = 0, -- no chance of vehicles being created on this node
	MAX_VEHICLE_DENSITY = 15, -- maximum chance of vehicles being created on this node
}

---@class PED_DENSITY
PED_DENSITY = {
	MIN_PED_DENSITY = 0, -- no chance of peds being created on this navmesh polygon
	MAX_PED_DENSITY = 7, -- maximum chance of peds being created on this navmesh polygon
}

---@class BLOCKING_OBJECT_FLAGS
BLOCKING_OBJECT_FLAGS = {
	BLOCKING_OBJECT_DEFAULT = 0,
	BLOCKING_OBJECT_WANDERPATH = 1, -- Blocking object will block wander paths
	BLOCKING_OBJECT_SHORTESTPATH = 2, -- Blocking object will block (regular) shortest-paths
	BLOCKING_OBJECT_FLEEPATH = 4, -- Blocking object will block flee paths
	BLOCKING_OBJECT_ALLPATHS = 7,
}

