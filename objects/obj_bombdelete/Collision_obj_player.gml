ADD_OBJECT_EVENT_GML_HOOK;
if (!collide)
{
	if (other.state == states.handstandjump or other.state == states.lungeattack)
	{
		other.state = states.bombdelete
		collide = 1
	}
}
