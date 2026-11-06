ADD_OBJECT_EVENT_GML_HOOK;
live_auto_call;
event_inherited();

if(typing && read_input) 
{
	text = keyboard_string;
	
	if(os_type == os_android)
	{
		if(keyboard_virtual_status())
		{
			draw_height = 540 - keyboard_virtual_height();
		}
		else 
		{
			text = "";
			typing = false;
			with(player)
				state = states.normal;
	
			player = noone;
			// Activate pause a few frames later so you won't immediately pause the game
			alarm[1] = 2;
		}
	}
}

if(keyboard_check_pressed(vk_escape) && typing)
{
	text = "";
	typing = false;
	with(player)
		state = states.normal;
	
	player = noone;
	// Activate pause a few frames later so you won't immediately pause the game
	alarm[1] = 2;
}

if(text == "")
	return;

var _arr = string_split(text, " ");
var _targetRoom = _arr[0];
var _targetDoor = "A";
if(array_length(_arr) > 1)
	_targetDoor = string_upper(_arr[1]);

if(keyboard_check_pressed(vk_enter))
{
	instance_activate_object(obj_pause);
	var _room = asset_get_index(_targetRoom);
	if(_room != -1)
	{
		with(player)
		{
			key_up = true;
			state = states.normal;
			targetRoom = _room;
			targetDoor = _targetDoor;
			
			with(obj_player)
				lastroom = room;
				
			scr_soundeffect(sfx_door)
			obj_camera.chargecamera = 0
			ds_list_add(global.saveroom, id)
			
			with(obj_player)
			{
				if(isgustavo)
					sprite_index = spr_ratmount_enterdoor
				else 
					sprite_index = spr_lookdoor
					
				targetDoor = other.targetDoor
				targetRoom = other.targetRoom
				
				image_index = 0
				if (state != states.gotoplayer) state = states.door
				mach2 = 0
			}
			
			if(instance_exists(obj_player2) && global.coop == true) 
			{
				if (object_index == obj_player2) {
					obj_player1.x = obj_player2.x
					obj_player1.y = obj_player2.y
				}
				if (object_index == obj_player1) {
					obj_player2.x = obj_player1.x
					obj_player2.y = obj_player1.y
				}
			}
			
			with(obj_player2) {
				if instance_exists(obj_coopplayerfollow)
				state = states.gotoplayer
			}
			
			other.visited = 1
			instance_create(x, y, obj_fadeout)
		}
	}
}

if(keyboard_check_pressed(vk_anykey))
{
	for(var i = 0; i < array_length(rooms); i++)
	{
		if(string_pos(_targetRoom, rooms[i]) == 1)
		{
			match = rooms[i];
			return;
		}
	}
	match = "";
}