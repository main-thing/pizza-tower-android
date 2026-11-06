ADD_OBJECT_EVENT_GML_HOOK;
if (global.panic && !shot)
{
	with (instance_create(x + (sprite_width / 2), y + (sprite_height / 2), obj_pineapplemonster))
	{
		monster = other.monster;
		content = other.content;
	}
	shot = true;
}
