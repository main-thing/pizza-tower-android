function scr_player_addslopemomentum(_a0, _a1)
{
	with (instance_place(x, (y + 1), obj_slope))
	{
		if (sign(image_xscale) == (-sign(other.xscale)))
		{
			if (abs(image_yscale) < abs(image_xscale))
				other.movespeed += _a0
			else
				other.movespeed += _a1
		}
		else if (abs(image_yscale) < abs(image_xscale))
			other.movespeed -= _a0
		else
			other.movespeed -= _a1
	}
	exit;
}

function scr_pizzaball_addslopemomentum(_a0, _a1)
{
	with (instance_place(x, (y + 1), obj_slope))
	{
		if (sign(image_xscale) == (-sign(other.image_xscale)))
		{
			if (abs(image_yscale) < abs(image_xscale))
				other.slopespeed += _a0
			else
				other.slopespeed += _a1
		}
		else if (abs(image_yscale) < abs(image_xscale))
			other.slopespeed -= _a0
		else
			other.slopespeed -= _a1
	}
	if (slopespeed < 0)
		slopespeed = 0
	if (slopespeed > 10)
		slopespeed = 10
	if (movespeed < 1)
		slopespeed = 0
	exit;
}

