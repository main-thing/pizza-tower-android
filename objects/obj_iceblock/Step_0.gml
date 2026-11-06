ADD_OBJECT_EVENT_GML_HOOK;
if place_meeting(x, (y - 1), obj_player)
{
	with (obj_player)
	{
		if (state != states.gotoplayer && place_meeting(x, (y + 1), other))
		{
			if (state == states.knightpep)
				state = states.knightpepslopes
			else if (state != states.knightpepslopes && state != states.Sjumpprep)
			{
				if (state != states.machslide && state != states.tumble && state != states.handstandjump && state != states.mach1 && state != states.mach2 && state != states.mach3)
				{
					if (icedir != (-xscale) && move != 0)
					{
						if (prevmovespeed != 0)
							icemovespeed = prevmovespeed
						else
							icemovespeed = 8
						icedir = (-xscale)
						savedicedir = (-xscale)
					}
					if (prevmove != move && move == 0)
					{
						icemovespeed = (-((prevmovespeed - previcemovespeed)))
						icedir = (-xscale)
					}
				}
				else if (state == states.machslide)
				{
					if (prevstate != state)
					{
						icedir = xscale
						icemovespeed = floor((abs(movespeed) * 0.5))
					}
				}
				else if (state == states.tumble)
					icemovespeed = 0
			}
		}
	}
}

if(image_xscale == 0.5 && image_yscale == 0.5)
{
	image_xscale = image_xscale * 2
	image_yscale = image_yscale * 2
	instance_change(obj_iceblock_strongcold, false)
}