enum textkey
{
	up,
	left,
	right,
	down,
	forwards,
	backwards,
	grab,
	mach,
	jump,
	shoot,
	taunt,
	groundpound, // gamepad only
	superjump // gamepad only
}
enum texteffect
{
	normal,
	shake,
	updown
}
function scr_draw_text_arr(x, y, text_arr, color = c_white, alpha = 1, effect = texteffect.normal, option_struct = noone)
{
	if text_arr == noone
		exit;
	
	for (var i = 0; i < array_length(text_arr); i++)
	{
		var b = text_arr[i];
		var cx = x + b[0];
		var cy = y + b[1];
		var t = b[2];
		var val = b[3];
		
		switch t
		{
			case (1 << 0):
				var spr = -4;
				var ix = 0;
				var txt = -4;
				
				if obj_inputAssigner.player_input_device[0] >= 0
				{
					spr = spr_tutorialgamepad;
					switch val
					{
						case textkey.down:
							ix = scr_get_gamepadicon(global.key_downC);
							break;
						case textkey.up:
							ix = scr_get_gamepadicon(global.key_upC);
							break;
						case textkey.mach:
							ix = scr_get_gamepadicon(global.key_attackC);
							break;
						case textkey.jump:
							ix = scr_get_gamepadicon(global.key_jumpC);
							break;
						case textkey.grab:
							ix = scr_get_gamepadicon(global.key_slapC);
							break;
						case textkey.forwards:
							if (instance_exists(obj_player1) && obj_player1.xscale > 0)
								ix = scr_get_gamepadicon(global.key_rightC);
							else
								ix = scr_get_gamepadicon(global.key_leftC);
							break;
						case textkey.backwards:
							if (instance_exists(obj_player1) && obj_player1.xscale > 0)
								ix = scr_get_gamepadicon(global.key_leftC);
							else
								ix = scr_get_gamepadicon(global.key_rightC);
							break;
						case textkey.left:
							ix = scr_get_gamepadicon(global.key_leftC);
							break;
						case textkey.right:
							ix = scr_get_gamepadicon(global.key_rightC);
							break;
						case textkey.shoot:
							ix = scr_get_gamepadicon(global.key_shootC);
							break;
						case textkey.taunt:
							ix = scr_get_gamepadicon(global.key_tauntC);
							break;
						case textkey.groundpound:
							if global.gamepad_groundpound
								ix = scr_get_gamepadicon(global.key_downC);
							else
								ix = scr_get_gamepadicon(global.key_groundpoundC);
							break;
						case textkey.superjump:
							if global.gamepad_superjump
								ix = scr_get_gamepadicon(global.key_upC);
							else
								ix = scr_get_gamepadicon(global.key_superjumpC);
							break;
					}
				}
				else
				{
					spr = spr_tutorialkey;
					ix = 0;
					
					var arr = noone;
					switch val
					{
						case textkey.down:
							arr = scr_get_tutorial_key(global.key_down);
							break;
						case textkey.up:
							arr = scr_get_tutorial_key(global.key_up);
							break;
						case textkey.mach:
							arr = scr_get_tutorial_key(global.key_attack);
							break;
						case textkey.jump:
							arr = scr_get_tutorial_key(global.key_jump);
							break;
						case textkey.grab:
							arr = scr_get_tutorial_key(global.key_slap);
							break;
						case textkey.forwards:
							if (instance_exists(obj_player1) && obj_player1.xscale > 0)
								arr = scr_get_tutorial_key(global.key_right);
							else
								arr = scr_get_tutorial_key(global.key_left);
							break;
						case textkey.backwards:
							if (instance_exists(obj_player1) && obj_player1.xscale > 0)
								arr = scr_get_tutorial_key(global.key_left);
							else
								arr = scr_get_tutorial_key(global.key_right);
							break;
						case textkey.left:
							arr = scr_get_tutorial_key(global.key_left);
							break;
						case textkey.right:
							arr = scr_get_tutorial_key(global.key_right);
							break;
						case textkey.shoot:
							arr = scr_get_tutorial_key(global.key_shoot);
							break;
						case textkey.taunt:
							arr = scr_get_tutorial_key(global.key_taunt);
							break;
						case textkey.groundpound:
                            arr = scr_get_tutorial_key(global.key_down);
                            break;
                        case textkey.superjump:
                            arr = scr_get_tutorial_key(global.key_up);
                            break;
					}
					if arr != noone
					{
						spr = arr[0];
						ix = arr[1];
						txt = arr[2];
					}
				}
				
				if effect != texteffect.normal
				{
					switch effect
					{
						case texteffect.shake:
							cx += irandom_range(-2, 2);
							cy += irandom_range(-2, 2);
							break;
						
						case texteffect.updown:
							var o = 1;
							if (option_struct != -4)
								o = option_struct.offset;
							var d = ((i % 2) == 0) ? -1 : 1;
							var _dir = floor(Wave(-1, 1, 0.1, 0));
							cy += (_dir * d * o);
							break;
					}
				}
				
				if spr != -4
				{
					if ix != -4
						draw_sprite(spr, ix, cx, cy);
					if txt != -4
					{
						var f = draw_get_font();
						draw_set_halign(1);
						draw_set_valign(1);
						draw_set_font(global.tutorialfont);
						draw_text_color(cx + 16, cy + 14, txt, c_black, c_black, c_black, c_black, alpha);
						draw_set_font(f);
						draw_set_halign(0);
						draw_set_valign(0);
					}
				}
				break;
			
			case texttype.array:
				var val2 = b[4];
				scr_draw_text_arr(cx, cy, val2, color, alpha, val);
				break;
			
			case texttype.normal:
				if effect == texteffect.normal
					draw_text_color(cx, cy, val, color, color, color, color, alpha);
				else
				{
					var x2 = 0;
					switch effect
					{
						case texteffect.shake:
							for (var j = 1; j <= string_length(val); j++)
							{
								var q = string_char_at(val, j);
								var s1 = irandom_range(-1, 1);
								var s2 = irandom_range(-1, 1);
								draw_text_color(cx + x2 + s1, cy + s2, q, color, color, color, color, alpha);
								x2 += string_width(q);
							}
							break;
						
						case texteffect.updown:
							for (j = 1; j <= string_length(val); j++)
							{
								q = string_char_at(val, j);
								var s = 0;
								o = 1;
								if (option_struct != -4)
									o = option_struct.offset;
								d = ((j % 2) == 0) ? -1 : 1;
								_dir = floor(Wave(-1, 1, 0.1, 0));
								s += (_dir * d * o);
								draw_text_color(cx + x2, cy + s, q, color, color, color, color, alpha);
								x2 += string_width(q);
							}
							break;
					}
				}
				break;
		}
	}
}
