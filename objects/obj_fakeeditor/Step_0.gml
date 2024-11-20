if(!editormode){
	with(obj_fakeeditor_button){
		instance_destroy()
	}
	created_buttons = false
} else {
	// change this later
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
		
		with(instance_create_depth(960 - sprite_width * 1.5, 540 - (sprite_height * 2.5), depth, obj_fakeeditor_button)){
			button_name = "swipe"
		}
		created_buttons = true
	}
	if(swipemode){
		fakeeditor_camera_update()
	}
}

