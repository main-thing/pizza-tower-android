if (obj_player.state != states.hurt)
{
    global.tomatofollow = 1
    panic = 0
    if (global.tomatofollow == 0)
        audio_play_sound(sfx_bigcollect, 1, false)
}
