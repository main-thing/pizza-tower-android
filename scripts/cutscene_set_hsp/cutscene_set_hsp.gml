function cutscene_set_hsp(_a0, _a1)
{
	var _obj = _a0
	var _hsp = _a1
	with (_obj)
		hsp = _hsp
	cutscene_end_action()
	exit;
}

function cutscene_set_vsp(_a0, _a1)
{
	with (_a0)
		vsp = _a1
	cutscene_end_action()
	exit;
}

