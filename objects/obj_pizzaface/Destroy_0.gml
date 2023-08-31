with (instance_create(x, y, obj_shakeanddie)){
	if (global.oldsprites) {
		sprite_index = other.sprite_index
	} else {
		sprite_index = spr_pizzahead_intro1
	}
}
scr_soundeffect(sfx_explosion)
scr_soundeffect(sfx_groundpound)
