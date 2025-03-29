if (instance_exists(baddieID) && baddieID.instantkillable)
{
	global.hit += 1
	global.combotime = 60
	instance_destroy(baddieID)
	instance_destroy()
}
