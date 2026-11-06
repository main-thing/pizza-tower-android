ADD_OBJECT_EVENT_GML_HOOK;
var spr = object_get_sprite(content)
if(sprite_exists(spr) && sprite_index != spr) {
	sprite_index = spr
}
visible = global.showcollisions