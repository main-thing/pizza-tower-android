if (falling == 1 && vsp > 0)
{
	hit = 1
	instance_create(x, y, obj_stompeffect)
	other.image_index = 0
	other.state = states.stunned
	other.sprite_index = other.spr_stunned
	vsp = -5
	falling = 0
	with (obj_camera)
	{
		shake_mag = 10
		shake_mag_acc = (30 / room_speed)
	}
}
