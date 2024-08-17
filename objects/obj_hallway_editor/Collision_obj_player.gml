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
		
		obj_player1.tauntstoredmovespeed = obj_player1.movespeed
		obj_player1.tauntstoredvsp = obj_player1.vsp
		obj_player1.tauntstoredsprite = obj_player1.sprite_index
		obj_player1.tauntstoredstate = obj_player1.state
		obj_player1.state = states.titlescreen
		
		obj_player2.tauntstoredmovespeed = obj_player2.movespeed
		obj_player2.tauntstoredvsp = obj_player2.vsp
		obj_player2.tauntstoredsprite = obj_player2.sprite_index
		obj_player2.tauntstoredstate = obj_player2.state
		obj_player2.state = states.titlescreen
		
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
