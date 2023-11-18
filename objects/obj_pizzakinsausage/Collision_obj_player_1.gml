if (obj_player.state != states.hurt)
{
    global.sausagefollow = 1
    panic = 0
    if (global.sausagefollow == 0)
        audio_play_sound(sfx_bigcollect, 1, false)
}
