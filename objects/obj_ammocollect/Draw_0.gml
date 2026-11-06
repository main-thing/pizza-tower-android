ADD_OBJECT_EVENT_GML_HOOK;
if flash
{
	if(global.usehitshaders) {
		shader_set(shd_hit)
		draw_self()
		shader_reset()
	} else {
		draw_self()
	}
}
else
	draw_self()
