image_speed = 0.35
if(string_pos("strongcold_", room_get_name(room)) == 1){
	image_xscale = image_xscale * 2
	image_yscale = image_yscale * 2
	instance_change(obj_iceblock_strongcold, false)
}