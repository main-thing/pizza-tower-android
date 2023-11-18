if (obj_player.mach2 >= 35 && obj_player.vsp > 0)
{
    obj_player.state = states.skateboard
    instance_destroy()
}
