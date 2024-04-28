if(!editormode){
	with(obj_fakeeditor_button){
		instance_destroy()
	}
	created_buttons = false
} else {
	if(!created_buttons){
		with(instance_create_depth(68 * 5,0,depth,obj_fakeeditor_button)){
			button_name = "play"
		}
		
		with(instance_create_depth(68 * 4,0,depth,obj_fakeeditor_button)){
			button_name = "copy"
		}
		
		with(instance_create_depth(68 * 3,0,depth,obj_fakeeditor_button)){
			button_name = "delete"
		}
		
		with(instance_create_depth(68 * 2,0,depth,obj_fakeeditor_button)){
			button_name = "edit"
		}
		
		with(instance_create_depth(68,0,depth,obj_fakeeditor_button)){
			button_name = "object"
		}
		
		with(instance_create_depth(0,0,depth,obj_fakeeditor_button)){
			button_name = "grid"
		}
		
		with(instance_create_depth(display_get_gui_width() - sprite_width * 1.5, (display_get_gui_height()) - (sprite_height * 2.5), depth, obj_fakeeditor_button)){
			button_name = "swipe"
		}
		created_buttons = true
	}
	if(swipemode){
		fakeeditor_camera_update()
	}
}

