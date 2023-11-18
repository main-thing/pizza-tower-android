if (stun == 0 && obj_player.y >= y && obj_player.attacking == 0 && obj_player.state != states.hurt && obj_player.state != states.bump && obj_player.state != states.tackle && (!(vsp < 0)) && obj_player.instakillmove == 0)
{
    obj_player.image_index = 0
    obj_player.state = states.bump
    if (x != other.x)
    {
        obj_player.image_xscale = (-(sign((obj_player.x - x))))
        hsp = (sign((x - obj_player.x)) * 3)
        image_xscale = (-(sign((x - obj_player.x))))
        obj_player.hsp = (sign((other.x - x)) * 3)
    }
    else
    {
        obj_player.image_xscale = 1
        obj_player.hsp = -3
        image_xscale = 1
        hsp = 6
    }
    obj_player.vsp = -3
    vsp = -3
    if (alarm[0] < 50)
        alarm[0] += 50
    if (stun == 0)
    {
        ministun = 1
        image_index = 0
    }
    audio_sound_gain(sfx_superjump, 0.7, 0)
    if (!audio_is_playing(sfx_superjump))
        audio_play_sound(sfx_superjump, 1, false)
}
if (obj_player.y < y && obj_player.state != states.hurt && obj_player.attacking == 0 && obj_player.state != states.tackle && obj_player.state != states.bump && (!(vsp < 0)) && obj_player.instakillmove == 0)
{
    if (x != other.x)
    {
        hsp = (sign((x - obj_player.x)) * 3)
        image_xscale = (-(sign((x - obj_player.x))))
    }
    else
    {
        obj_player.image_xscale = 1
        obj_player.hsp = -3
        image_xscale = 1
        hsp = 6
    }
    if (obj_player.key_jump2 && obj_player.y < y && obj_player.vsp > 0)
    {
        if (!obj_player.key_up)
            obj_player.vsp = -11
        if obj_player.key_up
        {
            obj_player.state = states.highjump
            obj_player.vsp = -14
        }
        instance_create(obj_player.x, (obj_player.y + 40), obj_stompeffect)
    }
    else if (obj_player.state != states.bump)
    {
        obj_player.image_index = 0
        obj_player.state = states.bump
        if (x != other.x)
            obj_player.image_xscale = (-(sign((obj_player.x - x))))
        obj_player.hsp = (sign((other.x - x)) * 3)
        obj_player.vsp = -3
    }
    if (alarm[0] < 50)
        alarm[0] += 50
    vsp = -3
    if (stun == 0)
    {
        ministun = 1
        image_index = 0
    }
    audio_sound_gain(sfx_superjump, 0.7, 0)
    if (!audio_is_playing(sfx_superjump))
        audio_play_sound(sfx_superjump, 1, false)
}
if (stun == 0 && obj_player.attacking == 1 && obj_player.state != states.hurt && obj_player.state != states.tackle && (!(vsp < 0)) && obj_player.instakillmove == 0)
{
    obj_player.image_index = 0
    obj_player.state = states.tackle
    if (x != other.x)
    {
        obj_player.image_xscale = (-(sign((obj_player.x - x))))
        hsp = (sign((x - obj_player.x)) * 6)
        image_xscale = (-(sign((x - obj_player.x))))
        obj_player.hsp = (sign((other.x - x)) * 3)
    }
    else
    {
        obj_player.image_xscale = 1
        obj_player.hsp = -3
        image_xscale = 1
        hsp = 6
    }
    obj_player.vsp = -3
    vsp = -3
    ministun = 0
    stun = 1
    alarm[0] = 200
    image_index = 0
    audio_sound_gain(sfx_superjump, 0.7, 0)
    if (!audio_is_playing(sfx_superjump))
        audio_play_sound(sfx_superjump, 1, false)
}
if (obj_player.attacking == 1 && (!((obj_player.state == states.mach2 && obj_player.y < y && stun == 1))) && stun == 1 && (!(obj_player.state == states.tackle)))
{
    if (obj_player.y < y && obj_player.instakillmove == 0 && stun == 0)
        obj_player.vsp = -5.5
    if (obj_player.machpunchAnim == 0 && obj_player.state == states.mach2)
    {
        obj_player.machpunchAnim = 1
        obj_player.image_index = 0
    }
    instance_destroy()
    if (obj_player.state == states.facestomp)
    {
        obj_player.vsp = -6
        obj_player.image_index = 0
        obj_player.facestompAnim = 1
    }
    with (instance_create(x, y, obj_forknightdead))
    {
        if (other.stun == 0)
            image_xscale = other.image_xscale
        else
            image_xscale = other.image_xscale
        instance_create(x, y, obj_bangeffect)
        if (x != other.x)
            hsp = (sign((x - obj_player.x)) * 15)
        vsp = -10
    }
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}
if (obj_player.instakillmove == 1)
{
    instance_destroy()
    instance_create(x, y, obj_explosioneffect)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    instance_create(x, y, obj_baddiegibs)
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}
with (obj_player)
{
    if (other.stun == 1 && other.vsp >= 0 && state != states.hurt && state != states.tackle && state != states.grab)
    {
        instance_destroy(other.id)
        if (y < other.y && state == states.mach2)
        {
            with (instance_create(x, y, obj_forknightdead))
                grabbed = 1
            vsp = -4
            image_index = 0
            state = states.backbreaker
        }
        else if (attacking == 0)
        {
            with (instance_create(x, y, obj_forknightdead))
                grabbed = 1
            image_index = 0
            hsp = 0
            state = states.grab
            instance_create((x + (image_xscale * 60)), (y + 10), obj_punchdust)
        }
    }
}
