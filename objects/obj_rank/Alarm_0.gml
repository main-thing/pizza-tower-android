global.levelcomplete = 1
scr_playerreset()
with (obj_player)
{
	targetDoor = "A"
	targetRoom = global.hubroom
	room = global.hubroom
	x = -100
	y = -100
	state = states.titlescreen
	image_blend = c_white
}
