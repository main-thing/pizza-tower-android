ADD_OBJECT_EVENT_GML_HOOK;
if (obj_player.state != states.hurt)
{
    global.cheesefollow = 1
    panic = 0
    if (global.cheesefollow == 0)
        audio_play_sound(sfx_bigcollect, 1, false)
}
