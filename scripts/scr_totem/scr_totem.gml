function totem_empty(_a0)
{
	with (_a0)
	{
		for (var i = 0; i < array_length(cheeseID); i++)
		{
			if (cheeseID[i] == noone)
				return true;
		}
		return false;
	}
}

function totem_add(_a0, _a1)
{
	with (_a0)
	{
		for (i = 0; i < array_length(cheeseID); i++)
		{
			if (cheeseID[i] == noone)
			{
				cheeseID[i] = _a1
				return true;
			}
		}
		return false;
	}
}

function totem_clear(_a0)
{
	with (_a0)
	{
		for (i = 0; i < array_length(cheeseID); i++)
		{
			if (cheeseID[i] != noone && ((!instance_exists(cheeseID[i])) or cheeseID[i].state != states.totem))
			{
				if instance_exists(cheeseID[i])
					cheeseID[i].totemID = -4
				cheeseID[i] = noone
			}
		}
	}
}

function totem_count(_a0)
{
	var c = 0
	with (_a0)
	{
		for (i = 0; i < array_length(cheeseID); i++)
		{
			if (cheeseID[i] != -4)
				c++
		}
		return c;
	}
}
