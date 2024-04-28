with (obj_player)
{
	if (object_index != obj_player2 or global.coop)
	{
		if (targetDoor == "S" && secretportalID == other.id)
		{
			x = other.x
			y = other.y
			roomstartx = x
			roomstarty = y
			with (obj_followcharacter)
			{
				x = other.x
				y = other.y
			}
			with (obj_pizzaface)
			{
				x = other.x
				y = other.y
			}
			global.secretfound++
			other.start = 0
			other.image_index = 0
			other.sprite_index = spr_secretportal_spawnopen
		}
	}
}
