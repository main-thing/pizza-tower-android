ADD_OBJECT_EVENT_GML_HOOK;
if (floor(image_index) >= 4 && bulletID != -4)
{
	instance_destroy(bulletID);
	bulletID = -4;
}
