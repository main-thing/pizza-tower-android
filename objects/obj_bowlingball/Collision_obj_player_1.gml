if (falling == 1 && vsp > 0)
{
    instance_create(x, y, obj_stompeffect)
    obj_player.image_index = 0
    obj_player.state = states.stunned
    vsp = -5
    hsp = 5
    with (obj_camera)
    {
        shake_mag = 10
        shake_mag_acc = (30 / room_speed)
    }
}
