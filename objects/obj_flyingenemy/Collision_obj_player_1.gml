if (obj_player.y < y && obj_player.state != states.hurt && obj_player.attacking == 0)
{
    if (obj_player.key_jump2 && obj_player.y < y && obj_player.vsp > 0)
    {
        bounce = 1
        image_index = 0
        audio_sound_gain(sfx_superjump, 0.7, 0)
        if (!audio_is_playing(sfx_superjump))
            audio_play_sound(sfx_superjump, 1, false)
        if (!obj_player.key_up)
            obj_player.vsp = -11
        if obj_player.key_up
        {
            obj_player.state = states.highjump
            obj_player.vsp = -14
        }
        instance_create(obj_player.x, (obj_player.y + 40), obj_stompeffect)
    }
    else
    {
        obj_player.vsp = -5.5
        bounce = 1
        image_index = 0
        audio_sound_gain(sfx_superjump, 0.7, 0)
        if (!audio_is_playing(sfx_superjump))
            audio_play_sound(sfx_superjump, 1, false)
    }
}
if (obj_player.mach2 >= 35 || obj_player.attacking == 1)
{
    if (obj_player.state == states.facestomp)
    {
        obj_player.vsp = -6
        obj_player.image_index = 0
        obj_player.facestompAnim = 1
    }
    instance_destroy()
    if (obj_player.state != states.Sjump)
        obj_player.vsp = -6
    instance_create(x, y, obj_bangeffect)
    with (instance_create(x, y, obj_flyingenemydead))
    {
        hsp = (sign((x - obj_player.x)) * 15)
        image_xscale = (-(sign((x - obj_player.x))))
        vsp = -10
    }
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}
