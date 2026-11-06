ADD_OBJECT_EVENT_GML_HOOK;
image_speed = 0
text = "Default text"
with (obj_player) {
	if (check_player_coop()) {
		other.tv_spr = tv_barrel
	}
}
achievement = "fk1"
