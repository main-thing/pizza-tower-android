ADD_OBJECT_EVENT_GML_HOOK;
hsp = (image_xscale * movespeed)
mask_index = spr_player_mask
if (scr_solid(x, (y + 1)) && vsp > 0)
{
	vsp = -5
	if (movespeed > 0)
		movespeed -= 1
}
if (obj_explosion != obj_dynamiteexplosion_boss && obj_explosion != obj_canonexplosion && playerid.key_shoot2 && playerid.state != states.dynamite)
{
	instance_destroy()
	instance_create(x, y, obj_explosion)
}
var _obj = [obj_baddie, obj_destructibles, obj_metalblock, obj_ratblock, obj_tntblock, obj_bombblock]
for (var i = 0; i < array_length(_obj); i++)
{
	if (place_meeting((x + hsp), y, _obj[i]) or place_meeting(x, (y + vsp), _obj[i]) or (obj_explosion != obj_canonexplosion && place_meeting(x, y, _obj[i])))
	{
		instance_destroy()
		instance_create(x, y, obj_explosion)
		break
	}
}
if (place_meeting((x + hsp), y, obj_solid) or place_meeting((x + hsp), (y + vsp), obj_destructibles) or (obj_explosion != obj_canonexplosion && place_meeting(x, y, obj_baddie)))
	image_xscale *= -1
if (countdown <= 0)
{
	instance_destroy()
	instance_create(x, y, obj_explosion)
}
if (sprite_index == spr_dynamite && countdown < 60)
	sprite_index = spr_dynamiteabouttoexplode
if (sprite_index == spr_dynamite or sprite_index == spr_dynamiteabouttoexplode)
	countdown--
scr_collide()
