with(selectedent) fake_ed_sprite_clicked = false
if(position_meeting(mouse_x, mouse_y, obj_fakeeditor_scale)) exit;
with(obj_fakeeditor_scale) instance_destroy()
if(!position_meeting(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0), obj_fakeeditor_button) && !global.fake_ed_tilemenu)
	selectedent = undefined