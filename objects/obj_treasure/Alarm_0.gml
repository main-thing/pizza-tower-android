ADD_OBJECT_EVENT_GML_HOOK;
var p = noone
if (player == 1)
	p = obj_player1.id
else if (player == 2)
	p = obj_player2.id
		
if (!oldblock)
	p.state = states.normal
else {
	with (p) {
		state = states.bossintro
		sprite_index = spr_idle
	}
	with(instance_create(noise_spawn_x, noise_spawn_y, obj_noise_pushbutton)) {
		minutes = other.minutes
		seconds = other.seconds
		noise_walk_sprite = other.noise_walk_sprite
		noise_button_sprite = other.noise_button_sprite
		sprite_index = noise_walk_sprite
	}
}