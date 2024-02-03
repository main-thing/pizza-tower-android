if (hooked == 1 && drop == 0)
{
    obj_player.x = x
    obj_player.y = (y + 40)
    with (obj_player)
    {
		if key_jump
		{
			jumpAnim = 0
	        state = states.jump
	        machslideAnim = 1
	        image_index = 0
	        vsp = 1
			other.hooked = 0
			other.drop = 1
		}
    }
}

if (place_meeting(x, (y - 1), obj_hookend) && hooked == 1)
{
    drop = 1
    obj_player.state = states.jump
    hooked = 0
    vsp = random_range(-4, 0)
    hsp = random_range(-4, 4)
}
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav
    if place_meeting((x + floor(hsp)), y, obj_solid)
    {
        x = floor(x)
        while (!(place_meeting((x + sign(hsp)), y, obj_solid)))
            x += sign(hsp)
        hsp = 0
    }
    x += hsp
    if place_meeting(x, (y + floor(vsp)), obj_solid)
    {
        y = floor(y)
        while (!(place_meeting(x, (y + sign(vsp)), obj_solid)))
            y += sign(vsp)
        vsp = 0
    }
    y += floor(vsp)
}
