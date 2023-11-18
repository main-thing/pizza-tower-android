draw_set_halign(fa_center)
if editormode
{
    if button1clicked
    {
        draw_roundrect_colour(button1x, button1y, (button1x + button1width), (button1y + button1height), c_gray, c_gray, 0)
        draw_roundrect_colour(button1x, button1y, (button1x + button1width), (button1y + button1height), c_white, c_white, 1)
        draw_sprite(spr_menuicon, 1, (button1x - 7), (button1y - 7))
    }
    else
    {
        draw_roundrect_colour(button1x, button1y, (button1x + button1width), (button1y + button1height), c_black, c_black, 0)
        draw_roundrect_colour(button1x, button1y, (button1x + button1width), (button1y + button1height), c_white, c_white, 1)
        draw_sprite(spr_menuicon, 0, (button1x - 7), (button1y - 7))
    }
    if button2clicked
    {
        draw_roundrect_colour(button2x, button2y, (button2x + button2width), (button2y + button2height), c_gray, c_gray, 0)
        draw_roundrect_colour(button2x, button2y, (button2x + button2width), (button2y + button2height), c_white, c_white, 1)
        draw_sprite(spr_font, 23, (button2x + 8), (button2y + 8))
    }
    else
    {
        draw_roundrect_colour(button2x, button2y, (button2x + button2width), (button2y + button2height), c_maroon, c_maroon, 0)
        draw_roundrect_colour(button2x, button2y, (button2x + button2width), (button2y + button2height), c_white, c_white, 1)
        draw_sprite(spr_font, 23, (button2x + 8), (button2y + 8))
    }
    if dragmode
    {
        draw_roundrect_colour(button3x, button3y, (button3x + button3width), (button3y + button3height), c_yellow, c_yellow, 0)
        draw_roundrect_colour(button3x, button3y, (button3x + button3width), (button3y + button3height), c_white, c_white, 1)
        draw_sprite_ext(spr_grabbiehand_catch, 0, (button3x + 23), (button3y + 14), 0.8, 0.8, 0, c_white, 1)
    }
    else
    {
        draw_roundrect_colour(button3x, button3y, (button3x + button3width), (button3y + button3height), c_gray, c_gray, 0)
        draw_roundrect_colour(button3x, button3y, (button3x + button3width), (button3y + button3height), c_white, c_white, 1)
        draw_sprite_ext(spr_grabbiehand_idle, 0, (button3x + 23), (button3y + 14), 0.8, 0.8, 0, c_white, 1)
    }
    if copymode
    {
        draw_roundrect_colour(button4x, button4y, (button4x + button4width), (button4y + button4height), c_green, c_green, 0)
        draw_roundrect_colour(button4x, button4y, (button4x + button4width), (button4y + button4height), c_white, c_white, 1)
        draw_set_font(global.smallfont)
        draw_text((button4x + 25), (button4y + 16), "COPY")
    }
    else
    {
        draw_roundrect_colour(button4x, button4y, (button4x + button4width), (button4y + button4height), c_red, c_red, 0)
        draw_roundrect_colour(button4x, button4y, (button4x + button4width), (button4y + button4height), c_white, c_white, 1)
        draw_set_font(global.smallfont)
        draw_text((button4x + 25), (button4y + 16), "COPY")
    }
    if gridmode
    {
        draw_roundrect_colour(button5x, button5y, (button5x + button5width), (button5y + button5height), c_green, c_green, 0)
        draw_roundrect_colour(button5x, button5y, (button5x + button5width), (button5y + button5height), c_white, c_white, 1)
        draw_set_font(global.smallfont)
        draw_text((button5x + 25), (button5y + 16), "GRID")
    }
    else
    {
        draw_roundrect_colour(button5x, button5y, (button5x + button5width), (button5y + button5height), c_red, c_red, 0)
        draw_roundrect_colour(button5x, button5y, (button5x + button5width), (button5y + button5height), c_white, c_white, 1)
        draw_set_font(global.smallfont)
        draw_text((button5x + 25), (button5y + 16), "GRID")
    }
    if (instance_exists(selectedent) && editormode)
    {
        var vars = variable_instance_get_names(selectedent)
        draw_set_font(font0)
        draw_set_halign(fa_left)
        for (var i = 0; i < array_length(vars); i++)
            draw_text_transformed(0, ((i * 10) + 100), ((vars[i] + " = ") + string(variable_instance_get(selectedent, vars[i]))), 0.8, 0.8, 0)
    }
}
