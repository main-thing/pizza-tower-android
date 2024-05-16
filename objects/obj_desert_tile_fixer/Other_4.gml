roomname = string_letters(room_get_name(room))
if(roomname = "realtitlescreen" || roomname = "rmlevelselect"){
	instance_destroy()
	exit;
}
for (var i = 0; i < array_length(tilesetarray);i += 1){
	var layerid = layer_tilemap_get_id(layer_get_id(tilesetarray[i]))
	if(tilemap_get_tileset(layerid) == tilesettoreplace){
		tilemap_tileset(layerid,targettileset)
	}
}