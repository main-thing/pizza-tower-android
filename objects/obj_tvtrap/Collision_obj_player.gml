if (other.instakillmove or other.state == states.handstandjump)
{
	//sound_play_3d("event:/sfx/misc/beerbreak", x, y);
	with (other)
	{
		scr_pummel();
		instance_destroy(other);
	}
}
