if(waitforanim == 1){
	with(obj_player1){
		if(state == states.door){
			if(floor(image_index) == (image_number - 1)){
				other.waitforanim = 0
			}
		}
	}
	return;
}
if (fadealpha > 1)
{
	fadein = 1
	if instance_exists(obj_player)
	{
		if (custom_level == 0)
		{
			/*with (obj_player)
			{
				if(instance_place(x, y, obj_goldendoor) != noone){
					with(instance_place(x, y, obj_goldendoor)){
						if(!olddoor){
							game_restart()
						}
					}
				}
			}*/
			if (room != obj_player1.targetRoom or roomreset)
			{
				scr_room_goto(obj_player1.targetRoom)
				with (obj_player)
				{
					if (state == states.ejected or state == states.policetaxi)
					{
						visible = true
						state = states.normal
					}
				}
			}
			if (global.coop == true)
			{
				if (room != obj_player2.targetRoom or roomreset)
					scr_room_goto(obj_player1.targetRoom)
				with (obj_player)
				{
					if (state == states.ejected)
						state = states.normal
				}
				with (obj_player2)
				{
					if instance_exists(obj_coopplayerfollow)
						state = states.gotoplayer
				}
			}
		} else {
			with (obj_door_editor)
            {
                if (index == other.index && !place_meeting(x, y, obj_player))
                {
                    other.xx = x
                    other.yy = y
					other.xscale = image_xscale
					other.yscale = image_yscale
					other.object = object_index
                }
            }
			with (obj_hallway_editor)
            {
                if (index == other.index && !place_meeting(x, y, obj_player))
                {
                    other.xx = x
                    other.yy = y
					other.xscale = offsetx
					other.yscale = image_yscale
					other.object = object_index
                }
            }
			with (obj_boxofpizza_editor)
            {
				/*with(instance_create_depth(x,y - (48 * image_yscale),-10000,obj_1x1)){
					outline = 1
					alarm[0] = 100
				}
				if(place_meeting(x, y - (48 * image_yscale), obj_player)){
					image_blend = c_red
				} else {
					image_blend = c_white
				}*/
	            if (index == other.index && !place_meeting(x, y - (48 * image_yscale), obj_player))
	            {
	                other.xx = x
	                other.yy = y
					other.xscale = image_xscale
					other.yscale = image_yscale
					other.object = object_index
	            }
            }
			with (obj_secretportal_editor)
            {
				if(other.start == 1){
			        if (index == other.index && start == 0 && !place_meeting(x, y, obj_player))
			        {
					    other.xx = x
					    other.yy = y
						other.xscale = image_xscale
						other.yscale = image_yscale
						other.object = object_index
						sprite_index = spr_secretportal_spawnopen
			        }
				}
				if(other.start == 2){
			        if (index == other.index && start == 1 && !place_meeting(x, y, obj_player))
			        {
					    other.xx = x
					    other.yy = y
						other.xscale = image_xscale
						other.yscale = image_yscale
						other.object = object_index
						sprite_index = spr_secretportal_spawnopen
						visible = true
			        }
				}
            }
			with (obj_lapportal_editor)
            {
			    if (index == other.index && !place_meeting(x, y, obj_player) && start == 0)
			    {
					other.xx = x
					other.yy = y
					other.xscale = image_xscale
					other.yscale = image_yscale
					other.object = object_index
					visible = true
					active = 1
					image_index = 0
					sprite_index = spr_pizzaportal_appear
			    }
				if (index == other.index && !place_meeting(x, y, obj_player) && start == 1)
			    {
					sprite_index = spr_pizzaportal
			    }
            }
            with (obj_player)
            {
				switch(other.object){
					case obj_door_editor:
						x = (other.xx + 50)
						y = (other.yy + 50)
					break
					case obj_boxofpizza_editor:
						x = (other.xx)
						y = (other.yy - 78 * other.yscale)
					break
					case obj_secretportal_editor:
						x = (other.xx)
						y = (other.yy)
					break
					case obj_hallway_editor:
						x = (other.xx + other.xscale)
						y = (other.yy)
					break
					case obj_lapportal_editor:
						x = (other.xx)
						y = (other.yy)
					break
				}
            }
		}
	}
}
if (fadein == 0)
	fadealpha += 0.1
else if (fadein == 1)
	fadealpha -= 0.1
if instance_exists(obj_player)
{
	with (obj_player1)
	{
		if (other.fadein == 1 && (obj_player1.state == states.door or obj_player1.state == states.victory) && (sprite_index == spr_victory or place_meeting(x, y, obj_door) or place_meeting(x, y, obj_door_editor) or place_meeting(x, y, obj_startgate)))
		{
			state = states.comingoutdoor
			image_index = 0
			if (global.coop == true)
			{
				obj_player2.state = states.comingoutdoor
				obj_player2.image_index = 0
			}
		}
		if (other.fadein == 1 && obj_player1.state == states.door && (obj_player1.sprite_index == spr_downpizzabox or obj_player1.sprite_index == spr_uppizzabox))
		{
			state = states.crouchjump
			if (global.coop == true)
				obj_player2.state = states.crouchjump
		}
	}
	if instance_exists(obj_player2)
	{
		with (obj_player2)
		{
			if (other.fadein == 1 && (obj_player2.state == states.door or obj_player2.state == states.victory) && (place_meeting(x, y, obj_door) or place_meeting(x, y, obj_door_editor) or place_meeting(x, y, obj_startgate)))
			{
				state = states.comingoutdoor
				image_index = 0
				if (global.coop == true)
				{
					obj_player1.state = states.comingoutdoor
					obj_player1.image_index = 0
				}
			}
			if (other.fadein == 1 && obj_player2.state == states.door && (obj_player2.sprite_index == spr_downpizzabox or obj_player2.sprite_index == spr_uppizzabox))
			{
				state = states.crouchjump
				if (global.coop == true)
					obj_player1.state = states.crouchjump
			}
		}
	}
	with (obj_player2)
	{
		if instance_exists(obj_coopplayerfollow)
			state = states.gotoplayer
	}
}
if (fadein == 1 && fadealpha < 0)
	instance_destroy()
