function cutscene_camera_shake(_a0, _a1)
{
	with (obj_camera)
	{
		shake_mag = _a0
		shake_mag_acc = _a1
	}
	cutscene_end_action()
	exit;
}

