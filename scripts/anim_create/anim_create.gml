///@function anim_create(animation)
///@arg animation
function anim_create(argument0) {

	enum Anim {
		ANIMATION,
		TIME,
		FINISHED,
		ARGUMENTS
	}
	var anim = ds_list_create();
	anim[| Anim.ANIMATION] = argument0;
	anim[| Anim.TIME] = 0;
	anim[| Anim.FINISHED] = false;
	anim[| Anim.ARGUMENTS] = ds_list_create();
	ds_list_mark_as_list(anim, Anim.ARGUMENTS);
	return anim;


}
