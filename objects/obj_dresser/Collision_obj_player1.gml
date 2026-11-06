ADD_OBJECT_EVENT_GML_HOOK;
with (obj_player1)
{
	if key_up2
	{
		if (paletteselect < sprite_get_width(spr_palette) - 1)
			paletteselect += 1
		else
			paletteselect = 1
	}
}
