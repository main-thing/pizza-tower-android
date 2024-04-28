if(index == -1)
    exit;
if (obj_player1.state == states.debugstate)
	exit;
with (other)
{
	if (!instance_exists(obj_fadeout))
	{
		index = other.index
		obj_player1.lastroom = room
		obj_player2.lastroom = room
		obj_player1.hallway = 1
		obj_player1.hallwaydirection = other.image_xscale
		if instance_exists(obj_player2)
		{
			obj_player2.hallway = 1
			obj_player2.hallwaydirection = other.image_xscale
		}
		other.visited = 1
		scr_soundeffect(sfx_door)
		with (instance_create(x, y, obj_fadeout))
        {
            _id = other.id
            index = other.index
            custom_level = 1
        }
	}
}
