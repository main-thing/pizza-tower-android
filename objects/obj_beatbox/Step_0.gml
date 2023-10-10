if (targetplayer.sprite_index != targetplayer.spr_breakdance)
{
	instance_create(x, y, obj_genericpoofeffect)
	instance_destroy()
}
scr_collide()
