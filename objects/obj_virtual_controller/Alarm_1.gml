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
if (global.showcollisions){
	with(obj_solid){
		if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock || object_index == obj_mach3solid) {
			visible = true
		}
	}
	with(obj_slope){
		if (object_index == obj_slope){
			visible = true
		}
	}
	with(obj_platform){
		if (object_index == obj_platform) {
			visible = true
		}
	}
	with(obj_enemyspawn){
			visible = true
	}
	with(obj_fakeeditor_trigger_base){
			visible = true
	}
	with(obj_fakeeditor_trigger_door_base){
			visible = true
	}
}
if (!global.showcollisions){
	with(obj_solid){
		if (object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock || object_index == obj_mach3solid) {
			visible = false
		}
	}
	with(obj_slope){
		if (object_index == obj_slope){
			visible = false
		}
	}
	with(obj_platform){
		if (object_index == obj_platform) {
			visible = false
		}
	}
	with(obj_enemyspawn){
			visible = false
	}
	
	with(obj_fakeeditor_trigger_base){
			visible = false
	}
	
	with(obj_fakeeditor_trigger_door_base){
			visible = false
	}
}