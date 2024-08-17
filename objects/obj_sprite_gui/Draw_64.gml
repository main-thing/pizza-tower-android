if(is_numeric(paletteselect)){
	if(global.usepaletteshaders){
		shader_set(global.Pal_Shader)
		pal_swap_set(spr_palette, paletteselect, 0)
	}
}
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if(is_numeric(paletteselect)){
	shader_reset() // ???
}