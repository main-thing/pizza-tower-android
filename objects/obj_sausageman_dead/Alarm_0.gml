ADD_OBJECT_EVENT_GML_HOOK;
var a = random_range(-40, 40)
alarm[0] = 5

if (sprite_index == spr_enemyblockdead)
	instance_create(x + a, y + a, obj_machalleffect)
else
	instance_create(x + (16 + a), y + (16 + a), obj_machalleffect)