///@function animation_bob(amplitude, frequency)
function animation_bob(argument0) {
	var anim = argument0;
	var args = anim[| Anim.ARGUMENTS];
	if(anim_begin(anim)){
		args[| 3] = y;
	}
	y = args[| 3] + args[| 0]*sin(anim[| Anim.TIME]*2*pi/args[| 1]);
	if(anim[| Anim.TIME] >= args[| 2]) anim[| Anim.FINISHED] = true;
	anim[| Anim.TIME]++;


}
