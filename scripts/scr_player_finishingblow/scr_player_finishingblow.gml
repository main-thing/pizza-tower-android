function scr_player_finishingblow()
{
	hsp = movespeed
	move = (key_right + key_left)
	if (floor(image_index) < 4 && sprite_index != spr_swingdingend)
		movespeed = Approach(movespeed, 0, 0.25)
	else
		movespeed = Approach(movespeed, (move * 10), 0.5)
	if (floor(image_index) == (image_number - 1))
	{
		movespeed = abs(movespeed)
		state = states.normal
	}
	if (floor(image_index) == 0 && (!instance_exists(obj_swordhitbox)))
	{
		GamepadSetVibration((object_index == obj_player1 ? 0 : 1), 0.8, 0.8, 0.65)
		scr_soundeffect(sfx_punch)
		scr_soundeffect(sfx_killingblow)
		with (instance_create(x, y, obj_swordhitbox))
			playerid = other.object_index
	}
	image_speed = 0.4
	landAnim = 0
	if ((!instance_exists(obj_dashcloud2)) && grounded && movespeed > 3)
	{
		with (instance_create(x, y, obj_dashcloud2))
			image_xscale = other.xscale
	}
	if (punch_afterimage > 0)
		punch_afterimage--
	else
	{
		punch_afterimage = 5
		create_blue_afterimage(x, y, sprite_index, image_index, xscale)
	}
	exit;
}

