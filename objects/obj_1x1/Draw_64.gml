if(gui)
{
	if(outline){
		draw_rectangle(x, y, x + image_xscale, y + image_yscale, true)
	} else {
		draw_self()
	}
}