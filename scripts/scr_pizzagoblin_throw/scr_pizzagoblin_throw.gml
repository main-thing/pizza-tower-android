function scr_pizzagoblin_throw()
{
	if !variable_global_exists("throw_data")
	{
		global.throw_data[obj_pizzagoblin] = [11, spr_pizzagoblin_throwbomb, 200];
		global.throw_data[obj_canongoblin] = [13, spr_canongoblin_throwbomb, 200];
        global.throw_data[obj_noisegoblin] = [18, spr_archergoblin_shoot, 200];
        global.throw_data[obj_cheeserobot] = [6, spr_cheeserobot_attack, 200];
        global.throw_data[obj_spitcheese] = [2, spr_spitcheese_spit, 100];
        global.throw_data[obj_bazookabaddie] = [7, spr_tank_shoot, 400];
        global.throw_data[obj_trash] = [2, spr_trash_throw, 100];
        global.throw_data[obj_invtrash] = [2, spr_invtrash_throw, 100];
        global.throw_data[obj_robot] = [2, spr_robot_attack, 150];
        global.throw_data[obj_kentukykenny] = [8, spr_kentukykenny_throw, 200];
        global.throw_data[obj_pizzard] = [6, spr_pizzard_shoot, 100];
        global.throw_data[obj_pepgoblin] = [3, spr_pepgoblin_kick, 200];
        global.throw_data[obj_pepbat] = [8, spr_pepbat_kick, 200];
        global.throw_data[obj_swedishmonkey] = [15, spr_swedishmonkey_eat, 200];
        global.throw_data[obj_rancher] = [10, spr_ranch_shoot, 100];
        global.throw_data[obj_pickle] = [2, spr_pickle_attack, 200];
        global.throw_data[obj_tank] = [6, spr_tank_shoot, 100];
        global.throw_data[obj_thug_blue] = [9, spr_shrimp_knife, 60];
        global.throw_data[obj_thug_green] = [9, spr_shrimp_knife, 60];
        global.throw_data[obj_thug_red] = [9, spr_shrimp_knife, 60];
        global.throw_data[obj_smokingpizzaslice] = [13, spr_pizzaslug_cough, 10];
        global.throw_data[obj_miniufo] = [3, spr_ufolive_shoot, 100];
        global.throw_data[obj_kentukybomber] = [7, spr_kentukybomber_attack, 100];
        global.throw_data[obj_miniufo_grounded] = [11, spr_ufogrounded_shoot, 100];
		
		global.throw_data[obj_trashOLD] = [2, spr_trash_throw, 100];
	}
	
	hsp = 0
	if place_meeting(x, y + 1, obj_railh)
		hsp = -5
	else if place_meeting(x, y + 1, obj_railh2)
		hsp = 5
	
	if floor(image_index) == image_number - 1
	{
		state = states.walk
		sprite_index = walkspr
	}
	
	if bombreset <= 0 && floor(image_index) == global.throw_data[object_index][0]
	{
		bombreset = global.throw_data[object_index][2]
		sprite_index = global.throw_data[object_index][1]
		if point_in_rectangle(x, y, camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), (camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])), (camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])))
			scr_soundeffect(sfx_enemyprojectile)
		
		switch object_index
		{
			case obj_pizzagoblin:
				with (instance_create(x, y, obj_pizzagoblinbomb))
				{
					defused = 1
					movespeed = 5
					image_xscale = other.image_xscale
					vsp = -10
					countdown = 80
				}
				break
			case obj_canongoblin:
				with (instance_create(x, y, obj_canongoblinbomb))
					image_xscale = other.image_xscale
				break
			case obj_noisegoblin:
				with (instance_create(x, y, obj_noisegoblin_arrow))
				{
				}
				break
			case obj_cheeserobot:
				with (instance_create(x, y, obj_cheeseblob))
				{
					sprite_index = spr_cheeserobot_goop
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 8)
					vsp = 0
					grav = 0
				}
				break
			case obj_spitcheese:
				if (spitcheesespr == spr_spitcheese_spit)
				{
					with (instance_create((x + (image_xscale * 6)), (y - 6), obj_spitcheesespike))
					{
						image_xscale = other.image_xscale
						hsp = (other.image_xscale * 5)
						vsp = -6
					}
				}
				else
				{
					with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
					{
						image_xscale = other.image_xscale
						hsp = (other.image_xscale * 5)
						vsp = -6
					}
				}
				break
			case obj_trash:
			case obj_invtrash:
				with (instance_create((x + (image_xscale * 6)), (y - 6), obj_cheeseball))
				{
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 5)
					vsp = -4
				}
				break
			case obj_robot:
				with (instance_create((x + (image_xscale * 4)), y, obj_robotknife))
				{
					grav = 0
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 5)
				}
				break
			case obj_kentukykenny:
				with (instance_create(x, y, obj_kentukykenny_projectile))
					image_xscale = other.image_xscale
				break
			case obj_pizzard:
				with (instance_create(x, y, obj_pizzard_bolt))
					image_xscale = other.image_xscale
				break
			case obj_swedishmonkey:
				if elite
				{
					with (instance_create(x, y, obj_evilbanana))
					{
						baddieID = other.id
						image_xscale = other.image_xscale
						hsp = ((-other.image_xscale) * 4)
						vsp = -5
					}
				}
				else
				{
					with (instance_create(x, y, obj_slipnslide))
					{
						baddieID = other.id
						image_xscale = other.image_xscale
						hsp = ((-other.image_xscale) * 4)
						vsp = -5
					}
				}
				with (obj_slipnslide)
				{
					if (baddieID == other.id)
						banana += 1
				}
				with (obj_evilbanana)
				{
					if (baddieID == other.id)
						banana += 1
				}
				break
			case obj_pepgoblin:
				with (instance_create(x, y, obj_pepgoblin_kickhitbox))
				{
					baddieID = other.id
					image_xscale = other.image_xscale
				}
				break
			case obj_pepbat:
				with (instance_create(x, y, obj_pepgoblin_kickhitbox))
				{
					baddieID = other.id
					image_xscale = other.image_xscale
				}
				break
			case obj_pickle:
				attacking = 0
				with (instance_create(x, y, obj_forkhitbox))
				{
					ID = other.id
					image_xscale = other.image_xscale
					sprite_index = other.sprite_index
				}
				break
			case obj_tank:
				with (instance_create((x + (image_xscale * 6)), (y - 6), obj_canongoblinbomb))
				{
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 5)
				}
				break
			case obj_thug_blue:
			case obj_thug_red:
				with (instance_create((x + (8 * image_xscale)), y, obj_robotknife))
				{
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 5)
				}
				break
			case obj_rancher:
				with (instance_create((x + (image_xscale * 6)), (y + 26), obj_rancher_bullet))
					image_xscale = other.image_xscale
				break
			case obj_smokingpizzaslice:
				substate = choose(states.walk, states.idle, states.idle)
				if (substate == states.walk)
					image_xscale = choose(-1, 1, (-image_xscale))
				substate_buffer = substate_max
				with (instance_create((x + (50 * image_xscale)), (y + 20), obj_smokingprojectile))
					image_xscale = other.image_xscale
				break
			case obj_thug_green:
				with (instance_create((x + (8 * image_xscale)), y, obj_junkenemy))
				{
					image_xscale = other.image_xscale
					hsp = (other.image_xscale * 7)
					vsp = -8
				}
				break
			case obj_miniufo:
				instance_create(x, y, obj_warplaser)
			case obj_trashOLD:
				instance_create(x, y, obj_cheeseball)
				break
			case obj_miniufo_grounded:
				with (instance_create((x + (8 * image_xscale)), y, obj_enemybullet))
				{
					sprite_index = spr_ufogrounded_bullet
					image_xscale = other.image_xscale
				}
				break
			case obj_kentukybomber:
				instance_create(x, (y + 70), obj_kentukybomb)
				break
			case obj_bazookabaddie:
				var xx = (x + (72 * image_xscale))
				instance_create(xx, y, obj_bazooka)
				create_particle(xx, y, particle.balloonpop)
				break
		}

	}
	if ((!grounded) && hsp < 0)
		hsp += 0.1
	else if ((!grounded) && hsp > 0)
		hsp -= 0.1
}
