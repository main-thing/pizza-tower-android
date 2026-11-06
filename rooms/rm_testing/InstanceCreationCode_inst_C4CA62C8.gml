func = function(_a0)
{
	if ((!active) && _a0.state == states.backbreaker)
	{
		active = 1
		obj_secretmanager.totems++
	}
	exit;
}

stepfunc = function()
{
	if active
	{
		with (instance_place(x, y, obj_totem))
			sprite_index = spr_totemcheese_pep
	}
	exit;
}

visible = false
