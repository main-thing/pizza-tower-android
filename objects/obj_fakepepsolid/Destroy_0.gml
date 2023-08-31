//scr_sound_multiple("event:/sfx/misc/breakblock", x, y);
scr_soundeffect(sfx_breakblock1,sfx_breakblock2)
repeat (30)
	create_debris(irandom_range(x, x + sprite_width), irandom_range(y, y + sprite_height), spr_debris);
