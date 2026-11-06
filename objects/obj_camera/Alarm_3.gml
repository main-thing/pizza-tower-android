ADD_OBJECT_EVENT_GML_HOOK;
if (room == rank_room)
	exit;
if (!global.panic)
	exit;
if instance_exists(obj_treasure)
	exit;
