if (instance_exists(baddieID) && baddieID.instantkillable && baddieID.destroyable)
{
	if (!baddieID.important)
	{
		global.style += (5 + global.combo)
		global.combotime = 60
		global.heattime = 60
	}
	instance_destroy(baddieID)
	instance_destroy()
}
