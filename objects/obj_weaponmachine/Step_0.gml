ADD_OBJECT_EVENT_GML_HOOK;
if (place_meeting(x, ((y + obj_player.vsp) + 1), obj_player) && obj_player.vsp < 0 && global.pizzacoin >= 4 && image_speed == 0)
{
	scr_soundeffect(sfx_buyweapon)
	global.pizzacoin -= 4
	image_speed = 0.35
	if (global.snickchallenge == 1)
		global.SAGEshotgunsnicknumber += 1
}
