ADD_OBJECT_EVENT_GML_HOOK;
dragging = true
object_xscale = object_id.image_xscale
object_yscale = object_id.image_yscale
old_click_x = x - device_mouse_x_to_gui(0)
old_click_y = y - device_mouse_y_to_gui(0)
click_x = x
click_y = y
if(camera_trigger)
{
	object_xscale = object_id.camera_width
	object_yscale = object_id.camera_height
}