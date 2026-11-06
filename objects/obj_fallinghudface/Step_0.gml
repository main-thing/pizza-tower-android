ADD_OBJECT_EVENT_GML_HOOK;
if (vsp < 12)
	vsp += grav
image_speed = 0.35
X += hsp
Y += floor(vsp)
if (Y > (room_height + 500))
	instance_destroy()
