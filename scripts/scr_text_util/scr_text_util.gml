enum InputIcons
{
    Value_0,
    Value_1,
    Value_2,
    Value_3,
    Value_4,
    Value_5,
    Value_6,
    Value_7,
    Value_8,
    Value_9,
    Value_10,
    Value_11,
    Value_12,
    Value_13,
    Value_14,
    Value_15,
    Value_16,
    Value_17,
    Value_18,
    Value_19,
    Value_20,
    Value_21,
    Value_22
}

/*function create_transformation_tip(arg0, arg1 = -4)
{
    ini_open_from_string(obj_savesystem.ini_str);
    
    if (arg1 != -4 && ini_read_real("Tip", arg1, false))
    {
        ini_close();
        exit;
    }
    
    instance_destroy(obj_transfotip);
    var b = -4;
    
    with (instance_create(0, 0, obj_transfotip))
    {
        text = arg0;
        b = id;
    }
    
    if (arg1 != -4)
        ini_write_real("Tip", arg1, true);
    
    obj_savesystem.ini_str = ini_close();
    return b;
}*/

function scr_compile_icon_text(arg0, arg1 = 1, arg2 = false)
{
    var arr = [];
    var len = string_length(arg0);
    var newline = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
    var char_x = 0;
    var char_y = 0;
    var saved_pos = 1;
    
    while (arg1 <= len)
    {
        var start = arg1;
        var char = string_ord_at(arg0, arg1);
        
        switch (char)
        {
            case 10:
                char_y += newline;
                char_x = 0;
                break;
            
            case 123:
                var effect = string_copy(arg0, arg1, 3);
                var te = InputIcons.Value_1;
                arg1 += 3;
                var n = scr_compile_icon_text(arg0, arg1, true);
                
                switch (effect)
                {
                    case "{s}":
                        te = InputIcons.Value_1;
                        break;
                    
                    case "{u}":
                        te = InputIcons.Value_2;
                        break;
                }
                
                array_push(arr, [char_x, char_y, InputIcons.Value_2, te, n[0]]);
                arg1 = n[1];
                char_x = n[2];
                char_y = n[3];
                break;
            
            case 91:
                var button = string_copy(arg0, arg1, 3);
                var t = InputIcons.Value_1;
                var b = InputIcons.Value_0;
                
                switch (button)
                {
                    case "[D]":
                        b = InputIcons.Value_3;
                        break;
                    
                    case "[U]":
                        b = InputIcons.Value_0;
                        break;
                    
                    case "[M]":
                        b = InputIcons.Value_7;
                        break;
                    
                    case "[J]":
                        b = InputIcons.Value_8;
                        break;
                    
                    case "[G]":
                        b = InputIcons.Value_6;
                        break;
                    
                    case "[F]":
                        b = InputIcons.Value_4;
                        break;
                    
                    case "[B]":
                        b = InputIcons.Value_5;
                        break;
                    
                    case "[L]":
                        b = InputIcons.Value_1;
                        break;
                    
                    case "[R]":
                        b = InputIcons.Value_2;
                        break;
                    
                    case "[S]":
                        b = InputIcons.Value_9;
                        break;
                    
                    case "[T]":
                        b = InputIcons.Value_10;
                        break;
                    
                    case "[g]":
                        b = InputIcons.Value_11;
                        break;
                    
                    case "[s]":
                        b = InputIcons.Value_12;
                        break;
                    
                    case "[u]":
                        b = InputIcons.Value_13;
                        break;
                    
                    case "[d]":
                        b = InputIcons.Value_16;
                        break;
                    
                    case "[l]":
                        b = InputIcons.Value_14;
                        break;
                    
                    case "[r]":
                        b = InputIcons.Value_15;
                        break;
                    
                    case "[c]":
                        b = InputIcons.Value_17;
                        break;
                    
                    case "[b]":
                        b = InputIcons.Value_18;
                        break;
                    
                    case "[q]":
                        b = InputIcons.Value_20;
                        break;
                    
                    case "[x]":
                        b = InputIcons.Value_19;
                        break;
                    
                    case "[p]":
                        b = InputIcons.Value_21;
                        break;
                    
                    case "[y]":
                        b = InputIcons.Value_22;
                        break;
                }
                
                array_push(arr, [char_x, char_y, t, b]);
                char_x += 32;
                arg1 += 2;
                break;
            
            case 47:
                if (arg2)
                {
                    saved_pos = arg1;
                    arg1 = len + 1;
                }
                
                break;
            
            default:
                while ((arg1 + 1) <= len)
                {
                    char = string_ord_at(arg0, arg1 + 1);
                    
                    if (char != 91 && char != 10 && char != 123 && char != 47)
                        arg1 += 1;
                    else
                        break;
                }
                
                var n = string_copy(arg0, start, (arg1 - start) + 1);
                array_push(arr, [char_x, char_y, InputIcons.Value_0, n]);
                char_x += string_width(n);
                break;
        }
        
        arg1 += 1;
    }
    
    if (arg2)
        return [arr, saved_pos, char_x, char_y];
    
    return arr;
}

function scr_text_arr_size(arg0)
{
    var w = 0;
    var newline = string_height("ABCDEFGHIJKLMNOPQRSTUVWXYZ");
    var h = newline;
    
    for (var i = 0; i < array_length(arg0); i++)
    {
        var b = arg0[i];
        var cx = b[0];
        var cy = b[1];
        var t = b[2];
        var val = b[3];
        
        switch (t)
        {
            case InputIcons.Value_1:
                if ((cx + 32) > w)
                    w += 32;
                
                break;
            
            case InputIcons.Value_2:
                var val2 = b[4];
                var q = scr_text_arr_size(val2);
                
                if ((cy + q[1]) > h)
                    h += (q[1] - newline);
                else if ((cx + q[0]) > w)
                    w += q[0];
                
                break;
            
            case InputIcons.Value_0:
                if (cy > h)
                {
                    h += newline;
                }
                else
                {
                    var sw = string_width(val);
                    
                    if ((cx + sw) > w)
                        w += string_width(val);
                }
                
                break;
        }
    }
    
    return [w, h];
}

function scr_draw_granny_texture(x, y, xscale, yscale, tex_x, tex_y, sprite = spr_pizzagrannytexture, bubble_sprite = spr_tutorialbubble)
{
    var w = (sprite_get_width(bubble_sprite) * xscale);
    var h = (sprite_get_height(bubble_sprite) * yscale);

    if !surface_exists(surfclip)
        surfclip = surface_create(w, h);
    if !surface_exists(surffinal)
        surffinal = surface_create(w, h);

    surface_set_target(surfclip);
    draw_clear_alpha(c_black, 1);
    gpu_set_blendmode(bm_subtract);
    draw_sprite_ext(bubble_sprite, 0, 0, 0, xscale, yscale, 0, c_white, 1);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();

    surface_set_target(surffinal);
    draw_clear_alpha(c_black, 0);
    draw_sprite_tiled(sprite, 0, tex_x, tex_y);
    gpu_set_blendmode(bm_subtract);
    draw_surface(surfclip, 0, 0);
    gpu_set_blendmode(bm_normal);
    surface_reset_target();

    draw_surface(surffinal, x, y);
} 


function scr_draw_text_arr(arg0, arg1, arg2, arg3 = c_white, arg4 = 1, arg5 = InputIcons.Value_0, arg6 = -4)
{
    if (arg2 == -4)
        exit;
    
    for (var i = 0; i < array_length(arg2); i++)
    {
        var b = arg2[i];
        var cx = arg0 + b[0];
        var cy = arg1 + b[1];
        var t = b[2];
        var val = b[3];
        
        switch (t)
        {
            case InputIcons.Value_1:
                var icon = -4;
                
                switch (val)
                {
                    case InputIcons.Value_3:
                        icon = tdp_get_tutorial_icon("player_down");
                        break;
                    
                    case InputIcons.Value_0:
                        icon = tdp_get_tutorial_icon("player_up");
                        break;
                    
                    case InputIcons.Value_1:
                        icon = tdp_get_tutorial_icon("player_left");
                        break;
                    
                    case InputIcons.Value_2:
                        icon = tdp_get_tutorial_icon("player_right");
                        break;
                    
                    case InputIcons.Value_7:
                        icon = tdp_get_tutorial_icon("player_attack");
                        break;
                    
                    case InputIcons.Value_8:
                        icon = tdp_get_tutorial_icon("player_jump");
                        break;
                    
                    case InputIcons.Value_6:
                        icon = tdp_get_tutorial_icon("player_slap");
                        break;
                    
                    case InputIcons.Value_10:
                        icon = tdp_get_tutorial_icon("player_taunt");
                        break;
                    
                    case InputIcons.Value_11:
                        if (!global.gamepad_groundpound && obj_inputAssigner.player_input_device[0] >= 0)
                            icon = tdp_get_tutorial_icon("player_groundpound");
                        else
                            icon = tdp_get_tutorial_icon("player_down");
                        
                        break;
                    
                    case InputIcons.Value_12:
                        if (!global.gamepad_superjump && obj_inputAssigner.player_input_device[0] >= 0)
                            icon = tdp_get_tutorial_icon("player_superjump");
                        else
                            icon = tdp_get_tutorial_icon("player_up");
                        
                        break;
                    
                    case InputIcons.Value_4:
                        if (instance_exists(obj_player1) && obj_player1.xscale < 0)
                            icon = tdp_get_tutorial_icon("player_left");
                        else
                            icon = tdp_get_tutorial_icon("player_right");
                        
                        break;
                    
                    case InputIcons.Value_5:
                        if (instance_exists(obj_player1) && obj_player1.xscale > 0)
                            icon = tdp_get_tutorial_icon("player_left");
                        else
                            icon = tdp_get_tutorial_icon("player_right");
                        
                        break;
                    
                    case InputIcons.Value_14:
                        icon = tdp_get_tutorial_icon("menu_left");
                        break;
                    
                    case InputIcons.Value_15:
                        icon = tdp_get_tutorial_icon("menu_right");
                        break;
                    
                    case InputIcons.Value_13:
                        icon = tdp_get_tutorial_icon("menu_up");
                        break;
                    
                    case InputIcons.Value_16:
                        icon = tdp_get_tutorial_icon("menu_down");
                        break;
                    
                    case InputIcons.Value_17:
                        icon = tdp_get_tutorial_icon("menu_select");
                        break;
                    
                    case InputIcons.Value_20:
                        icon = tdp_get_tutorial_icon("menu_quit");
                        break;
                    
                    case InputIcons.Value_19:
                        icon = tdp_get_tutorial_icon("menu_delete");
                        break;
                    
                    case InputIcons.Value_18:
                        icon = tdp_get_tutorial_icon("menu_back");
                        break;
                    
                    case InputIcons.Value_21:
                        icon = tdp_get_tutorial_icon("menu_start");
                        break;
                    
                    case InputIcons.Value_22:
                        icon = tdp_get_tutorial_icon("menu_reset_binds");
                        break;
                }
                
                if (arg5 != InputIcons.Value_0)
                {
                    switch (arg5)
                    {
                        case InputIcons.Value_1:
                            cx += irandom_range(-2, 2);
                            cy += irandom_range(-2, 2);
                            break;
                        
                        case InputIcons.Value_2:
                            var o = 1;
                            
                            if (arg6 != -4)
                                o = arg6.offset;
                            
                            var d = ((i % 2) == 0) ? -1 : 1;
                            var _dir = floor(Wave(-1, 1, 0.1, 0));
                            cy += (_dir * d * o);
                            break;
                    }
                }
                
                if (icon != -4)
                {
                    draw_sprite(icon.sprite_index, icon.image_index, cx, cy);
                    
                    if (icon.str != "")
                    {
                        var f = draw_get_font();
                        draw_set_halign(fa_center);
                        draw_set_valign(fa_middle);
                        draw_set_font(global.tutorialfont);
                        draw_text_color(cx + 16, cy + 14, icon.str, c_black, c_black, c_black, c_black, arg4);
                        draw_set_font(f);
                        draw_set_halign(fa_left);
                        draw_set_valign(fa_top);
                    }
                }
                
                break;
            
            case InputIcons.Value_2:
                var val2 = b[4];
                scr_draw_text_arr(cx, cy, val2, arg3, arg4, val);
                break;
            
            case InputIcons.Value_0:
                if (arg5 == InputIcons.Value_0)
                {
                    draw_text_color(cx, cy, val, arg3, arg3, arg3, arg3, arg4);
                }
                else
                {
                    var x2 = 0;
                    
                    switch (arg5)
                    {
                        case InputIcons.Value_1:
                            for (var j = 1; j <= string_length(val); j++)
                            {
                                var q = string_char_at(val, j);
                                var s1 = irandom_range(-1, 1);
                                var s2 = irandom_range(-1, 1);
                                draw_text_color(cx + x2 + s1, cy + s2, q, arg3, arg3, arg3, arg3, arg4);
                                x2 += string_width(q);
                            }
                            
                            break;
                        
                        case InputIcons.Value_2:
                            for (var j = 1; j <= string_length(val); j++)
                            {
                                var q = string_char_at(val, j);
                                var s = 0;
                                var o = 1;
                                
                                if (arg6 != -4)
                                    o = arg6.offset;
                                
                                var d = ((j % 2) == 0) ? -1 : 1;
                                var _dir = floor(Wave(-1, 1, 0.1, 0));
                                s += (_dir * d * o);
                                draw_text_color(cx + x2, cy + s, q, arg3, arg3, arg3, arg3, arg4);
                                x2 += string_width(q);
                            }
                            
                            break;
                    }
                }
                
                break;
        }
    }
}
