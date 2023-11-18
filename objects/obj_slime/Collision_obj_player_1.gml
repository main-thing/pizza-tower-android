with (obj_player)
{
    if (y < other.y && attacking == 0 && (state == states.jump || state == states.highjump))
    {
        if (other.bounce == 0 && key_jump2 && vsp > 0)
        {
            audio_play_sound(sfx_boing, 1, false)
            roam = 0
            other.bounce = 1
            other.image_index = 0
            sprite_index = spr_player_stompprep
            image_index = 0
            stompAnim = 1
            vsp = -14
            other.alarm[0] = 150
            state = states.jump
        }
    }
}
if (obj_player.attacking == 1)
{
    if (obj_player.y < y && obj_player.state != states.mach3)
        obj_player.vsp = -5.5
    if (obj_player.machpunchAnim == 0)
    {
        obj_player.machpunchAnim = 1
        obj_player.image_index = 0
    }
    if (obj_player.state == states.facestomp)
    {
        obj_player.vsp = -6
        obj_player.image_index = 0
        obj_player.facestompAnim = 1
    }
    instance_destroy()
    instance_create(x, y, obj_slimedead)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    instance_create((x + 16), y, obj_slimedebris)
    audio_sound_gain(sfx_enemyhit, 0.7, 0)
    audio_play_sound(sfx_enemyhit, 1, false)
}
