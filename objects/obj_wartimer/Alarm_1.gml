ADD_OBJECT_EVENT_GML_HOOK;
if (room != rank_room)
{
	instance_destroy(obj_fadeout)
	with (obj_player)
	{
		targetDoor = "A"
		room = timesuproom
		state = states.timesup
		sprite_index = spr_Timesup
		image_index = 0
		audio_stop_all()
		scr_soundeffect(global.oldsprites ? mu_timesup : mu_fatass);

	}
	instance_create(0, 0, obj_timesupwar)
	instance_destroy()
}
