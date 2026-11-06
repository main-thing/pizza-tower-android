ADD_OBJECT_EVENT_GML_HOOK;
if (floor(image_index) == 2 && canthrowbomb == 1)
{
	with (instance_create((x + (image_xscale * 10)), (y - 20), obj_pizzagoblinbomb))
	{
		old = 1
		countdown = 120
		bomblit_spr = spr_bomblit1
		sprite_index = spr_bomb1
		mask_index = spr_bomb1
		hsp = (other.image_xscale * 4)
		vsp = -5
	}
	canthrowbomb = 0
}
if (floor(image_index) == (image_number - 1) && canthrowbomb == 0)
	image_speed = 0
else
	image_speed = 0.35
if ((!instance_exists(obj_pizzagoblinbomb)) && obj_player.state != states.bombpep)
	canthrowbomb = 1
else
	canthrowbomb = 0
