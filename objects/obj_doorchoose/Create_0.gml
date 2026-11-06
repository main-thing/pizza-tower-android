ADD_OBJECT_EVENT_GML_HOOK;
typing = 0;
text = "";
match = "";
read_input = true;
draw_height = 270;
rooms = [];
for(var i = real(room_first); room_exists(i); i++)
	array_push(rooms, room_get_name(i));
event_inherited();

