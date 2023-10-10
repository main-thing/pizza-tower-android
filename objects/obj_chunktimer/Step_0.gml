if (global.panic == true && global.fill > 0 && (!instance_exists(obj_ghostcollectibles)))
	global.fill -= 0.2
if (global.fill <= 0 && global.panic == true && (!instance_exists(obj_pizzaface)))
{
	instance_create(obj_player1.x, obj_player1.y, obj_pizzaface)
	if (global.oldsprites) {
		scr_soundeffect(sfx_pizzaface)
	} else {
		scr_soundeffect(sfx_pizzafaceLaugh2)
	}
}
floor((global.fill / 100))
global.fill = clamp(global.fill, 0, 9999999999999)
