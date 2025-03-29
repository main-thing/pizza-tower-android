var object = asset_get_index(fake_ed_content)
if(object_exists(object)){
	var _spr = object_get_sprite(object)
	if(sprite_exists(_spr))
	{
		sprite_index = _spr
	}
	if(fake_ed_content == "obj_sprite" || fake_ed_content == "obj_sprite_gui"){
		if(variable_instance_exists(id,"sprite")){
			sprite_index = sprite
		}
	}
	if(fake_ed_content == "obj_teleporter"){
		if(start == 0)
			sprite_index = spr_teleportmachine
	}
	if(fake_ed_content == "obj_rank_set")
		image_speed = 0
	switch(sprite_index){
		case spr_doorunvisited:
			mask_index = spr_doorvisited
		break
		case spr_goldendoorunvisited:
			mask_index = spr_goldendoorvisited
		break
		case spr_ladder:
			mask_index = spr_wall
		break
		default:
			mask_index = -1
		break
	}
}
if(instance_exists(obj_fakeeditor)){	
	if(sprite_exists(sprite_index)){
		draw_self()		
		if(variable_instance_exists(id,"content"))
		{
			if(object_exists(content) && obj_fakeeditor.selectedent == id)
			{
				#macro fakeed_sprite_scale 50
				var _spr = object_get_sprite(content)
				var _spr = (sprite_exists(object_get_sprite(content)) ? _spr : spr_wall)
				var _width = sprite_get_width(_spr)
				var _height = sprite_get_height(_spr)
				var _aspect = _width / _height
				var _xpos = (x - (sprite_width / 2))
				var _ypos = (y - (sprite_height / 2))
				//draw_set_color(c_black)
				//draw_set_alpha(0.5)
				//draw_rectangle(_xpos, _ypos, _xpos + fakeed_sprite_scale, _ypos + fakeed_sprite_scale, false)
				if(_width > _height)
				{
					draw_sprite_stretched_ext(_spr, 0, _xpos, _ypos, fakeed_sprite_scale, fakeed_sprite_scale / _aspect, c_white, 0.5)
				}
				else
				{
					draw_sprite_stretched_ext(_spr, 0, _xpos, _ypos, fakeed_sprite_scale * _aspect, fakeed_sprite_scale, c_white, 0.5)
				}
				//draw_set_halign(fa_left)
				//draw_set_font(font1)
				//draw_set_color(c_white)
				//draw_set_alpha(1)
				//var _obj_name = object_get_name(content)
				//var _str_width = string_width(_obj_name)
				//draw_text_transformed(_xpos, _ypos, _obj_name, fakeed_sprite_scale / _str_width, 0.5, 0)
			}
		}
	}
	if(!obj_fakeeditor.in_play_mode && !global.fake_ed_tilemenu){	
		if(fake_ed_content == "obj_camera_bounds_trigger" || fake_ed_content == "obj_camera_bounds_trigger_door"){
			draw_set_color(c_white)
			draw_rectangle(x + camera_x, (y + camera_y) - camera_height, x + camera_width, (y + camera_y), true)
		}
	}
}