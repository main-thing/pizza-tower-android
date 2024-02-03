/// @description nsp_execute_script(Script name, Argument array)
/// @param Script name
/// @param  Argument array
function nsp_execute_script(argument0, argument1) {
	/*
	Underlying NSP script. Can be changed by user (read NSP Documentation for more info).
	*/
	var nspToken=global.nspToken;
	var rv,a;

	//See if any arguments are strings and convert if necessary:
	if is_array(argument1) {

	 for(var i=0; i<array_length_1d(argument1); i+=1) begin
 
	  if(is_string(argument1[i])) {
	   if(nsp_is_string(argument1[i]))
	    argument1[i] = string_copy(argument1[i],2,string_length(argument1[i])-2)
	   }
 
	 end;

	 }
 
	//PART 1 (Built-in scripts): ------------------------------------------------------------------------------------------
	switch (argument0) begin

	 case "show_message":
		show_message_async(argument1[0]);
	 return 0;

	 case "show_message_async":
		show_message_async(argument1[0]);
	 return 0;

	 case "get_string":
		get_string_async(argument1[0],argument1[1]);
	 return 0;

	 case "get_string_async":
		get_string_async(argument1[0],argument1[1]);
	 return 0;
	  
	 case "sqr":
		return sqr(argument1[0]);
  
	 case "sqrt":
		return sqrt(argument1[0]);
		
	 //=========instance functions=========//
	 
	 case "instance_create":
		return instance_create_depth(argument1[0],argument1[1],object_get_depth(argument1[2]),argument1[2]);
	  
	 case "instance_create_unique":
		return instance_create_unique(argument1[0],argument1[1],argument1[2]);
	 
	 case "instance_create_depth":
	 return instance_create_depth(argument1[0],argument1[1],argument1[2],argument1[3]);
	  
	 case "instance_create_layer":
	 return	instance_create_layer(argument1[0],argument1[1],argument1[2],argument1[3]);
	  
	 case "instance_destroy":
		if(is_array(argument1)){
			if(array_length(argument1) < 2){
				instance_destroy(argument1[0]);
			} else {
				instance_destroy(argument1[0],argument1[1]);
			}
		} else {
			instance_destroy();
		}
	  return 0;
	  
	 case "instance_exists":
		return instance_exists(argument1[0]); 
	  
	 case "instance_change":
		instance_change(argument1[0],argument1[1]);
	 return 0;
	  
	 case "instance_copy":
		instance_copy(argument1[0]);
	 return 0;
	  
	 case "instance_number":
		return instance_number(argument1[0]);
	  
	 case "instance_find":
		return instance_find(argument1[0],argument1[1]);
	  
	 case "instance_furthest":
		return instance_furthest(argument1[0],argument1[1],argument1[2]);
	  
	 case "instance_id_get":
		return instance_id_get(argument1[0]);
	  
	 case "instance_nearest":
		return instance_nearest(argument1[0],argument1[1],argument1[2]);
	  
	 case "instance_place":
		return instance_place(argument1[0],argument1[1],argument1[2]);
	  
	 case "instance_place_list":
		return instance_place_list(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	  
	 case "instance_position":
		return instance_position(argument1[0],argument1[1],argument1[2]);
	  
	 case "instance_position_list":
		return instance_position_list(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
		
	 case "variable_instance_set":
		variable_instance_set(argument1[0],argument1[1],argument1[2]);
	 return 0;
	 
	 case "variable_instance_get":
	  return variable_instance_get(argument1[0],argument1[1]);
		
	 case "variable_instance_get_names":
	  return variable_instance_get_names(argument1[0]);
		
	 case "variable_instance_exists":
	  return variable_instance_exists(argument1[0],argument1[1]);
	 
	 //====================================//
	 
	 //==========global functions==========//
		
	 case "variable_global_set":
		variable_global_set(argument1[0],argument1[1]);
	 return 0;
	 
	 case "variable_global_get":
		return variable_global_get(argument1[0]);
		
	 case "variable_global_exists":
		return variable_global_exists(argument1[0]);
	 
	 //====================================//
  
	 //===========room functions===========//
	 
	 case "room_goto":
		room_goto(argument1[0]);
	 return 0;
	  
	 case "room_goto_next":
		room_goto_next();
	 return 0;
	  
	 case "room_goto_previous":
		room_goto_previous();
	 return 0;
	  
	 case "room_exists":
		return room_exists(argument1[0]);
	  
	 case "room_get_name":
		return room_get_name(argument1[0]);
	  
	 case "room_restart":
		room_restart()
	 return 0;
	  
	 case "room_set_camera":
		room_set_camera(argument1[0],argument1[1],argument1[2]);
	 return 0;
	  
	 case "room_set_height":
		room_set_height(argument1[0],argument1[1]);
	 return 0;
	  
	 case "room_set_width":
		room_set_width(argument1[0],argument1[1]);
	 return 0;
	  
	 case "room_duplicate":
		return room_duplicate(argument1[0]);
	  
	 case "room_assign":
		return room_assign(argument1[0],argument1[1]);
	  
	 case "room_add":
		return room_add();
	  
	 //====================================//
  
	 //===========draw functions===========//
	  
	 case "draw_self":
		draw_self();
	 return 0;
	  
	 case "draw_arrow":
		draw_arrow(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_button":
		draw_button(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_circle":
		draw_circle(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	  
	 case "draw_circle_color":
		draw_circle_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 return 0;
	  
	 case "draw_clear":
	  draw_clear(argument1[0]);
	 return 0;
	  
	 case "draw_clear_alpha":
		draw_clear_alpha(argument1[0],argument1[1]);
	 return 0;
	  
	 case "draw_ellipse":
		draw_ellipse(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_ellipse_color":
		draw_ellipse_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6]);
	 return 0;
	  
	 case "draw_enable_drawevent":
		draw_enable_drawevent(argument1[0]);
	 return 0;
	  
	 case "draw_flush":
		draw_flush();
	 return 0;
	  
	 case "draw_healthbar":
		draw_healthbar(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10]);
	 return 0;
	  
	 case "draw_highscore":
		draw_highscore(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	  
	 case "draw_line":
		draw_line(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	  
	 case "draw_line_color":
		draw_line_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 return 0;
	  
	 case "draw_line_width":
		draw_line_width(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_line_width_color":
		draw_line_width_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6]);
	 return 0;
	  
	 case "draw_point":
		draw_point(argument1[0],argument1[1]);
	 return 0;
	  
	 case "draw_point_color":
		draw_point_color(argument1[0],argument1[1],argument1[2]);
	 return 0;
	  
	 case "draw_rectangle":
		draw_rectangle(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_rectangle_color":
		draw_rectangle_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8]);
	 return 0;
	  
	 case "draw_roundrect":
		draw_roundrect(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4]);
	 return 0;
	  
	 case "draw_roundrect_color":
		draw_roundrect_color(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6]);
	 return 0;
	  
	 case "draw_roundrect_ext":
		draw_roundrect_ext(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6]);
	 return 0;
	  
	 case "draw_sprite":
		draw_sprite(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	  
	 case "draw_sprite_ext":
		draw_sprite_ext(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8]);
	 return 0;
	  
	 case "draw_sprite_general":
		draw_sprite_general(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11],argument1[12],argument1[13],argument1[14],argument1[15]);
	 return 0;
	  
	 case "draw_sprite_part":
		draw_sprite_part(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7]);
	 return 0;
	  
	 case "draw_sprite_part_ext":
		draw_sprite_part_ext(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10],argument1[11]);
	 return 0;
	  
	 case "draw_sprite_pos":
		draw_sprite_pos(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7],argument1[8],argument1[9],argument1[10]);
	 return 0;
	  
	 case "draw_sprite_stretched":
		draw_sprite_stretched(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 return 0;
	  
	 case "draw_sprite_tiled":
		draw_sprite_tiled(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	  
	 case "draw_sprite_tiled_ext":
		draw_sprite_tiled_ext(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7]);
	 return 0;
	  
	 case "draw_set_alpha":
		draw_set_alpha(argument1[0]);
	  
	 case "draw_set_color":
		draw_set_color(argument1[0]);
	 return 0;
	  
	 case "draw_set_font":
		draw_set_font(argument1[0]);
	 return 0;
	  
	 case "draw_set_halign":
		draw_set_halign(argument1[0]);
	 return 0;
	  
	 case "draw_set_lighting":
		draw_set_lighting(argument1[0]);
	 return 0;
	  
	 case "draw_set_valign":
		draw_set_valign(argument1[0]);
	 return 0;
	  
	 case "draw_set_circle_precision":
		draw_set_circle_precision(argument1[0]);
	 return 0;
	  
	 case "draw_get_alpha":
		return draw_get_alpha();
	  
	 case "draw_get_color":
		return draw_get_color();
	  
	 case "draw_get_font":
		return draw_get_font();
	  
	 case "draw_get_halign":
		return draw_get_halign();
	  
	 case "draw_get_lighting":
		return draw_get_lighting();
	  
	 case "draw_get_valign":
		return draw_get_valign();
	  
	 case "draw_getpixel":
		return draw_getpixel(argument1[0],argument1[1]);
	  
	 case "draw_getpixel_ext":
		return draw_getpixel_ext(argument1[0],argument1[1]);
	 
	 //====================================//
	 
	 //=========keyboard functions=========//
	  
	 case "keyboard_check":
		return keyboard_check(argument1[0]);
	  
	 case "keyboard_check_direct":
		return keyboard_check_direct(argument1[0]);
	  
	 case "keyboard_check_pressed":
		return keyboard_check_pressed(argument1[0]);
	  
	 case "keyboard_check_released":
		return keyboard_check_released(argument1[0]);
	  
	 case "keyboard_clear":
		return keyboard_clear(argument1[0]);
	  
	 case "keyboard_get_map":
		return keyboard_get_map(argument1[0]);
	  
	 case "keyboard_get_numlock":
		return keyboard_get_numlock();
	  
	 case "keyboard_key_press":
		keyboard_key_press(argument1[0]);
	 return 0;
	  
	 case "keyboard_key_release":
		keyboard_key_release(argument1[0]);
	 return 0;
	  
	 case "keyboard_set_map":
		keyboard_set_map(argument1[0],argument1[1]);
	 return 0;
	  
	 case "keyboard_set_numlock":
		keyboard_set_numlock(argument1[0]);
	 return 0;
	  
	 case "keyboard_unset_map":
		keyboard_unset_map()
	 return 0;
	  
	 case "keyboard_virtual_height":
		return keyboard_virtual_height();
	  
	 case "keyboard_virtual_status":
		return keyboard_virtual_status();
		
	 case "keyboard_virtual_show":
		keyboard_virtual_show(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
		
	 case "keyboard_virtual_hide":
		keyboard_virtual_hide()
	 return 0;
	 
	 
	 //====================================//
	 
	 //===========layer functions==========//
	 
	 case "layer_add_instance":
		layer_add_instance(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_alpha":
		layer_background_alpha(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_blend":
		layer_background_blend(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_change":
		layer_background_change(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_create":
		layer_background_create(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_destroy":
		layer_background_destroy(argument1[0]);
	 return 0;
	 
	 case "layer_background_exists":
		return layer_background_exists(argument1[0],argument1[1]);
	 
	 case "layer_background_get_alpha":
		return layer_background_get_alpha(argument1[0]);
	 
	 case "layer_background_get_blend":
		return layer_background_get_blend(argument1[0]);
	 
	 case "layer_background_get_htiled":
		return layer_background_get_htiled(argument1[0]);
	 
	 case "layer_background_get_id":
		return layer_background_get_id(argument1[0]);
	 
	 case "layer_background_get_index":
		return layer_background_get_index(argument1[0]);
	 
	 case "layer_background_get_speed":
		return layer_background_get_speed(argument1[0]);
	 
	 case "layer_background_get_sprite":
		return layer_background_get_sprite(argument1[0]);
	 
	 case "layer_background_get_stretch":
		return layer_background_get_stretch(argument1[0]);
	 
	 case "layer_background_get_visible":
		return layer_background_get_visible(argument1[0]);
	 
	 case "layer_background_get_vtiled":
		return layer_background_get_vtiled(argument1[0]);
	 
	 case "layer_background_get_xscale":
		return layer_background_get_xscale(argument1[0]);
	 
	 case "layer_background_get_yscale":
		return layer_background_get_yscale(argument1[0]);
	 
	 case "layer_background_htiled":
		layer_background_htiled(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_index":
		layer_background_index(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_speed":
		layer_background_speed(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_sprite":
		layer_background_sprite(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_stretch":
		layer_background_stretch(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_visible":
		layer_background_visible(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_vtiled":
		layer_background_vtiled(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_xscale":
		layer_background_xscale(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_background_yscale":
		layer_background_yscale(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_clear_fx":
		layer_clear_fx(argument1[0]);
	 return 0;
	 
	 case "layer_create":
		if(is_array(argument1)){
			if(array_length(argument1) < 2){
				layer_create(argument1[0]);
			} else {
				layer_create(argument1[0],argument1[1]);
			}
		}
	 return 0;
	 
	 case "layer_depth":
		layer_depth(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_destroy_instances":
		layer_destroy_instances(argument1[0]);
	 return 0;
	 
	 case "layer_element_move":
		layer_element_move(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_enable_fx":
		layer_enable_fx(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_exists":
		return layer_exists(argument1[0]);
	 
	 case "layer_force_draw_depth":
		layer_force_draw_depth(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_fx_is_enabled":
		layer_fx_is_enabled(argument1[0]);
	 return 0;
	 
	 case "layer_get_all":
		return layer_get_all();
	 
	 case "layer_get_all_elements":
		return layer_get_all_elements(argument1[0]);
	 
	 case "layer_get_depth":
		return layer_get_depth(argument1[0]);
	 
	 case "layer_get_element_layer":
		return layer_get_element_layer(argument1[0]);
	 
	 case "layer_get_element_type":
		return layer_get_element_type(argument1[0]);
	 
	 case "layer_get_forced_depth":
		return layer_get_forced_depth();
	 
	 case "layer_get_id":
		return layer_get_id(argument1[0]);
	 
	 case "layer_get_id_at_depth":
		return layer_get_id_at_depth(argument1[0]);
	 
	 case "layer_get_name":
		return layer_get_name(argument1[0]);
	 
	 case "layer_get_script_begin":
		return layer_get_script_begin(argument1[0]);
	 
	 case "layer_get_script_end":
		return layer_get_script_end(argument1[0]);
	 
	 case "layer_get_shader":
		return layer_get_shader(argument1[0]);
	 
	 case "layer_get_target_room":
		return layer_get_target_room();
	 
	 case "layer_get_visible":
		return layer_get_visible(argument1[0]);
	 
	 case "layer_get_vspeed":
		return layer_get_vspeed(argument1[0]);
	 
	 case "layer_get_x":
		return layer_get_x(argument1[0]);
	 
	 case "layer_get_y":
		return layer_get_y(argument1[0]);
	 
	 case "layer_has_instance":
		return layer_has_instance(argument1[0],argument1[1]);
	 
	 case "layer_hspeed":
		layer_hspeed(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_instance_get_instance":
		return layer_instance_get_instance(argument1[0]);
	 
	 case "layer_reset_target_room":
		layer_reset_target_room();
	 return 0; 
	 
	 case "layer_set_target_room":
		layer_set_target_room(argument1[0]);
	 return 0;
	 
	 case "layer_set_fx":
		layer_set_fx(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_set_visible":
		layer_set_visible(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_shader":
		layer_shader(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_alpha":
		layer_sprite_alpha(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_angle":
		layer_sprite_angle(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_blend":
		layer_sprite_blend(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_change":
		layer_sprite_change(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_create":
		layer_sprite_create(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	 
	 case "layer_sprite_destroy":
		layer_sprite_destroy(argument1[0]);
	 return 0;
	 
	 case "layer_sprite_exists":
		return layer_sprite_exists(argument1[0],argument1[1]);
	 
	 case "layer_sprite_get_alpha":
		return layer_sprite_get_alpha(argument1[0]);
	 
	 case "layer_sprite_get_angle":
		return layer_sprite_get_angle(argument1[0]);
	 
	 case "layer_sprite_get_blend":
		return layer_sprite_get_blend(argument1[0]);
	 
	 case "layer_sprite_get_id":
		return layer_sprite_get_id(argument1[0],argument1[1]);
	 
	 case "layer_sprite_get_index":
		return layer_sprite_get_index(argument1[0]);
	 
	 case "layer_sprite_get_speed":
		return layer_sprite_get_speed(argument1[0]);
	 
	 case "layer_sprite_get_x":
		return layer_sprite_get_x(argument1[0]);
	 
	 case "layer_sprite_get_xscale":
		return layer_sprite_get_xscale(argument1[0]);
	 
	 case "layer_sprite_get_y":
		return layer_sprite_get_y(argument1[0]);
	 
	 case "layer_sprite_get_yscale":
		return layer_sprite_get_yscale(argument1[0]);
	 
	 case "layer_sprite_index":
		layer_sprite_index(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_speed":
		layer_sprite_speed(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_x":
		layer_sprite_x(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_xscale":
		layer_sprite_xscale(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_y":
		layer_sprite_y(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_sprite_yscale":
		layer_sprite_yscale(argument1[0],argument1[1]);
	 return 0;
	 
	 case "layer_tilemap_create":
		return layer_tilemap_create(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 
	 case "layer_tilemap_destroy":
		layer_tilemap_destroy(argument1[0]);
	 return 0;
	 
	 case "layer_tilemap_exists":
		return layer_tilemap_exists(argument1[0],argument1[1]);
	 
	 case "layer_tilemap_get_id":
		return layer_tilemap_get_id(argument1[0]);
	 
	 //====================================//
	 
	 //==========tilemap functions=========//
	 
	 case "tilemap_clear":
		return tilemap_clear(argument1[0],argument1[1]);
	 
	 case "tilemap_get":
		return tilemap_get(argument1[0],argument1[1],argument1[2]);
	 
	 case "tilemap_get_at_pixel":
		return tilemap_get_at_pixel(argument1[0],argument1[1],argument1[2]);
	 
	 case "tilemap_get_cell_x_at_pixel":
		return tilemap_get_cell_x_at_pixel(argument1[0],argument1[1],argument1[2]);
	 
	 case "tilemap_get_cell_y_at_pixel":
		return tilemap_get_cell_y_at_pixel(argument1[0],argument1[1],argument1[2]);
	 
	 case "tilemap_get_frame":
		return tilemap_get_frame(argument1[0]);
	 
	 case "tilemap_get_global_mask":
		return tilemap_get_global_mask();
	 
	 case "tilemap_get_height":
		return tilemap_get_height(argument1[0]);
	 
	 case "tilemap_get_mask":
		return tilemap_get_mask(argument1[0]);
	 
	 case "tilemap_get_tile_height":
		return tilemap_get_tile_height(argument1[0]);
	 
	 case "tilemap_get_tile_width":
		return tilemap_get_tile_width(argument1[0]);
	 
	 case "tilemap_get_tileset":
		return tilemap_get_tileset(argument1[0]);
	 
	 case "tilemap_get_width":
		return tilemap_get_width(argument1[0]);
	 
	 case "tilemap_get_x":
		return tilemap_get_x(argument1[0]);
	 
	 case "tilemap_get_y":
		return tilemap_get_y(argument1[0]);
	 
	 case "tilemap_set":
		tilemap_set(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	 
	 case "tilemap_set_at_pixel":
		tilemap_set_at_pixel(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	 
	 case "tilemap_set_global_mask":
		tilemap_set_global_mask(argument1[0]);
	 return 0;
	 
	 case "tilemap_set_width":
		tilemap_set_width(argument1[0],argument1[1]);
	 return 0;
	 
	 case "tilemap_tileset":
		tilemap_tileset(argument1[0],argument1[1]);
	 return 0;
	 
	 case "tilemap_x":
		tilemap_x(argument1[0],argument1[1]);
	 return 0;
	 
	 case "tilemap_y":
		tilemap_y(argument1[0],argument1[1]);
	 return 0;
	 
		
	 //====================================//
	 
	 //===========tile functions===========//
	 case "tile_get_flip":
		tile_get_flip(argument1[0]);
	 return 0;
	 
	 case "tile_get_index":
		tile_get_index(argument1[0]);
	 return 0;
	 
	 case "tile_get_mirror":
		tile_get_mirror(argument1[0]);
	 return 0;
	 
	 case "tile_get_rotate":
		tile_get_rotate(argument1[0]);
	 return 0;
	 
	 case "tile_layer_find":
		return tile_layer_find(argument1[0],argument1[1],argument1[2]);
	 
	 case "tile_layer_hide":
		tile_layer_hide(argument1[0]);
	 return 0;
	 
	 case "tile_layer_show":
		tile_layer_show(argument1[0]);
	 return 0;
	 
	 //====================================//
	 
	 //============url functions===========//
	 
	 case "url":
		return url_get_domain();
	 
	 case "url_open":
		get_string_async("URL OPEN REQUEST:",argument1[0]);
	 return 0;
	 
	 case "url_open_ext":
		get_string_async("URL OPEN REQUEST:",argument1[0]);
	 return 0;
	 
	 case "url_open_full":
		get_string_async("URL OPEN REQUEST:",argument1[0]);
	 return 0;
	 // I might remove these functions if abused
	 
	 //====================================//
	 
	 //==========window functions==========//
	 
	 case "window_center":
		window_center();
	 return 0;
	 
	 case "window_device":
		return window_device();
	 
	 case "window_get_caption":
		return window_get_caption();
	 
	 case "window_get_color":
		return window_get_color();
	 
	 case "window_get_cursor":
		return window_get_cursor();
	 
	 case "window_get_fullscreen":
		return window_get_fullscreen();
	 
	 case "window_get_height":
		return window_get_height();
	 
	 case "window_get_visible_rects":
		return window_get_visible_rects(argument1[0],argument1[1],argument1[2],argument1[3]);
	 
	 case "window_get_width":
		return window_get_width();
	 
	 case "window_get_x":
		return window_get_x();
	 
	 case "window_get_y":
		return window_get_y();
	 
	 case "window_handle":
		return window_handle();
	 
	 case "window_has_focus":
		return window_has_focus();
	 
	 case "window_mouse_get_x":
		return window_mouse_get_x();
	 
	 case "window_mouse_get_y":
		return window_mouse_get_y();
	 
	 case "window_mouse_set":
		window_mouse_set(argument1[0],argument1[1]);
	 return 0;
	 
	 case "window_set_caption":
		window_set_caption(argument1[0]);
	 return 0;
	 
	 case "window_set_color":
		window_set_color(argument1[0]);
	 return 0;
	 
	 case "window_set_cursor":
		window_set_cursor(argument1[0]);
	 return 0;
	 
	 case "window_set_fullscreen":
		window_set_fullscreen(argument1[0]);
	 return 0;
	 
	 case "window_set_max_height":
		window_set_max_height(argument1[0]);
	 return 0;
	 
	 case "window_set_max_width":
		window_set_max_width(argument1[0]);
	 return 0;
	 
	 case "window_set_min_height":
		window_set_min_height(argument1[0]);
	 return 0;
	 
	 case "window_set_min_width":
		window_set_min_width(argument1[0]);
	 return 0;
	 
	 case "window_set_position":
		window_set_position(argument1[0],argument1[1]);
	 return 0;
	 
	 case "window_set_rectangle":
		window_set_rectangle(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
	 
	 case "window_set_size":
		window_set_size(argument1[0],argument1[1]);
	 return 0;
	 
	 case "window_view_mouse_get_x":
		return window_view_mouse_get_x(argument1[0]);
	 
	 case "window_view_mouse_get_y":
		return window_view_mouse_get_y(argument1[0]);
	 
	 case "window_views_mouse_get_x":
		return window_views_mouse_get_x();
	 
	 case "window_views_mouse_get_y":
		return window_views_mouse_get_y();
	 
	 //====================================//
  
	 //==========audio functions===========//
	 
	 case "audio_channel_num":
		audio_channel_num(argument1[0]);
	 return 0; 
	 
	 case "audio_create_buffer_sound":
		return audio_create_buffer_sound(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 
	 case "audio_create_play_queue":
		return audio_create_play_queue(argument1[0],argument1[1],argument1[2]);	 
		
	 case "audio_create_stream":
		return audio_create_stream(argument1[0]); //funny custom sounds
		
	 case "audio_create_sync_group":
		return audio_create_sync_group(argument1[0]);
		
	 case "audio_debug":
		audio_debug(argument1[0]);
	 return 0;
		
	 case "audio_destroy_stream":
		audio_destroy_stream(argument1[0]);
	 return 0;
		
	 case "audio_destroy_sync_group":
		audio_destroy_sync_group(argument1[0]);
	 return 0;
		
	 case "audio_emitter_create":
		return audio_emitter_create();
		
	 case "audio_emitter_exists":
		return audio_emitter_exists(argument1[0]);
		
	 case "audio_emitter_falloff":
		audio_emitter_falloff(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
		
	 case "audio_emitter_free":
		audio_emitter_free(argument1[0]);
	 return 0;
		
	 case "audio_emitter_gain":
		audio_emitter_gain(argument1[0],argument1[1]);
	 return 0;
	 
	 case "audio_emitter_get_gain":
		return audio_emitter_get_gain(argument1[0]);
	 
	 case "audio_emitter_get_listener_mask":
		return audio_emitter_get_listener_mask(argument1[0]);
	 
	 case "audio_emitter_get_pitch":
		return audio_emitter_get_pitch(argument1[0]);
	 
	 case "audio_emitter_get_vx":
		return audio_emitter_get_vx(argument1[0]);
	 
	 case "audio_emitter_get_vy":
		return audio_emitter_get_vy(argument1[0]);
	 
	 case "audio_emitter_get_vz":
		return audio_emitter_get_vz(argument1[0]);
	 
	 case "audio_emitter_get_x":
		return audio_emitter_get_x(argument1[0]);
	 
	 case "audio_emitter_get_y":
		return audio_emitter_get_y(argument1[0]);
	 
	 case "audio_emitter_get_z":
		return audio_emitter_get_z(argument1[0]);
		
	 case "audio_emitter_pitch":
		audio_emitter_pitch(argument1[0],argument1[1]);
	 return 0;
		
	 case "audio_emitter_position":
		audio_emitter_position(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
		
	 case "audio_emitter_set_listener_mask":
		audio_emitter_set_listener_mask(argument1[0],argument1[1]);
	 return 0;
		
	 case "audio_emitter_velocity":
		audio_emitter_velocity(argument1[0],argument1[1],argument1[2],argument1[3]);
	 return 0;
		
	 case "audio_exists":
		return audio_exists(argument1[0]);
		
	 case "audio_falloff_set_model":
		audio_falloff_set_model(argument1[0])
	 return 0;
		
	 case "audio_free_buffer_sound":
		audio_free_buffer_sound(argument1[0]);
	 return 0;
		
	 case "audio_free_play_queue":
		audio_free_play_queue(argument1[0]);
	 return 0;
		
	 case "audio_get_listener_count":
		return audio_get_listener_count();
		
	 case "audio_get_listener_info":
		return audio_get_listener_info(argument1[0]);
		
	 case "audio_get_listener_mask":
		return audio_get_listener_mask();
		
	 case "audio_get_master_gain":
		return audio_get_master_gain(argument1[0]);
		
	 case "audio_get_name":
		return audio_get_name(argument1[0]);
		
	 case "audio_get_recorder_count":
		return audio_get_recorder_count();
		
	 case "audio_get_recorder_info":
		return audio_get_recorder_info(argument1[0]);
		
	 case "audio_get_type":
		return audio_get_type(argument1[0]);
		
	 case "audio_group_is_loaded":
		return audio_group_is_loaded(argument1[0]);
		
	 case "audio_group_load":
		return audio_group_load(argument1[0]);
		
	 case "audio_group_load_progress":
		return audio_group_load_progress(argument1[0]);
		
	 case "audio_group_name":
		return audio_group_name(argument1[0]);
		
	 case "audio_group_set_gain":
		audio_group_set_gain(argument1[0],argument1[1],argument1[2]);
	 return 0;
		
	 case "audio_group_stop_all":
		audio_group_stop_all(argument1[0]);
	 return 0;
		
	 case "audio_group_unload":
		audio_group_unload(argument1[0]);
	 return 0;
		
	 case "audio_is_paused":
		return audio_is_paused(argument1[0]);
		
	 case "audio_is_playing":
		return audio_is_playing(argument1[0]);
		
	 case "audio_listener_get_data":
		return audio_listener_get_data(argument1[0]);
		
	 case "audio_listener_orientation":
		 audio_listener_orientation(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);
	 return 0;	 
		
	 case "audio_listener_position":
		 audio_listener_position(argument1[0],argument1[1],argument1[2]);
	 return 0;	  
		
	 case "audio_listener_set_orientation":
		 audio_listener_set_orientation(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6]);
	 return 0;	 
	 
	 
	 //====================================//
	 
  
	 //==========http functions============//	  
		
	 case "http_get":
		return http_get(argument1[0]);  
		
	 case "http_get_file":
		return http_get_file(argument1[0],argument1[1]);
		
	 case "http_get_request_crossorigin":
		return http_get_request_crossorigin();
		
	 case "http_post_string":
		return http_post_string(argument1[0],argument1[1]);
		
	 case "http_request":
		return http_request(argument1[0],argument1[1],argument1[2],argument1[3]);
		
	 case "http_set_request_crossorigin":
		http_set_request_crossorigin(argument1[0]);
	 return 0;
	 
	 //====================================//
	 
  
	 //==========file functions============//
		
	 case "file_attributes":
		return file_attributes(argument1[0],argument1[1]);
		
	 case "file_bin_close":
		file_bin_close(argument1[0]);
	 return 0;
		
	 case "file_bin_open":
		return file_bin_open(argument1[0],argument1[1]);
		
	 case "file_bin_position":
		return file_bin_position(argument1[0]);
		
	 case "file_bin_read_byte":
		return file_bin_read_byte(argument1[0]);
		
	 case "file_bin_rewrite":
		file_bin_rewrite(argument1[0]);
	 return 0;
		
	 case "file_bin_seek":
		file_bin_seek(argument1[0],argument1[1]);
	 return 0;
		
	 case "file_bin_size":
		return file_bin_size(argument1[0]);
		
	 case "file_bin_write_byte":
		return file_bin_write_byte(argument1[0],argument1[1]);
		
	 case "file_copy":
		file_copy(argument1[0],argument1[1]);
	 return 0; 
		
	 case "file_delete":
		return file_delete(argument1[0]);
		
	 case "file_exists":
		return file_exists(argument1[0]);
		
	 case "file_find_close":
		file_find_close()
	 return 0;
		
	 case "file_find_first":
		return file_find_first(argument1[0],argument1[1]);
		
	 case "file_find_next":
		return file_find_next();
		
	 case "file_rename":
		return file_rename(argument1[0],argument1[1]);
		
	 case "file_text_close":
		return file_text_close(argument1[0]);
		
	 case "file_text_eof":
		return file_text_eof(argument1[0]);
		
	 case "file_text_eoln":
		return file_text_eoln(argument1[0]);
		
	 case "file_text_open_append":
		return file_text_open_append(argument1[0]);
		
	 case "file_text_open_from_string":
		return file_text_open_from_string(argument1[0]);
		
	 case "file_text_open_read":
		return file_text_open_read(argument1[0]);
		
	 case "file_text_open_write":
		return file_text_open_write(argument1[0]);
		
	 case "file_text_read_real":
		return file_text_read_real(argument1[0]);
		
	 case "file_text_read_string":
		return file_text_read_string(argument1[0]);
		
	 case "file_text_readln":
		return file_text_readln(argument1[0]);
		
	 case "file_text_write_real":
		return file_text_write_real(argument1[0],argument1[1]);
		
	 case "file_text_write_string":
		return file_text_write_string(argument1[0],argument1[1]);
		
	 case "file_text_writeln":
		return file_text_writeln(argument1[0]);
		
	 //====================================//
	 
  
	 //=========sprite functions===========//	  
		
	 case "sprite_add":
		return sprite_add(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5]);  
		
	 case "sprite_add_gif":
		return sprite_add_gif(argument1[0],argument1[1],argument1[2],argument1[3]);  
		
	 case "sprite_add_from_surface":
		return sprite_add_from_surface(argument1[0],argument1[1],argument1[2],argument1[3],argument1[4],argument1[5],argument1[6],argument1[7]);  
		
	 case "sprite_duplicate":
		return sprite_duplicate(argument1[0]);  
				
	 case "sprite_delete":
		return sprite_delete(argument1[0]); 
				
	 case "sprite_exists":
		return sprite_exists(argument1[0]); 
				
	 case "sprite_flush":
		return sprite_flush(argument1[0]); 
				
	 case "sprite_flush_multi":
		return sprite_flush_multi(argument1[0]); 
				
	 case "sprite_set_speed":
		return sprite_set_speed(argument1[0],argument1[1],argument1[2]); 
				
	 case "sprite_get_speed":
		return sprite_get_speed(argument1[0]);
		
	 
	 //====================================//
				
	 case "choose":
		return argument1[irandom(array_length(argument1) - 1)]; 
				
	 case "string":
		return string(argument1[0]); 
				
	 case "int64":
		return int64(argument1[0]); 
				
	 case "real":
		return real(argument1[0]); 
				
	 case "bool":
		return bool(argument1[0]); 
				
	 case "random":
		return random(argument1[0]); 
				
	 case "irandom":
		return irandom(argument1[0]); 
				
	 case "irandom_range":
		return irandom_range(argument1[0],argument1[1]); 
				
	 case "round":
		return round(argument1[0]); 
  
  
	  // Add more here...

	 default:
	   if asset_get_type(argument0)<>asset_script {
	    NSP_notify("SCRIPT: nsp_execute_script. ERROR: Script not supported ( "+argument0+" ).");
	    return nspToken[NSP_TOK.abort];
	    }
	  break;
  
	end;

	//PART 2 (Custom scripts): --------------------------------------------------------------------------------------------

	argument0=asset_get_index(argument0);

	if is_array(argument1)
	 a=array_length_1d(argument1)
	 else a=0;

	switch (a) begin

	 case 0:
	   rv=script_execute(argument0);
	  break;
	  
	 default:
		rv=script_execute_ext(argument0,argument1);
	 break;
 
	end;

	return rv;




}
