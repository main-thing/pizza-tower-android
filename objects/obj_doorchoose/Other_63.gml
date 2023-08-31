var i_d = ds_map_find_value(async_load, "id");
if i_d == lemsg {
	if ds_map_find_value(async_load, "status") {
		if (ds_map_find_value(async_load, "result") != "") {
			if (room_exists(asset_get_index(ds_map_find_value(async_load, "result")))) {
				targetRoom = asset_get_index(ds_map_find_value(async_load, "result"))
				with(theplayer) {
					obj_player1.lastroom = room
					obj_player2.lastroom = room
					scr_soundeffect(sfx_door)
					obj_camera.chargecamera = 0
					ds_list_add(global.saveroom, id)
					if (object_index == obj_player1) {
						if obj_player1.isgustavo
						obj_player1.sprite_index = spr_ratmount_enterdoor
						else obj_player1.sprite_index = obj_player1.spr_lookdoor
					}
					if (object_index == obj_player2) obj_player2.sprite_index = obj_player2.spr_lookdoor
					obj_player1.targetDoor = other.targetDoor
					obj_player1.targetRoom = other.targetRoom
					obj_player2.targetDoor = other.targetDoor
					obj_player2.targetRoom = other.targetRoom
					with(obj_player) {
						image_index = 0
						if (state != states.gotoplayer) state = states.door
						mach2 = 0
					}
					if (instance_exists(obj_player2) && global.coop == true) {
						if (object_index == obj_player2) {
							obj_player1.x = obj_player2.x
							obj_player1.y = obj_player2.y
						}
						if (object_index == obj_player1) {
							obj_player2.x = obj_player1.x
							obj_player2.y = obj_player1.y
						}
					}
					with(obj_player2) {
						if instance_exists(obj_coopplayerfollow)
						state = states.gotoplayer
					}
					other.visited = 1
					instance_create(x, y, obj_fadeout)
				}
			}
		}
	}
    wentin = 0
}