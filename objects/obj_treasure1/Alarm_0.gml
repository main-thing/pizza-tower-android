with (playerid){
	state = states.bossintro
	sprite_index = spr_idle
}
with(instance_create(noise_spawn_x, noise_spawn_y, obj_noise_normalT1)){
	minutes = other.minutes
	seconds = other.seconds
	noise_walk_sprite = other.noise_walk_sprite
	noise_button_sprite = other.noise_button_sprite
	sprite_index = noise_walk_sprite
}
