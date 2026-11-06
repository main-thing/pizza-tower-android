ADD_OBJECT_EVENT_GML_HOOK;
if (playerid.state != states.lungeattack && playerid.state != states.handstandjump)
{
	instance_destroy()
	exit;
}
x = (playerid.x + (24 * playerid.xscale))
y = playerid.y
