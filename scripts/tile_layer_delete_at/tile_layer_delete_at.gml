function tile_layer_delete_at(_a0, _a1, _a2)
{
	var __depth = _a0
	var __x = _a1
	var __y = _a2
	var __tile_el = tile_layer_find(__depth, __x, __y)
	if (__tile_el != -1)
		layer_tile_destroy(__tile_el)
	exit;
}

