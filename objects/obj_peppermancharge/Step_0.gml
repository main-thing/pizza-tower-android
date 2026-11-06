ADD_OBJECT_EVENT_GML_HOOK;
x = (obj_pepperman_d1.x + (obj_pepperman_d1.image_xscale * 35))
y = (obj_pepperman_d1.y + 20)
image_xscale = obj_pepperman_d1.image_xscale
if (obj_pepperman_d1.sprite_index != spr_pepperman_charge)
	instance_destroy()
