function get_dark(argument0, argument1)
{
	if argument1
	{
		var d = (room_width * room_height)
		var b = d
		var bb = b
		with (obj_lightsource)
		{
			var dis = distance_to_object(other)
			if (distance_to_object(other) < d)
			{
				bb = (dis / distance)
				if (bb < b)
				{
					b = bb
					d = dis
				}
			}
		}
		var t = ((b + 0.4) * 255)
		t = clamp(t, 0, 255)
		return make_color_rgb((color_get_red(argument0) - t), (color_get_green(argument0) - t), (color_get_blue(argument0) - t));
	}
	else
		return image_blend;
}

function enemy_is_superslam(argument0) //gml_Script_enemy_is_superslam
{
    with (argument0)
    {
        if ((state == states.grabbed))
        {
            var g = ((grabbedby == 1) ? obj_player1.id : obj_player2.id)
            if ((g.state == states.superslam) || ((g.state == states.chainsaw) && (g.tauntstoredstate == states.superslam)))
                return true;
        }
    }
    return false;
}

function enemy_is_swingding(argument0) //gml_Script_enemy_is_swingding
{
    with (argument0)
    {
        if ((state == states.grabbed))
        {
            var g = ((grabbedby == 1) ? obj_player1.id : obj_player2.id)
            if (((g.state == states.grab) || ((g.state == states.chainsaw) && (g.tauntstoredstate == states.grab))) && (g.sprite_index == g.spr_swingding))
                return true;
        }
    }
    return false;
}

function draw_enemy(argument0, argument1, argument2) //gml_Script_draw_enemy
{
    if ((argument2 == undefined))
        argument2 = c_white
    var _stun = 0
    if (((state == states.stun) && (thrown == false) && (object_index != obj_peppinoclone)) || (state == states.pizzaheadjump) || ((state == states.supergrab) && (sprite_index == stunfallspr)))
        _stun = 25
    //if ((state == states.pizzaheadjump) && (object_index == obj_gustavograbbable))
        //_stun = 0
    if (visible && (object_index != obj_pizzaball) && (object_index != obj_fakesanta) && bbox_in_camera(view_camera[0], 32))
    {
        var c = image_blend
        if elite
            c = 65535
        if elitegrab
            c = 32768
        if ((argument2 != c_white))
            c = argument2
        var b = get_dark(c, obj_drawcontroller.use_dark)
        if ((object_index == obj_peppinoclone))
        {
			if(global.usepaletteshaders)
			{
				shader_set(global.Pal_Shader)
				pal_swap_set(spr_peppalette, 1, false)
			}
        }
        else if (usepalette && argument1)
        {
            
			if(global.usepaletteshaders)
			{
				shader_set(global.Pal_Shader)
	            pal_swap_set(spr_peppalette, 0)
	            //if ((object_index == obj_fakepepboss) || (object_index == obj_gustavograbbable))
	                //pattern_set(global.Base_Pattern_Color, sprite_index, image_index, (image_xscale * xscale), (image_yscale * yscale), global.palettetexture)
	            pal_swap_set(spr_palette, paletteselect, false)
			}
        }
        var _ys = 1
        if ((state == states.grabbed))
        {
            if enemy_is_superslam(id)
            {
                _stun += 18
                _ys = -1
            }
        }
        draw_sprite_ext(sprite_index, image_index, x, (y + _stun), (xscale * image_xscale), (yscale * _ys), angle, b, image_alpha)
        if argument0
        {
            if ((hp > maxhp))
                maxhp = hp
            draw_healthbar((x - 16), (y - 50), (x + 16), (y - 45), ((hp / maxhp) * 100), c_black, c_red, c_red, 0, true, true)
        }
        if ((object_index == obj_fakepepboss))
        {
            if miniflash
            {
                pal_swap_set(spr_peppalette, 14, false)
                draw_sprite_ext(sprite_index, image_index, x, (y + _stun), (xscale * image_xscale), (yscale * _ys), angle, b, image_alpha)
            }
        }
        if ((object_index == obj_peppinoclone) || (usepalette && argument1))
        {
            //pattern_reset()
            shader_reset()
        }
        if ((object_index == obj_hamkuff))
        {
            if ((state == states.blockstance) && instance_exists(playerid))
            {
                var x1 = (x + (6 * image_xscale))
                var y1 = (y + 29)
                if ((sprite_index == spr_hamkuff_chain2))
                {
                    x1 = (x + (15 * image_xscale))
                    y1 = (y + 33)
                }
                var dis = point_distance(x1, y1, playerid.x, playerid.y)
                var w = 24
                var len = (dis div w)
                var dir = point_direction(x1, y1, playerid.x, (playerid.y + 16))
                var xx = lengthdir_x(w, dir)
                var yy = lengthdir_y(w, dir)
                for (var i = 0; i < len; i++)
                    draw_sprite_ext(spr_hamkuff_sausage, -1, (x1 + (xx * i)), (y1 + (yy * i)), 1, 1, dir, b, 1)
            }
        }
    }
}

function draw_superslam_enemy() //gml_Script_draw_superslam_enemy
{
    if ((state == states.superslam) && (floor(image_index) >= 5) && (floor(image_index) <= 7) && instance_exists(baddiegrabbedID))
    {
        with (baddiegrabbedID)
            draw_enemy(global.kungfu, true)
    }
}