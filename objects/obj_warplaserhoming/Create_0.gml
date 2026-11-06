ADD_OBJECT_EVENT_GML_HOOK;
player = instance_nearest(x, y, obj_player)
direction = point_direction(x, y, player.x, player.y)
speed = 6
image_speed = 0.35
image_angle = direction
