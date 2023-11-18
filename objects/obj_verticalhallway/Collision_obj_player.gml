if (obj_player1.state == states.debugstate)
	exit;
with (other)
{
	if (!instance_exists(obj_fadeout))
	{
		var _x = (x - other.x)
		var _percentage = (_x / other.sprite_width)
		obj_player1.vertical_x = _percentage
		obj_player2.vertical_x = _percentage
		obj_player1.verticalhall_vsp = vsp
		obj_player2.verticalhall_vsp = vsp
		obj_player1.lastroom = room
		obj_player2.lastroom = room
		obj_player1.targetDoor = other.targetDoor
		obj_player1.targetRoom = other.targetRoom
		if(variable_instance_exists(other,"target_x")){
			obj_player1.target_x = other.target_x
		} else {
			obj_player1.target_x = "null"
		}
		if(variable_instance_exists(other,"target_y")){
			obj_player1.target_y = other.target_y
		} else {
			obj_player1.target_y = "null"
		}
		obj_player1.verticalhallway = 1
		obj_player2.verticalhallway = 1
		obj_player1.vhallwaydirection = sign(other.image_yscale)
		obj_player2.vhallwaydirection = sign(other.image_yscale)
		obj_player1.hallway = 0
		obj_player2.hallway = 0
		if instance_exists(obj_player2)
		{
			obj_player2.targetDoor = other.targetDoor
			obj_player2.targetRoom = other.targetRoom
			if(variable_instance_exists(other,"target_x")){
				obj_player2.target_x = other.target_x
			}  else {
				obj_player2.target_x = "null"
			}
			if(variable_instance_exists(other,"target_y")){
				obj_player2.target_y = other.target_y
			} else {
				obj_player2.target_y = "null"
			}
		}
		other.visited = 1
		scr_soundeffect(sfx_door)
		instance_create(x, y, obj_fadeout)
	}
	y = (other.y + (other.sprite_height - 46))
	x = (other.x + (other.sprite_width * vertical_x))
	var bbox_size = abs((bbox_right - bbox_left))
	x = clamp(x, (other.x + bbox_size), (other.bbox_right - bbox_size))
	y = other.y
	if (state == states.climbwall)
	{
		trace("climbwall verticalhallway")
		verticalbuffer = 10
		verticalstate = states.climbwall
		var i = 0
		x = floor(x)
		while (!(scr_solid((x + xscale), y)))
		{
			x += xscale
			i++
			if (i > room_width)
				break
			else
				continue
		}
	}
}
