if (obj_player.state != states.hurt)
{
    global.pineapplefollow = 1
    panic = 0
    if (global.pineapplefollow == 0)
        audio_play_sound(sfx_bigcollect, 1, false)
}
