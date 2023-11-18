if (global.ammo < 9)
{
    global.ammo += 1
    audio_sound_gain(sfx_collect, 0.7, 0)
    audio_play_sound(sfx_collect, 1, false)
    instance_destroy()
}
