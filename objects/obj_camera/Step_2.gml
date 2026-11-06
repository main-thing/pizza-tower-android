ADD_OBJECT_EVENT_GML_HOOK;
if (!instance_exists(obj_ghostcollectibles))
{
    if ((global.panic == true && global.minutes < 1) || player.sprite_index == spr_player_timesup)
    {
        shake_mag = 2;
        shake_mag_acc = 3 / room_speed;
    }
    else if (global.panic == true && basement == false)
    {
        shake_mag = 2;
        shake_mag_acc = 3 / room_speed;
    }
}

if (shake_mag > 0)
{
    shake_mag -= shake_mag_acc;
    
    if (shake_mag < 0)
        shake_mag = 0;
}

targetzoom = min(2.5, targetzoom);
var nw = lerp(camera_get_view_width(view_camera[0]), targetzoom * original_cam_width, zoomspd);
var nh = lerp(camera_get_view_height(view_camera[0]), targetzoom * original_cam_height, zoomspd);
camera_set_view_size(view_camera[0], nw, nh);
follow_golf = false;
camera_y = (global.oldhud ? 0 : 50);

if (instance_exists(player) && player.state != states.timesup && player.state != states.gameover && !follow_golf && !detach)
{
    if (room != custom_lvl_room)
    {
        var target = player;
        var coopdistance = distance_to_object(obj_player2) / 2;
        
        if (player.state == states.mach2 || player.state == states.mach3)
        {
            var _targetcharge = player.xscale * ((player.movespeed / 4) * 50);
            var _tspeed = 0.3;
            chargecamera = Approach(chargecamera, _targetcharge, _tspeed);
        }
        else if ((abs(player.hsp) >= 16 || (player.state == states.chainsaw && player.tauntstoredmovespeed >= 16)) && player.state != states.climbwall && player.state != states.Sjump)
        {
            var _targetcharge = player.xscale * ((abs(player.movespeed) / 4) * 50);
            var _tspeed = 2;
            
            if ((_targetcharge > 0 && chargecamera < 0) || (_targetcharge < 0 && chargecamera > 0))
                _tspeed = 8;
            
            chargecamera = Approach(chargecamera, _targetcharge, _tspeed);
        }
        else if (player.state == states.machslide)
        {
            chargecamera = Approach(chargecamera, 0, 10);
        }
        else
        {
            chargecamera = Approach(chargecamera, 0, 6);
        }
        
        var cam_width = camera_get_view_width(view_camera[0]);
        var cam_height = camera_get_view_height(view_camera[0]);
		var vw = camera_get_view_width(view_camera[0]);
        
        if (targetgolf != -4 && !instance_exists(targetgolf))
            targetgolf = -4;
        
        var cam_x, cam_y;
        
        if (targetgolf == -4)
        {
            if (!global.coop || room == characterselect || room == rm_levelselect || room == Realtitlescreen)
            {
                cam_x = (target.x - (cam_width / 2)) + chargecamera + p2pdistancex;
                cam_y = target.y - (cam_height / 2) - camera_y;
                cam_x = clamp(cam_x, 0, room_width - cam_width);
                cam_y = clamp(cam_y, 0, room_height - cam_height);
                camera_zoom(1, 0.035);
            }
            else if (obj_player2.state != states.titlescreen)
            {
                cam_x = ((obj_player1.x + obj_player2.x) / 2) - (cam_width / 2);
                cam_y = ((obj_player1.y + obj_player2.y) / 2) - (cam_height / 2);
                var disx = abs(obj_player1.x - obj_player2.x) / coop_zoom_width;
                var disy = abs(obj_player1.y - obj_player2.y) / coop_zoom_height;
                var dis = max(disx, disy);
                dis = max(1, dis);
                camera_zoom(dis, 0.035);
            }
        }
        else
        {
            var _px = 0;
            var _py = 0;
            
            if (global.coop)
            {
                _px = obj_player2.x;
                _py = obj_player2.y;
            }
            
            cam_x = ((obj_player1.x + targetgolf.x + _px) / 2) - (cam_width / 2);
            cam_y = ((obj_player1.y + targetgolf.y + _py) / 2) - (cam_height / 2) - camera_y;
            var disx = abs(obj_player1.x - targetgolf.x - _px) / coop_zoom_width;
            var disy = abs(obj_player1.y - targetgolf.y - _py) / coop_zoom_height;
            var dis = max(disx, disy);
            dis = max(1, dis);
            camera_zoom(dis, 0.035);
        }
        
        if (shake_mag != 0)
        {
		    cam_x += irandom_range(-shake_mag, shake_mag);
		    cam_y += irandom_range(-shake_mag, shake_mag);
        }
        
		if (global.oldhud)
			camera_set_view_pos(view_camera[0], clamp((target.x - (camera_get_view_width(view_camera[0]) / 2)) + chargecamera + p2pdistancex, 0, room_width - camera_get_view_width(view_camera[0])), clamp((target.y - (camera_get_view_height(view_camera[0]) / 2)) + irandom_range(-shake_mag, shake_mag), 0 + irandom_range(-shake_mag, shake_mag), (room_height - camera_get_view_height(view_camera[0])) + irandom_range(-shake_mag, shake_mag)));
		else
			camera_set_view_pos(view_camera[0], cam_x, cam_y + irandom_range(-shake_mag, shake_mag));
    }
    else
    {
        var target = player;
        var coopdistance = distance_to_object(obj_player2) / 2;
        
        if (player.state == states.mach3 || player.state == states.rideweenie || player.state == states.machroll)
        {
            if (chargecamera > (player.xscale * 100))
                chargecamera -= 2;
            
            if (chargecamera < (player.xscale * 100))
                chargecamera += 2;
        }
        else
        {
            if (chargecamera > 0)
                chargecamera -= 2;
            
            if (chargecamera < 0)
                chargecamera += 2;
        }
        
        var cam_width = camera_get_view_width(view_camera[0]);
        var cam_height = camera_get_view_height(view_camera[0]);
        var cam_x = (target.x - (cam_width / 2)) + chargecamera + p2pdistancex;
        var cam_y = target.y - (cam_height / 2);
        var _room_x = 0;
        var _room_y = 0;
        var _room_width = room_width;
        var _room_height = room_height;
        
        if (bound_camera)
        {
            _room_x = target.cam.x;
            _room_y = target.cam.y;
            _room_width = target.cam_width;
            _room_height = target.cam_height;
            
            if (target.cam != noone)
            {
                instance_deactivate_object(obj_minijohn_hitbox);
                instance_deactivate_object(obj_pepgoblin_kickhitbox);
                instance_deactivate_object(obj_forkhitbox);
                instance_deactivate_object(obj_baddiecollisionbox);
                instance_deactivate_object(obj_baddie);
                instance_activate_object(obj_inputAssigner);
                offset = 64;
                instance_activate_region(_room_x - offset, _room_y - offset, _room_width + offset, _room_height + offset, true);
            }
        }
        
        if (shake_mag != 0)
        {
            cam_x += irandom_range(-shake_mag, shake_mag);
            cam_y += irandom_range(-shake_mag, shake_mag);
        }
        
        camera_set_view_pos(view_camera[0], clamp(cam_x, 0, _room_width - cam_width), clamp(cam_y, 0, _room_height - cam_height) + irandom_range(-shake_mag, shake_mag));
    }
}
else if (follow_golf)
{
    if (instance_exists(targetgolf) && targetgolf.thrown == true)
    {
        var _xx = targetgolf.x;
        var _yy = targetgolf.y;
        var _freecamera = false;
        var _room_x = 0;
        var _room_y = 0;
        var _width = room_width;
        var _height = room_height;
        
        if (room == custom_lvl_room)
        {
            if (obj_player1.cam != -4)
            {
                _room_x = obj_player1.cam.x;
                _room_y = obj_player1.cam.y;
                _width = obj_player1.cam_width;
                _height = obj_player1.cam_height;
            }
            else
            {
                _freecamera = true;
            }
        }
        
        _width -= camera_get_view_width(view_camera[0]);
        _height -= camera_get_view_height(view_camera[0]);
        _xx -= (camera_get_view_width(view_camera[0]) / 2);
        _yy -= (camera_get_view_height(view_camera[0]) / 2);
        
        if (_freecamera)
            camera_set_view_pos(view_camera[0], _xx, _yy);
        else
            camera_set_view_pos(view_camera[0], clamp(_xx, _room_x, _width), clamp(_yy, _room_y, _height));
    }
    else
    {
        targetgolf = -4;
        follow_golf = false;
    }
}
else if (detach)
{
    camera_zoom(max(room_width / original_cam_width, room_height / original_cam_height), 0.035);
    var _width = room_width;
    var _height = room_height;
    _width -= camera_get_view_width(view_camera[0]);
    _height -= camera_get_view_height(view_camera[0]);
    var _xx = camera_get_view_x(view_camera[0]);
    var _yy = camera_get_view_y(view_camera[0]);
    _xx = obj_player1.x - (camera_get_view_width(view_camera[0]) / 2);
    _yy = obj_player1.y - (camera_get_view_height(view_camera[0]) / 2);
    camera_set_view_pos(view_camera[0], _xx, _yy);
}
if (obj_player1.state == states.golfOLD)
{
	if (obj_player1.key_attack2)
	{
		detachedby = 1;
		detach = !detach;
	}
}
if (obj_player2.state == states.golfOLD && detachedby == -1)
{
	if (obj_player2.key_attack2)
	{
		detachedby = 2;
		detach = !detach;
	}
}
if (obj_player1.state != states.golfOLD && obj_player2.state != states.golfOLD)
{
	detachedby = -1;
	detach = 0;
}