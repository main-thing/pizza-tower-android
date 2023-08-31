x = playerid.x
y = playerid.y
image_xscale = playerid.xscale
if (abs(playerid.hsp) <= 0 or playerid.movespeed < 16 or playerid.state == states.comingoutdoor or playerid.state == states.door or room == timesuproom)
	instance_destroy()
if (room == timesuproom)
	instance_destroy()
