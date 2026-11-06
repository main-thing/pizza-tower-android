ADD_OBJECT_EVENT_GML_HOOK;
live_auto_call;
var _actor = 0;
with (obj_player)
	_actor = (state == states.actor);	
if(_actor || global.horse || locked || (john && global.panic)) || (place_meeting(x, y, obj_doorblocked))
	exit;

with (other)
{
	if (key_up && (!instance_exists(obj_jumpscare)) && grounded && ((state == states.ratmount && brick) or state == states.normal or state == states.mach1 or state == states.mach2 or state == states.pogo or state == states.mach3 or state == states.Sjumpprep) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != states.door && state != states.comingoutdoor)
	{
		instance_deactivate_object(obj_pause);
		other.player = id;
		other.typing = true;
		keyboard_string = "";
		obj_player1.state = states.titlescreen;
	}
}
