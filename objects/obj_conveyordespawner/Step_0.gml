ADD_OBJECT_EVENT_GML_HOOK;
for (var i = 0; i < array_length(objectlist); i++)
{
	var b = objectlist[i]
	with (instance_place(x, y, b))
	{
		create_particle(x, y, particle.genericpoofeffect)
		instance_destroy()
	}
}
