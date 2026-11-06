ADD_OBJECT_EVENT_GML_HOOK;
player_input_device[0] = -2
player_input_device[1] = -2
device_selected[0] = 0
device_selected[1] = 0
press_start = 0
deactivated = 0
device_to_reconnect = 0
prevstate[0] = states.titlescreen
prevstate[1] = states.titlescreen
vibration[0][0] = 0
vibration[0][1] = 0
vibration[0][2] = 0
vibration[1][0] = 0
vibration[1][1] = 0
vibration[1][2] = 0

setVibration = function(_a0, _a1, _a2, _a3)
{
	vibration[_a0][0] = _a1
	vibration[_a0][1] = _a2
	if (_a3 != undefined)
		vibration[_a0][2] = _a3
	exit;
}

function CheckUsedIndex(_a0)
{
	for (var _x = 0; _x < 2; _x++)
	{
		if (player_input_device[_x] == _a0)
			return true;
	}
	return false;
}

