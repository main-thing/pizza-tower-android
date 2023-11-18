global.collect += 100
global.pizza += 1
instance_create(x, y, obj_100)
scr_sound(va_happy1, va_happy2, va_happy3)
audio_sound_gain(sfx_bigcollect, 1, 0)
audio_play_sound(sfx_bigcollect, 1, false)
instance_destroy()
