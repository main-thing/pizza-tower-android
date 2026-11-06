ADD_OBJECT_EVENT_GML_HOOK;
if (global.timeattack == 0)
{
    obj_timeattack.alarm[1] = 60
    global.timeattack = 1
    global.collect = 12000
    scr_soundeffect(sfx_killingblow)
    instance_destroy()
    ds_list_add(global.baddieroom, id)
}