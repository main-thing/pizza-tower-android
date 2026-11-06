ADD_OBJECT_EVENT_GML_HOOK;
if (sprite_index == spr_noise_button && floor(image_index) == (image_number - 1))
{
    hspeed = image_xscale * -2.8
    image_xscale *= -1
    sprite_index = spr_noise_walk
}
if(!activated) {
	global.combotime = 60
	if (floor(image_index) == 86) {
		activated = 1
		instance_create(x, y, obj_itspizzatime)
	    global.panic = 1
		global.minutes = minutes 
		global.seconds = seconds 
		global.fill = ((global.minutes * 60) + global.seconds) * 12
		with(obj_tv)
			chunkmax = global.fill
		with(obj_player) {
			state = states.bossintro
			sprite_index = spr_bossintro
			scr_soundeffect(sfx_scream5)
		}
	}
}
scr_collide()