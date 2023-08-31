if (global.noisejetpack && playerid == -4)
{
	with (other)
	{
		hsp = 0;
		vsp = 0;
		landAnim = false;
		fmod_event_one_shot_3d("event:/sfx/pep/cheesejump", x, y);
		sprite_index = spr_firemouthend;
		image_index = 0;
		image_speed = 0.35;
		state = states.actor;
		other.sprite_index = spr_freemilksuprised;
		other.image_index = 0;
		other.playerid = id;
	}
}
