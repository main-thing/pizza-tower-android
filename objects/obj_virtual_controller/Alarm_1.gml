if(!global.oldsprites){
	var lay_id = layer_get_id("Backgrounds_scroll")
	var back_id = layer_background_get_id(lay_id)
	if(layer_background_get_sprite(back_id) == bg_secret) {
		layer_background_sprite(back_id, bg_secret_2)
	}
}
if(global.oldsprites){
	var lay_id = layer_get_id("Backgrounds_scroll")
	var back_id = layer_background_get_id(lay_id)
	if(layer_background_get_sprite(back_id) == bg_secret_2) {
		layer_background_sprite(back_id, bg_secret)
	}
}
with(obj_solid){
	if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock || object_index == obj_mach3solid) {
		visible = global.showcollisions
	}
}
with(obj_slope){
	if (object_index == obj_slope){
		visible = global.showcollisions
	}
}
with(obj_platform){
	if (object_index == obj_platform) {
		visible = global.showcollisions
	}
}
with(obj_enemyspawn){
	visible = global.showcollisions
}
with(obj_fakeeditor_trigger_base){
	visible = global.showcollisions
}
with(obj_fakeeditor_trigger_door_base){
	visible = global.showcollisions
}