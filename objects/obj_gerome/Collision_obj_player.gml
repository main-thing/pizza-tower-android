ADD_OBJECT_EVENT_GML_HOOK;
if (escape)
{
	if ((!grabbed) && (other.state == states.handstandjump or other.state == states.punch or other.state == states.lungeattack) && unpickable == 0)
	{
		instance_create((x + (obj_player1.xscale * 40)), y, obj_punchdust)
		with (other)
		{
			image_index = 0
			sprite_index = spr_haulingstart
			baddiegrabbedID = other.id
			grabbingenemy = 1
			state = states.grab
		}
		playerid = other.object_index
		grabbed = 1
	}
	if ((!grabbed) && unpickable == 0 && (!ratgrabbed) && other.state == states.ratmountattack)
	{
		ratplayerid = other.id
		ratgrabbed = 1
		state = states.ratgrabbed
		other.ratgrabbedID = id
		other.state = states.ratmount
	}
}
else
{
	ds_list_add(global.saveroom, id)
	global.gerome = 1
	instance_create(x, y, obj_geromefollow)
	instance_destroy()
	with (obj_player)
	{
		roomstartx = other.x
		roomstarty = other.y
	}
}