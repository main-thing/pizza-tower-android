if (global.panic == 1)
{
    with (obj_player)
    {
        if (place_meeting(x, (y + 1), obj_collisionparent) && x > (other.x + 32) && x < (other.x + 160))
        {
            if (!instance_exists(obj_endlevelfade))
                instance_create(x, y, obj_endlevelfade)
            if (state != states.door)
            {
                state = states.door
                obj_endlevelfade.alarm[0] = 400
                image_index = 0
            }
        }
    }
}
