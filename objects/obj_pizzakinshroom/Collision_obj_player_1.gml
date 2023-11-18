if (obj_player.state != states.hurt)
{
    global.shroomfollow = 1
    panic = 0
    if (global.shroomfollow == 0)
        audio_play_sound(sfx_bigcollect, 1, false)
}
