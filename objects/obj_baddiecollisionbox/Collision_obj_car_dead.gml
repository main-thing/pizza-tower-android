if (instance_exists(baddieID) && other.thrown == true && baddieID.destroyable)
{
	if (!baddieID.important)
	{
		global.style += (5 + global.combo)
		global.combotime = 60
		global.heattime = 60
	}
	instance_destroy()
	instance_destroy(baddieID)
}
