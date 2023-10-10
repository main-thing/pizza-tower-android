visible = ((room == rank_room or room == timesuproom) ? false : playerid.visible)
if (obj_player.state == states.pizzathrow)
	visible = false
playerid = (obj_player1.spotlight ? obj_player1 : obj_player2)
var roomname = string_letters(room_get_name(room))
if (roomname == "strongcoldminiboss")
	roomname = "strongcold"
if (object_index != obj_pizzakinpineapple or (sprite_index != spr_monsterpineapple_smile && sprite_index != spr_monsterpineapple_pose1 && sprite_index != spr_monsterpineapple_pose2 && sprite_index != spr_monsterpineapple_pose3))
{
	switch roomname
	{
		case "strongcold":
			if (sprite_index == spr_intro_strongcold && floor(image_index) == (image_number - 1))
				sprite_index = spr_idle_strongcold
			if (sprite_index != spr_intro_strongcold)
			{
				//image_alpha = playerid.image_alpha
				sprite_index = (yprev != y ? spr_run_strongcold : spr_idle_strongcold)
				depth = -6
			}
			break
		default:
			if (sprite_index == spr_intro && floor(image_index) == (image_number - 1))
				sprite_index = spr_idle
			if (sprite_index != spr_intro)
			{
				//image_alpha = playerid.image_alpha
				sprite_index = (xprev != x ? spr_run : spr_idle)
				depth = -6
			}
			break
	}

	if (global.panic && sprite_index == spr_idle)
		sprite_index = spr_panic
}
else if (object_index == obj_pizzakinpineapple)
{
	if (image_index > (image_number - 1))
	{
		image_index = 0
		sprite_index = spr_toppinpineapple
	}
}
