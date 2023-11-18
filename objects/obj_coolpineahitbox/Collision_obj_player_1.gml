with (obj_player)
{
    if (state != states.hurt && state != states.barrelroll && state != states.bump && hurted == 0 && barrel == 0)
    {
        instance_create(x, y, obj_spikehurteffect)
        state = states.hurt
        obj_player.image_index = 0
        obj_player.flash = 1
        if (x != other.x)
            obj_player.hsp = (sign((x - other.x)) * 5)
        else
            hsp = 5
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
    else if (barrel == 1 && state != states.barrelroll)
    {
        barrel = 0
        state = states.hurt
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            hurtbounce = 1
            vsp = -5
        }
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
        instance_create((x + random_range(15, -15)), (y + random_range(15, -15)), obj_wooddebris)
    }
}
