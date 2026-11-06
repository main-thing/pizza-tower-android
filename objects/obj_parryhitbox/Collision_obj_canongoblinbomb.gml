ADD_OBJECT_EVENT_GML_HOOK;
var p = (player_id == 1 ? obj_player1.id : obj_player2.id)
with (other)
	image_xscale *= -1
if (!collisioned)
	event_user(0)
