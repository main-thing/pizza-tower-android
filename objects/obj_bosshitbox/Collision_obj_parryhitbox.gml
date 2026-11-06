ADD_OBJECT_EVENT_GML_HOOK;
if (!parryable)
	exit;
parry()
with (other)
{
	if (!collisioned)
		event_user(0)
}
