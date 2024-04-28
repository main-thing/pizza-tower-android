// credits: https://gist.github.com/tabularelf/547b62efbcb0beaa8e6478afae8e693f

/// @func ds_list_from_array(array)
/// @param array
/// @param [convert_children]
function ds_list_from_array(_array, _nested = true) {
	
	// Error Checking
	if !is_array(_array) {
		__ds_struct_array_conversion_throw("Not an array");   
	}
	
	var _len = array_length(_array);
	
	var _list = ds_list_create();
	ds_list_set(_list,_len-1,0);
	var _i = 0;
	repeat(_len) {
		var _index = _array[_i];
		
		if (_nested) {
			if is_struct(_index) {
				// Struct
				_list[| _i] = _index;
				ds_list_mark_as_map(_list, _i);
				++_i;
				continue;
			} else if is_array(_index) {
				// Array
				_list[| _i] = _index;
				ds_list_mark_as_list(_list, _i);
				++_i;
				continue;
			}
		}
		
		_list[| _i] = _index;
		++_i;
	}
	
	return _list;
}
