if (!instance_exists(obj_fadeout))
    instance_create(x, y, obj_fadeout)
with (obj_player)
{
    player_y = other.target_y
    player_x = other.target_x
    targetRoom = other.targetRoom
}
