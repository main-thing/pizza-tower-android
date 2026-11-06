ADD_OBJECT_EVENT_GML_HOOK;
if (baddieID.state != states.grabbed && baddieID.state != states.pummel)
{
	var _playerinst = other.id
	baddiecollisionbox_update(_playerinst)
}
