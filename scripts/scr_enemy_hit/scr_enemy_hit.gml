function scr_enemy_hit()
{
	live_auto_call;
	x = (hitX + random_range(-6, 6))
	y = (hitY + random_range(-6, 6))
	hitLag--
	sprite_index = stunfallspr
	if (hitLag <= 0)
	{
		x = hitX
		y = hitY
		var _player = -4
		// do we just set this? (not set untill it's grabbed)
		if (grabbedby == 1)
			_player = obj_player1
		else
			_player = obj_player2
		
		var _thrower = obj_player1; // TODO: replace this var with the proper id
		if (_thrower.tauntstoredstate == states.mach2 or _thrower.tauntstoredstate == states.tumble or _thrower.state == states.mach2 or _thrower.state == states.tumble)
			thrown = false
		else
			thrown = true
		vsp = hitvsp
		hsp = hithsp
		global.hit += 1
		if (other.object_index == obj_pizzaball)
			global.golfhit += 1
		global.combotime = 60
		global.heattime = 60
		alarm[1] = 5
		var _hp = 0
		if ((global.attackstyle == 3 or global.attackstyle == 0) && (!global.kungfu))
			_hp = -1
		if ((((!elite) && (hp <= _hp or mach3destroy)) or (elite && elitehit <= 0 && mach3destroy)) && object_get_parent(object_index) != 16 && destroyable)
		{
			instance_destroy()
			instance_create(x, y, obj_genericpoofeffect)
		}
		stunned = 200
		state = states.stun
	}
	exit;
}

