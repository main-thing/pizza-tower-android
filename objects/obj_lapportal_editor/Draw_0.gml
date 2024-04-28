if (sprite_index != spr_pizzaportal)
{
	//shader_set(global.Pal_Shader)
	//pal_swap_set(obj_player1.spr_palette, obj_player1.paletteselect, 0)
	draw_self()
	//shader_reset()
}
else{
	draw_self()
	if(!global.oldsprites){
		draw_sprite(spr_lap2warning, 0, x, y + Wave(-5, 5, 0.5, 5));
	}
}
