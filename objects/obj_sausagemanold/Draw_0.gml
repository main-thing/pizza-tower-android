if (cigar == 1)
{
	if(global.usepaletteshaders){
		pal_swap_set(spr_sausageman_palette, 1, 0)
		draw_self()
		shader_reset()
	} else {
		draw_self()
	}
}
else
	draw_self()
if flash
{
	if(global.usehitshaders){
		shader_set(shd_hit)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
		shader_reset()
	} else {
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
	}
}
