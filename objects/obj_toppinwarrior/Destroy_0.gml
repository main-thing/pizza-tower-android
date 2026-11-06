ADD_OBJECT_EVENT_GML_HOOK;
with (instance_create(playerid.x, playerid.y, obj_shakeanddie))
{
	sprite_index = other.spr_hurt
	image_xscale = other.image_xscale
}
