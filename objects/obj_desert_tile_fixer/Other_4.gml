roomname = string_letters(room_get_name(room))
if(nosecret && roomname == levelname + "secret"){
	exit;
}
if(roomname = "realtitlescreen" || roomname = "rmlevelselect"){
	instance_destroy()
	exit;
}
if(string_pos(levelname,roomname) == 1 && string_pos(ignoresubroom,roomname) == 0){
	if(tilemap_get_tileset(layer_tilemap_get_id(layer_get_id("Tiles_1")))) 
		tilemap_tileset(layer_tilemap_get_id(layer_get_id("Tiles_1")),targettileset)
	if(tilemap_get_tileset(layer_tilemap_get_id(layer_get_id("Tiles_2"))) != ignoretileset) 
		tilemap_tileset(layer_tilemap_get_id(layer_get_id("Tiles_2")),targettileset)
	if(tilemap_get_tileset(layer_tilemap_get_id(layer_get_id("Tiles_Foreground1"))) != ignoretileset) 
		tilemap_tileset(layer_tilemap_get_id(layer_get_id("Tiles_Foreground1")),targettileset)
	if(tilemap_get_tileset(layer_tilemap_get_id(layer_get_id("Tiles_BG"))) != ignoretileset) 
		tilemap_tileset(layer_tilemap_get_id(layer_get_id("Tiles_BG")),targettileset)
}
// ignore this abhorrent code
// gml command can do all of this (in v10 prev), apart from room_get_name(room)