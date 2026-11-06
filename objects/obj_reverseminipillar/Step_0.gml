ADD_OBJECT_EVENT_GML_HOOK;
if (global.panic == false)
{
	x = xstart
	y = ystart
	sprite_index = (oldblock ? spr_enemyblock1 : spr_minipillarwoke)
	mask_index = spr_minipillarwoke
}
else
{
	if !oldblock
	{
		x = -100
		y = -100
		sprite_index = spr_minipillarsleep
	}
	else
	{
	    with (instance_create(x, y, obj_sausageman_dead))
	    {
	        hsp = 0;
	        vsp = -10;
			sprite_index = spr_enemyblockdead
			image_xscale = 1
	    }
		instance_destroy();
	}
}
