ADD_OBJECT_EVENT_GML_HOOK;
player = obj_player1.id
pause = 0
var i = 0
color = make_color_rgb(121, 103, 151)
selected = 0
stickpressed = 0
image_speed = 0
depth = -998
cursor_index = 0
cursor_sprite_number = sprite_get_number(spr_cursor)
cursor_sprite_height = sprite_get_height(spr_cursor)
peppino_sprite = player.spr_idle
peppino_sprite_number = sprite_get_number(peppino_sprite)
peppino_index = 0
toppin_sprite[0] = spr_toppincheese
toppin_sprite[1] = spr_toppinpineapple
toppin_sprite[2] = spr_toppinsausage
toppin_sprite[3] = spr_toppinshroom
toppin_sprite[4] = spr_toppintomato

step_sound = sfx_step;
return_sound = sfx_enemyprojectile;
draw_y = 96;
draw_ypad = 48;

// Everytime this is run, a new bunch of function references are created.
// Do they get destroyed? no idea cause this is a new runner.
// I do remember the old runner not destroying these.
pause_menu = 
[
	new pause_option("RESUME", player.spr_idle, function()
	{
		if (!instance_exists(obj_pausefadeout))
			instance_create(x, y, obj_pausefadeout)		
	}),
	new pause_option("OPTIONS", player.spr_phoneidle, function()
	{
		scr_soundeffect(return_sound)
		with (instance_create(x, y, obj_option))
			depth = (other.depth - 1)
	}),
	new pause_option("RESTART LEVEL", player.spr_panic, function()
	{
		if (!global.snickchallenge)
		{
			var rm = noone;
			rm = global.leveltorestart
			ds_list_clear(global.saveroom)
			ds_list_clear(global.baddieroom)
			if (rm != noone && rm != -1)
			{
				instance_activate_all()
				global.levelreset = 0
				scr_playerreset()
				global.levelreset = 1
				scr_room_goto(rm)
				pause = 0
				obj_player1.targetDoor = "A"
				if instance_exists(obj_player2)
					obj_player2.targetDoor = "A"
			}
			else
				scr_soundeffect(return_sound)
		}
	}),
	new pause_option("EXIT LEVEL", player.spr_winding, function()
	{
		if (room == hub_room1 or room == characterselect or room == cowboytask or room == Titlescreen or room == Scootertransition or room == rm_levelselect or string_copy(room_get_name(room), 1, 3) == "hub")
		{
			pause = 0
			instance_activate_all()
			room = Realtitlescreen
			with (obj_player1)
			{
				character = "P"
				scr_characterspr()
			}
			scr_playerreset()
			obj_player1.state = states.titlescreen
			obj_player2.state = states.titlescreen
			obj_player1.targetDoor = "A"
			if instance_exists(obj_player2)
				obj_player2.targetDoor = "A"
			global.cowboyhat = 0
			global.coop = false
		}
		else
		{
			pause = 0
			instance_activate_all()
			scr_playerreset()
			global.levelreset = 1
			obj_player1.targetDoor = "D"
			if instance_exists(obj_player2)
				obj_player2.targetDoor = "D"
			room = global.hubroom
			alarm[0] = 2
		}
	})
];

for (i = 0; i < array_length(toppin_sprite); i++)
{
	toppin_number[i] = sprite_get_number(toppin_sprite[i])
	toppin_index[i] = 0
	toppin_has[i] = 0
}

spr_palette = player.spr_palette
paletteselect = 0

with(obj_player1)
{
	if(!variable_instance_exists(self, "key_start"))
		scr_getinput()
}
with(obj_player2)
{
	if(!variable_instance_exists(self, "key_start"))
		scr_getinput2()
}