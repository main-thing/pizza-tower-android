if (playerid != noone)
{
	with (playerid)
	{
		hsp = 0
		vsp = 0
	}
	x = playerid.x + 2
	y = (playerid.y - 35)
	if (playerid.state != states.gottreasure){
		instance_destroy()
		
	}
}
if (!got)
{
	var num = instance_place_list(x, y, obj_player, global.instancelist, 0)
	for(var i = 0; i < num; i++)
	{
		var _player = ds_list_find_value(global.instancelist, i)
		with (_player)
		{
			if (state != states.gotoplayer)
			{
				hsp = 0
				vsp = 0
				state = states.gottreasure
				scr_soundeffect(sfx_secretfound)
				with (other)
				{
					got = 1
					alarm[0] = 300
					sprite_index = spr_got
					playerid = other.id
					ds_list_add(global.saveroom, id)
					global.combotime = 60
					global.treasure = 1
				}
				//ds_list_clear(global.instancelist)
			}
		}
	}
	ds_list_clear(global.instancelist)
}
