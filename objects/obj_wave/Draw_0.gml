shader_set(shdr_wind)
shader_set_uniform_f(uTime, (current_time / 1000))
draw_sprite_stretched(background_sprite, 0, 0, 0, room_width, room_height)
shader_reset()