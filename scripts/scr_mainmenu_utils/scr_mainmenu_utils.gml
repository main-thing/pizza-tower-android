function port_mainmenu_option(_title, _x, _y, _click_func = noone, _step_func = noone, _page_draw_func = noone) constructor
{
	title = _title;
	x = _x;
	y = _y;
	click_func = _click_func;
	step_func = _step_func;
	page_draw_func = _page_draw_func;
}

function port_config_option(_title, _enabled, _click_func = noone, _forced_color = false) constructor
{
	title = _title;
	click_func = _click_func;
	forcedcolor = _forced_color;
	enabled = _enabled;
}

function port_mainmenu_level_select()
{
	with(other)	
	{
		instance_create(x, y, obj_levelselect);
		instance_destroy();
	}
}

function port_mainmenu_newstuff_click()
{
	if (live_call()) return live_result;
	global.forcehidecontrols = true;
	with(obj_virtual_controller) 
		event_perform(ev_mouse, ev_global_left_button);
	
	with(other)
	{
		click_y = 0;
		stringoffset = 0;
		close_key = virtual_key_add(25 - 21, 25 - 22, 42, 45, ord("X"));
		oldstringoffset = stringoffset;
		savedheight = noone;
	}
	
	layer_set_visible(layer_get_id("Assets_1"), false);
	layer_set_visible(layer_get_id("Backgrounds_1"), false);
	layer_set_visible(layer_get_id("Backgrounds_2"), true);
}

function port_mainmenu_newstuff_step()
{
	if (live_call()) return live_result;
	with(other)
	{
		//stringoffset -= (key_down - key_up) * scrollspeed;
		
		if(device_mouse_check_button_pressed(0, mb_left))
		{
			click_y = device_mouse_y_to_gui(0);
			oldstringoffset = stringoffset;
		}
		
		if(device_mouse_check_button(0, mb_left))
		{
			stringoffset = oldstringoffset + device_mouse_y_to_gui(0) - click_y;
			stringoffset = clamp(stringoffset, -savedheight + 540, 0)
		}
		
		if(key_slap2)
		{
			layer_set_visible(layer_get_id("Assets_1"), true);
			layer_set_visible(layer_get_id("Backgrounds_1"), true);
			layer_set_visible(layer_get_id("Backgrounds_2"), false);
			
			page = noone;
			
			global.forcehidecontrols = false;
			with(obj_virtual_controller) 
				event_perform(ev_mouse, ev_global_left_button);
				
			scr_soundeffect(sfx_enemyprojectile);
		}
	}
}

function port_mainmenu_newstuff_draw()
{
	if (live_call()) return live_result;
	with(other)
	{
		if(savedheight == noone)
			savedheight = 100 + string_height_ext(textstring, 36, 1600);
		draw_set_halign(fa_center);
		draw_set_valign(fa_left);
		draw_set_color(c_white);
		draw_set_font(titlefont);
		draw_set_alpha(0.5);
		draw_set_font(subtextfont2);
		draw_roundrect_color_ext(50, 80 + stringoffset, 910, 100 + (string_height_ext(textstring, 36, 1600)) + stringoffset, 10, 10, c_black, c_black, false);
		draw_set_font(titlefont);
		draw_roundrect_color_ext(50, 25 + stringoffset, 910, 75 + stringoffset, 10, 10, c_black, c_black, false);
		draw_set_alpha(1);
		draw_text(480, 35 + stringoffset, "NEW STUFF");
	
		draw_set_halign(fa_left);
		draw_set_font(global.creditsfont);
		draw_text_ext(80, 90 + stringoffset, textstring2, 36, 1600);
	
		draw_set_font(subtextfont2);
		draw_text_ext(80, 90 + stringoffset, textstring, 36, 1600);
		//draw_sprite_ext(spr_virtual_controller, 0, 38, 432, 1, 1, 0, c_white, 0.5);
		//draw_sprite_ext(spr_virtual_controller, 0, 38, 498, 1, 1, 180, c_white, 0.5);
		draw_sprite_ext(spr_button_escape_big, 0, 2356 * 0.01, 1080 * 0.02, 1, 1, 0, c_white, 0.5);
	}
}

function port_mainmenu_options_click()
{
	if (live_call()) return live_result;
	layer_set_visible(layer_get_id("Assets_1"), false);
	global.forcehidecontrols = true;
	with(obj_virtual_controller) 
		event_perform(ev_mouse, ev_global_left_button);
	
	with(other)
	{
		stagger = true;
	}
}

function port_mainmenu_options_step()
{
	if (live_call()) return live_result;
	with(other)
	{
		if(stagger) 
		{
			stagger = false
			exit;
		}
		
		// don't judge
		drawsquareoffset += 1;
		if(drawsquareoffset > 200)
			drawsquareoffset = 0;
			
		if(key_slap2)
		{
			page = noone;
			layer_set_visible(layer_get_id("Assets_1"), true);
			
			global.forcehidecontrols = false;
			with(obj_virtual_controller) 
				event_perform(ev_mouse, ev_global_left_button);
				
			scr_soundeffect(sfx_enemyprojectile);
		}
		
		if(key_jump)
		{
			var _option = port_options[page_cursorind];
			with(_option)
			{
				var _snip = USE_GMLIVE ? live_snippet_call : NSP_execute_saved;
			
				// this is stupid
				var is_snippet = is_struct(click_func) && !is_method(click_func);
				if(is_snippet)
					_snip(click_func)
				else
					script_execute(asset_get_index(script_get_name(click_func)));
			
				scr_soundeffect(sfx_enemyprojectile);
			}
		}
		
		var _input = (key_down2 - key_up2);
		
		if(_input != 0)
				scr_soundeffect(sfx_step);
				
		page_cursorind += _input;
		
		if(page_cursorind < 0)
			page_cursorind = array_length(port_options) - 1;
		
		if(page_cursorind > array_length(port_options) - 1)
			page_cursorind = 0;
	}
}

function port_mainmenu_options_draw()
{
	if (live_call()) return live_result;
	with(other)
	{
		draw_set_alpha(1);
		draw_set_color(make_color_rgb(83, 96, 108));
		draw_rectangle(0, 0, 960, 540, false);
		for(var i = 0; i < 6; i++)
		{
			for(var j = 0; j < 5; j ++)
			{
				draw_set_color(make_color_rgb(32, 38, 51));
				draw_primitive_begin(pr_trianglefan);
				draw_vertex(100 + i * 200 + drawsquareoffset - 200, 0 + j * 200 + drawsquareoffset - 200);
				draw_vertex(0 + i * 200 + drawsquareoffset - 200, 100  + j * 200 + drawsquareoffset - 200);
				draw_vertex(100 + i * 200 + drawsquareoffset - 200, 200 + j * 200 + drawsquareoffset - 200);
				draw_vertex(200 + i * 200 + drawsquareoffset - 200, 100 + j * 200 + drawsquareoffset - 200);
				draw_primitive_end();
			}
		}
		draw_set_alpha(0.5);
		draw_roundrect_color_ext(150, 80, 810, 450, 10, 10, c_black, c_black, false);
		
		draw_set_alpha(1);
		draw_set_font(global.bigfont);
		draw_set_valign(fa_top);
		draw_set_halign(fa_middle);
		draw_set_color(c_white);
		draw_text(480, 100, "PORT OPTIONS");
		draw_set_alpha(0.5);
		draw_line(150, 150, 810, 150);
		
		draw_set_alpha(1);
		cursorindex += 0.35
		if(cursorindex > sprite_get_number(spr_cursor))
			cursorindex = frac(cursorindex);
			
		draw_sprite(spr_cursor, cursorindex, 200, 186 + page_cursorind * 50);
		draw_set_halign(fa_left);
		
		for(var i = 0; i < array_length(port_options); i++)
		{
			draw_set_alpha((i == page_cursorind) ? 1 : 0.5);
			draw_set_color(port_options[i].enabled ? c_green : c_maroon);
			draw_text(260, 170 + i * 50, port_options[i].title);
		}
	}
}



function port_mainmenu_credits_click()
{
	if (live_call()) return live_result;
	global.forcehidecontrols = true;
	with(obj_virtual_controller) 
		event_perform(ev_mouse, ev_global_left_button);
	
	with(other)	
		close_key = virtual_key_add(25 - 21, 25 - 22, 42, 45, ord("X"));

	layer_set_visible(layer_get_id("Assets_1"), false);
	layer_set_visible(layer_get_id("Backgrounds_1"), false);
	layer_set_visible(layer_get_id("Backgrounds_stillscroll"), true);
}

function port_mainmenu_credits_step()
{
	if (live_call()) return live_result;
	with(other)
	{
		if(key_slap2)
		{
			layer_set_visible(layer_get_id("Assets_1"), true);
			layer_set_visible(layer_get_id("Backgrounds_1"), true);
			layer_set_visible(layer_get_id("Backgrounds_stillscroll"), false);
			
			virtual_key_delete(close_key);
	
			close_key = noone;
			page = noone;
			
			global.forcehidecontrols = false;
			with(obj_virtual_controller) 
				event_perform(ev_mouse, ev_global_left_button);
			
			scr_soundeffect(sfx_enemyprojectile);
		}
	}
}

function port_mainmenu_credits_draw()
{
	if (live_call()) return live_result;
	with(other)
	{
		//draw_sprite(bg_creditsoverlay, 0, 0, 0);
		draw_set_halign(fa_center);
		draw_set_valign(fa_left);
		draw_set_color(c_white);
		draw_set_font(titlefont);
		draw_text(480, 100, "TOUR DE PIZZA");
		draw_text(480, 190, "MAIN_THING");
		draw_text(480, 280, "PRIMARY_THING");
		draw_text(480, 370, "ATESQUIK AND D");
		draw_set_font(subtextfont2);
		draw_text(480, 140, "Created Pizza Tower");
		draw_text(480, 230, "Port Creator");
		draw_text(480, 320, "Art and Concepts");
		draw_text(480, 410, "Helped with shaders");
		draw_sprite_ext(spr_button_escape_big, 0, 25, 30, 1, 1, 0, c_white, 0.5);
	}
}

function port_mainmenu_discord_click()
{
	with(other)
	{
		discord_dialogue = 
		show_question_async
		(
			irandom_range(0, 99) ? 
			"Do you really want to join the chaos of the discord?" : 
			"Do you accept the terms and conditions of your car's warranty?"
		)
	}
}