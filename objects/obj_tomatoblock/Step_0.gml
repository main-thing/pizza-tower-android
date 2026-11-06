ADD_OBJECT_EVENT_GML_HOOK;
var _block = id
with (obj_player)
{
	if (state != states.gameover && place_meeting(x, (y + 1), _block))
	{
		vsp = -11
		_block.image_index = 0
		_block.image_speed = 0.35
	}
}
