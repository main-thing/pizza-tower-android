if(index == -1)
    exit;
if(start == 1){
	if global.panic || forceshow
	{
		image_alpha = 1
		if (sprite_index == spr_pizzaportal)
		{
			playerid = noone
			with (obj_player)
			{
				if (other.playerid == noone && place_meeting(x, y, other))
				{
					state = states.actor
					visible = false
					other.sprite_index = spr_pizzaportalend
					other.image_index = 0
					other.playerid = id
				}
			}
		}
		else if (sprite_index == spr_pizzaportalend)
		{
			with (playerid)
			{
				hsp = 0
				vsp = 0
				visible = false
			}
			if (floor(image_index) == (image_number - 1))
			{
				image_index = (image_number - 1)
				if (!instance_exists(obj_fadeout))
				{
					for (var i = 0; i < ds_list_size(global.escaperoom); i++)
					{
						var b = ds_list_find_value(global.escaperoom, i)
						var q = ds_list_find_index(global.baddieroom, b)
						var t = 0
						if (q == -1)
						{
							q = ds_list_find_index(global.saveroom, b)
							t = 1
						}
						if (q != -1)
						{
							if (!t)
								ds_list_delete(global.baddieroom, q)
							else
								ds_list_delete(global.saveroom, q)
						}
					}
					global.laps++
					global.lap = 1
					with (instance_create(x, y, obj_fadeout))
		            {
		                _id = other.id
		                index = other.index
		                custom_level = 1
		            }
				}
			}
		}
	}
	else
		image_alpha = 0.5
} else {
	if(active == 0){
		visible = false
	}
}
if (floor(image_index) == (image_number - 1) && active)
{
	switch sprite_index
	{
		case spr_pizzaportal_appear:
			sprite_index = spr_pizzaportalentrancestart
		break
		case spr_pizzaportalentrancestart:
			sprite_index = spr_pizzaportal_disappear
			with (obj_player)
			{
				state = states.normal
				visible = true
			}
		break
		case spr_pizzaportal_disappear:
			instance_create_unique(0, 0, obj_lap2visual);
			visible = false
			active = 0
		break
	}
}
