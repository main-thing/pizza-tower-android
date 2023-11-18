///@function anim_add_argument(anim, argument)
///@arg anim
///@arg argument
function anim_add_argument(argument0, argument1) {
	var args = argument0[| Anim.ARGUMENTS];
	ds_list_add(args, argument1);


}
