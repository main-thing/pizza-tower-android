function scr_dotaunt()
{
	if (key_taunt2 or input_finisher_buffer > 0)
	{
		input_finisher_buffer = 0
		if (!finisher)
		{
			if(variable_instance_exists(self,"tauntsound")){
				if(audio_exists(tauntsound)){
					scr_soundeffect(tauntsound)
				} else{
					scr_soundeffect(sfx_taunt) // fallback incase this var somehow gets deleted
				}
			} else{
				scr_soundeffect(sfx_taunt) // fallback incase this var somehow gets deleted
			}
			taunttimer = 20
			tauntstoredmovespeed = movespeed
			tauntstoredvsp = vsp
			tauntstoredsprite = sprite_index
			tauntstoredstate = state
			state = states.backbreaker
			if (supercharged && key_up)
			{
				image_index = 0
				sprite_index = choose(spr_supertaunt1, spr_supertaunt2, spr_supertaunt3, spr_supertaunt4)
			}
			else
			{
				taunttimer = 20
				sprite_index = spr_taunt
				image_index = random_range(0, 11)
			}
			with (instance_create(x, y, obj_taunteffect))
				player = other.id
		}
	}
}
