with (obj_player)
{
    if (state == states.normal && key_up)
    {
        player_y = other.target_y
        player_x = other.target_x
        targetRoom = other.targetRoom
        other.visited = 1
        image_index = 0
        state = states.door
        instance_create(x, y, obj_fadeout)
    }
}
