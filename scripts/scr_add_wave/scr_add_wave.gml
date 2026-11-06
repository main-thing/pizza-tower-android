function scr_add_wave(_a0, _a1, _a2, _a3, _a4)
{
	var _wave = _a0
	var _enemynumber = _a1
	var _obj = _a2
	var _random = _a3
	var _spawnpoint = _a4
	baddie_arr[_wave][_enemynumber] = _obj
	baddie_random[_wave][_enemynumber] = _random
	if (!_random)
		baddie_spawnpoint[_wave][_enemynumber] = _spawnpoint
	exit;
}

