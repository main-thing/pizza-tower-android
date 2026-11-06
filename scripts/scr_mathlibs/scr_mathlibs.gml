function Vector2(_a0, _a1) constructor
{
	x = _a0
	y = _a1
}

function cycle(_a0, _a1, _a2)
{
	var delta = (_a2 - _a1)
	var result = ((_a0 - _a1) % delta)
	if (result < 0)
		result += delta
	return (result + _a1);
}

function angle_rotate(_a0, _a1, _a2)
{
	var diff = cycle((_a1 - _a0), -180, 180)
	if (diff < (-_a2))
		return (_a0 - _a2);
	if (diff > _a2)
		return (_a0 + _a2);
	return _a1;
}

function get_velocity(_a0, _a1)
{
	return (_a0 / _a1);
}

function Wave(from, to, duration, offset, time = noone)
{
	// https://forum.gamemaker.io/index.php?threads/wave-script.62475/
	var a4 = (to - from) * 0.5;
	
	var t = current_time;
	if time != noone
		t = time;
	return from + a4 + (sin((((t * 0.001) + (duration * offset)) / duration) * (pi * 2)) * a4);
}

function distance_to_pos(_a0, _a1, _a2, _a3, _a4, _a5)
{
	return (abs((_a0 - _a2)) <= _a4 && abs((_a1 - _a3)) <= _a5);
}

function distance_between_points(_a0, _a1, _a2, _a3)
{
	return sqrt((sqr((_a2 - _a0)) + sqr((_a3 - _a1))));
}

function calculate_jump_velocity_alt(_a0, _a1, _a2, _a3)
{
	var xx = (_a0 - x)
	var yy = (_a1 - y)
	var g = _a3
	var tmp = (power(_a2, 4) - (g * ((g * power(xx, 2)) + ((2 * yy) * power(_a2, 2)))))
	if (tmp > 0)
	{
		if (xx == 0)
		{
			var a1 = pi / 2
			if (yy < 0)
				var a2 = -pi / 2
			else
				a2 = pi / 2
		}
		else
		{
			a1 = arctan2((power(_a2, 2) + sqrt(tmp)), (g * xx))
			a2 = arctan2((power(_a2, 2) - sqrt(tmp)), (g * xx))
		}
		hsp = ((cos(a1) * _a2) * 1.2)
		vsp = (cos(a2) * _a2)
		if (vsp > 0)
			vsp *= -1
		hsp = (abs(hsp) * sign(xx))
	}
	exit;
}

function calculate_jump_velocity(_a0, _a1, _a2, _a3)
{
	var a = get_projectile_angle(x, y, _a0, _a1, _a2, _a3)
	hsp = lengthdir_x(_a2, a)
	vsp = lengthdir_y(_a2, a)
	exit;
}

function get_projectile_angle(_a0, _a1, _a2, _a3, _a4, _a5)
{
	var xt = floor((_a2 - _a0))
	var yt = (-(floor((_a3 - _a1))))
	var root = (power(_a4, 4) - (_a5 * ((_a5 * sqr(xt)) + ((2 * sqr(_a4)) * yt))))
	var angle = 0
	if (root > 0)
	{
		angle = radtodeg(arctan(((sqr(_a4) + sqrt(root)) / (_a5 * xt))))
		if (xt < 0)
			angle -= 180
	}
	else if (xt > 0)
		angle = 45
	else
		angle = 135
	return angle;
}

