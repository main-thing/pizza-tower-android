ADD_OBJECT_EVENT_GML_HOOK;
if (ds_list_find_index(global.baddieroom, id) != -1 || global.strongcoldrank == "none" || global.panic == 1)
    instance_destroy()