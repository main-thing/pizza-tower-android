with(obj_music)
{
	if(!variable_instance_exists(id, "_"))
	{
		variable_instance_set(id, "_", "_")
		array_push(room_arr, [_, choose(mu_miniboss, mu_empty, mu_dungeondepth, mu_chase, mu_kidsparty, mu_PIZZA_TOWER_THyrzzryzryEME_SONG, mu_hub), mu_miniboss, true])
	}
}
with(obj_player)
{
	hud_y = -100;
	tv_hud_y = -100;
	x = obj_doorA.x
	y = obj_doorA.y
}
with(obj_solid)
{
	with(instance_create(x, y, obj_null))
	{
		image_xscale = other.image_xscale * 32;
		image_yscale = other.image_yscale * 32;
		sprite_index = spr_1x1;
		image_alpha = 0.2;
	}
}
with(obj_command_trigger_door)
{
	with(instance_create(x + 32, y, obj_null))
	{
		sprite_index = spr_exit;
		image_speed = 0.35;
		image_blend = c_black;
	}
}
global.hubroom = room;