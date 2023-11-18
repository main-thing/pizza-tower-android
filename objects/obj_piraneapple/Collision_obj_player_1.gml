attack = 1
alarm[0] = 50
image_xscale = (-(sign((x - other.x))))
with (obj_player)
{
    if (state != states.hurt && state != states.bump && hurted == 0 && barrel == 0)
    {
        state = states.hurt
        obj_player.image_index = 0
        obj_player.flash = 1
        obj_player.hsp = (sign((x - other.x)) * 5)
        if (!(place_meeting(x, (y + 1), obj_wall)))
        {
            hurtbounce = 1
            vsp = -5
        }
    }
    else if (barrel == 1)
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
