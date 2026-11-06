ADD_OBJECT_EVENT_GML_HOOK;
event_inherited()
dmg = 30
spd = 25
parryable = 1
function player_hurt(_a0, _a1)
{
	if (!collisioned)
	{
		var prevstate = _a1.state
		SUPER_player_hurt(_a0, _a1)
		_a1.xscale = (-image_xscale)
		_a1.hitxscale = (-image_xscale)
		if (prevstate == states.boss_superattack)
		{
			_a1.hithsp = 0
			_a1.hitvsp = 0
			_a1.hitstate = states.boss_superattack
			with (obj_vigilanteboss)
				duel_buffer = (duel_max + irandom(duel_random))
		}
	}
	exit;
}

function parry()
{
	var prevparried = parried
	SUPER_parry()
	if (prevparried != parried)
	{
		image_xscale *= -1
		dmg = 100
		spd = 30
	}
	exit;
}

