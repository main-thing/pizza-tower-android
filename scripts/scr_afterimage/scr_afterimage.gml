function create_afterimage(_a0, _a1, _a2, _a3, _a4 = 1)
{
	var q = 
	{
		x: _a0,
		y: _a1,
		sprite_index: _a2,
		image_index: _a3,
		alarm: [15, 3, -1],
		image_blend: choose(global.afterimage_color1, global.afterimage_color2),
		image_xscale: _a4,
		identifier: afterimage.afterimage,
		visible: true,
		alpha: 1
	}

	ds_list_add(global.afterimage_list, q)
	return q;
}

function create_mach3effect(_a0, _a1, _a2, _a3, _a4 = 1)
{
	var q = 
	{
		x: _a0,
		y: _a1,
		sprite_index: _a2,
		image_index: _a3,
		alarm: [15, 6, -1],
		image_blend: choose(global.mach_color1, global.mach_color2),
		image_xscale: _a4,
		visible: true,
		identifier: afterimage.mach3effect,
		playerid: obj_player1,
		alpha: 1
	}

	ds_list_add(global.afterimage_list, q)
	return q;
}

function create_heatattack_afterimage(_a0, _a1, _a2, _a3, _a4)
{
	var _velocity = 6
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.heatattack
		alarm[1] = -1
		alarm[2] = -1
		alarm[0] = 8
		image_xscale = _a4
		hsp = _velocity
		vsp = 0
	}
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.heatattack
		alarm[1] = -1
		alarm[2] = -1
		alarm[0] = 8
		image_xscale = _a4
		hsp = -_velocity
		vsp = 0
	}
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.heatattack
		alarm[1] = -1
		alarm[2] = -1
		alarm[0] = 8
		image_xscale = _a4
		hsp = 0
		vsp = _velocity
	}
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.heatattack
		alarm[1] = -1
		alarm[2] = -1
		alarm[0] = 8
		image_xscale = _a4
		hsp = 0
		vsp = -_velocity
	}
}

function create_firemouth_afterimage(_a0, _a1, _a2, _a3, _a4)
{
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.firemouth
		alarm[0] = -1
		alarm[1] = -1
		alarm[2] = -1
		image_xscale = _a4
		image_blend = global.firemouth_color
		alpha = 1.25
	}
}

function create_blue_afterimage_player(_a0, _a1, _a2, _a3, _a4)
{
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.blue
		alarm[0] = -1
		alarm[1] = -1
		alarm[2] = -1
		image_xscale = _a4
		image_blend = global.afterimage_color3
		alpha = 1.25
	}
}

function create_blue_afterimage(_a0, _a1, _a2, _a3, _a4)
{
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.blue
		alarm[0] = -1
		alarm[1] = -1
		alarm[2] = -1
		image_xscale = _a4
		image_blend = make_color_rgb(44, 126, 228)
		alpha = 1.25
	}
}

function create_custom_afterimage(_a0, _a1, _a2, _a3, _a4, _a5, _a6, _a7 = 1)
{
	with create_afterimage(_a0, _a1, _a2, _a3)
	{
		identifier = afterimage.custom
		alarm[0] = -1
		alarm[1] = -1
		alarm[2] = -1
		image_xscale = _a4
		image_yscale = _a7
		image_blend = _a5
		alpha = _a6
	}
}
function create_red_afterimage(_x, _y, _sprite, _image_index, _xscale)
{
	
	create_custom_afterimage(_x, _y, _sprite, _image_index, _xscale, make_color_rgb(223, 47, 0), 1.25)
}
function create_blur_afterimage(_a0, _a1, _a2, _a3, _a4)
{
	var b = create_afterimage(_a0, _a1, _a2, _a3)
	with b
	{
		identifier = afterimage.blur
		alarm[0] = -1
		alarm[1] = -1
		alarm[2] = -1
		image_blend = c_white
		image_xscale = _a4
		alpha = 0.8
		playerid = noone
	}
	return b;
}