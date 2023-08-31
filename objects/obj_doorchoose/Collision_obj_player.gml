if locked
	exit;
var _actor = 0
with (obj_player)
{
	if (state == states.actor)
		_actor = 1
}
if _actor
	exit;
if global.horse
	exit;
if (john && global.panic)
	exit;
if (!(place_meeting(x, y, obj_doorblocked)))
{
	with (other)
	{
		if (key_up && (!instance_exists(obj_jumpscare)) && grounded && ((state == states.ratmount && brick) or state == states.normal or state == states.mach1 or state == states.mach2 or state == states.pogo or state == states.mach3 or state == states.Sjumpprep) && y == (other.y + 50) && (!instance_exists(obj_noisesatellite)) && (!instance_exists(obj_fadeout)) && state != states.door && state != states.comingoutdoor)
		{
			if(other.wentin == 0){
				other.theplayer = self
				other.lemsg = get_string_async("Target Room?","entrance_1")
				other.wentin = 1
			}
		}
	}
}
