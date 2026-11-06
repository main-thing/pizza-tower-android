ADD_OBJECT_EVENT_GML_HOOK;
if (active && other.state != states.spiderweb)
{
	other.state = states.spiderweb;
	other.webID = id;
}
