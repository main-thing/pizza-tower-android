function scr_outofbounds(){
	x = roomstartx
	y = roomstarty
	visible = true
	with (obj_camera)
	{
		shake_mag = 3
		shake_mag_acc = (3 / room_speed)
	}
	if (state == states.ghostpossess)
	{
		state = states.ghost
		sprite_index = spr_ghostidle
	}
	state = states.actor
	visible = false
	hsp = 0
	vsp = 0
	scr_soundeffect(sfx_groundpound)
	with (instance_create(x, (y + 540), obj_technicaldifficulty))
	{
		playerid = other.id
		if (!other.isgustavo)
			sprite = choose(spr_technicaldifficulty1, spr_technicaldifficulty2, spr_technicaldifficulty3)
		else
			sprite = spr_technicaldifficulty4
	}
	with (obj_ghostfollow)
	{
		x = xstart
		y = ystart
	}
	vsp = 10
}