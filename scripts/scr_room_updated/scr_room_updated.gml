function scr_room_updated(_a0)
{
	if (_a0 == room or (room == live_blank_room && live_live_room == _a0))
	{
		with (obj_player)
		{
			hallway = savedhallway
			hallwaydirection = savedhallwaydirection
			vhallwaydirection = savedvhallwaydirection
			verticalhallway = savedverticalhallway
		}
		room_goto_live(_a0)
	}
	exit;
}

