function scr_loophallway(_a0)
{
	if _a0.start
	{
		var yy = (y - _a0.y)
		var _per = (yy / _a0.sprite_height)
		with (obj_loophallway)
		{
			if (id != _a0.id && (!start))
			{
				other.x = (x + (sprite_width / 2))
				other.y = ((y + (sprite_height * _per)) - 1)
				if (other.object_index == obj_vigilanteboss)
					other.oldtargetspot = -4
			}
		}
	}
}
