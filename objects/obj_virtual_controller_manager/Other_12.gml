ADD_OBJECT_EVENT_GML_HOOK;
/// @description Load Buttons_1 layer
if(USE_ASSETS_FOR_DEFAULT_LAYOUT)
{
	var _layer_buttons = layer_get_id("Buttons_1");	
	if(_layer_buttons == -1)
		return;
	
	var _buttons = layer_get_all_elements(_layer_buttons);
	
	for(var i = 0; i < array_length(_buttons); i++)
	{
		var _button = _buttons[i];
		if(layer_get_element_type(_button) != layerelementtype_sprite)
			return;
			
		var _sprite = layer_sprite_get_sprite(_button);
		var _x = layer_sprite_get_x(_button);
		var _y = layer_sprite_get_y(_button);
		var _blend = layer_sprite_get_blend(_button);
		var _angle = layer_sprite_get_angle(_button);
		
		scr_create_default_button(_x, _y, _sprite, _blend, _angle);
	}
	
	layer_destroy(_layer_buttons);
	
	global.vkeyui_cachedlayout = virtual_key_save();
	event_user(0);
}







