function get_dark(_color, _a0)
{
    if (_a0)
    {
        var d = room_width * room_height
        var b = d
        var bb = b
        with (obj_lightsource)
        {
            var dis = distance_to_object(other)
            if (distance_to_object(other) < d)
            {
                bb = dis / distance
                if (bb < b)
                {
                    b = bb
                    d = dis
                }
            }
        }
        var t = (b + 0.4) * 255
        t = clamp(t, 0, 255)
        return make_color_rgb(color_get_red(_color) - t, color_get_green(_color) - t, color_get_blue(_color) - t)
	}
    else
        return image_blend
}
