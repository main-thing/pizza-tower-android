ADD_OBJECT_EVENT_GML_HOOK;
if (room == rm_editor)
	exit;
switch state
{
	case states.walk:
		if (turning == 0)
			hsp = image_xscale * movespeed
		else
			hsp = -image_xscale * movespeed
		if ((obj_player.x > (x - 400) && obj_player.x < (x + 400)) && (y + 200) > obj_player.y)
		    attack = 1;
		if (attack == 1)
		{
			if (y < obj_player.y && vsp <= 4)
				vsp += 0.5
			if (y >= obj_player.y && vsp > -4)
				vsp -= 0.5
			sprite_index = spr_piraneappleattack
			if (movespeed < 8 && turning == 0)
				movespeed += 0.1
			if (movespeed != 0 && turning == 1)
				movespeed -= 0.1
		}
		if (movespeed == 0)
			turning = 0
		if (image_xscale != sign(obj_player.x - x) && x != obj_player.x)
		{
			image_xscale = sign(obj_player.x - x)
			turning = 1
		}
		if (place_meeting(x + floor(hsp), y, obj_null))
		{
			x = floor(x)
			while (!place_meeting(x + sign(hsp), y, obj_null))
				x += sign(hsp)
			hsp = 0
		}
		x += hsp
		if (place_meeting(x, y + floor(vsp), obj_null))
		{
			y = floor(y)
			while (!place_meeting(x, y + sign(vsp), obj_null))
				y += sign(vsp)
			vsp = 0
		}
		y += floor(vsp);
		if (flash == 1 && alarm[2] <= 0)
			alarm[2] = (0.05 * room_speed)
		if (hitboxcreate == 0)
		{
			with (instance_create(x, y, obj_forkhitbox))
			{
				ID = other.id
				image_xscale = other.image_xscale
				sprite_index = other.sprite_index
				mask_index = other.mask_index
				other.hitboxcreate = 1
			}
		}
		break
	
	case states.transitioncutscene:
		flash = 0
		sprite_index = spr_piraneapplewater
		if place_meeting(x, y, obj_solid)
		{
			vsp = -11
			y += vsp
		}
		else
		{
			if grounded
			{
				state = states.walk
				sprite_index = spr_piraneappleattack
			}
			scr_collide()
		}
		break
	case states.hit:
		scr_enemy_hit()
		break
}
