if use_palette
{
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
		pal_swap_set(spr_palette, paletteselect, 0)
		draw_self()
		shader_reset()
	} else {
		draw_self()
	}
}
else
	draw_self()
