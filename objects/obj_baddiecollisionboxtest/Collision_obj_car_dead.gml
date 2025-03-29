if (instance_exists(baddieID) && other.thrown == true)
{
	global.hit += 1
	global.combotime = 60
	instance_destroy()
	instance_destroy(baddieID)
}
