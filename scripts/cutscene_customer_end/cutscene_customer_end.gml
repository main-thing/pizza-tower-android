function cutscene_customer_check(_a0, _a1, _a2)
{
	with (obj_gnome_checklist)
		gnome_check[_a0] = 1
	global.pizzasdelivered++
	if instance_exists(obj_gnomecustomerblock)
		instance_destroy(obj_gnomecustomerblock)
	with (instance_create(_a1.x, _a1.y, obj_pizzaboxunopen))
	{
		content = _a2.content
		depth = _a1.depth
		visible = false
	}
	ds_list_add(global.saveroom, _a2.id)
	cutscene_end_action()
	exit;
}

function cutscene_customer_end(_a0)
{
	with (obj_customeractor)
		happy = 1
	cutscene_end_action()
	exit;
}

