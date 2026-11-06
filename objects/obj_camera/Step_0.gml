ADD_OBJECT_EVENT_GML_HOOK;
if (room == editor_room)
    exit;

player = (obj_player1.spotlight == true) ? obj_player1 : obj_player2;

if (!instance_exists(obj_pizzaballOLD))
    targetgolf = noone;

if (collect_shake > 0)
    collect_shake *= 0.5;

if (healthshaketime > 0)
{
    healthshaketime--;
    healthshake = random_range(-2, 2);
}

if (healthshaketime == 0)
    healthshake = 0;

if (obj_player1.character == "V")
{
    if (healthold != global.playerhealth)
    {
        playerhealthup = healthold < global.hp;
        healthshaketime = 30;
        healthold = global.playerhealth;
    }
}
else if (obj_player1.character == "P")
{
    if (healthold != global.hp)
    {
        playerhealthup = healthold < global.hp;
        healthshaketime = 30;
        healthold = global.hp;
    }
}

if (global.coop == true)
{
    var p1 = player;
    var p2 = (obj_player1.spotlight == true) ? obj_player2 : obj_player;
    p2pdistance = point_distance(p1.x, 0, p2.x, 0);
    p2pdistancex = (p1.x >= p2.x) ? (-p2pdistance / 5) : (p2pdistance / 5);
}
else
{
    p2pdistancex = 0;
}

if (floor(image_index) == 10)
    shoving = false;

if (room == strongcold_endscreen || room == rm_eggplantdisclaimer || room == rm_levelselect || room == rank_room || room == timesuproom || room == Realtitlescreen || room == characterselect || room == hub_loadingscreen)
    visible = false;
else
    visible = true;

if (instance_exists(obj_debugcontroller) && !obj_debugcontroller.showhud)
    visible = false;

if (global.combo >= 10)
    global.SAGEcombo10 = true;

if (global.combo > 0)
{
    alarm[4] = 2;
    global.savedcombo = global.combo;
    var ct = global.combotime;
    
    if (ct <= 40)
    {
        if (alarm[5] == -1)
        {
            if (ct >= 20)
                alarm[5] = 12;
            else
                alarm[5] = 5;
        }
    }
    else
    {
        combobubblevisible = true;
    }
}

if (shoving == true && image_index >= 3 && bang == false)
{
    with (instance_create(x, y, obj_fallingHUDface))
    {
        if ((obj_player1.spotlight == false && obj_player1.character == "P") || (obj_player1.spotlight == true && obj_player2.character == "P"))
        {
            sprite = spr_pepinoHUDscream;
            hsp = random_range(-1, -5);
        }
        else
        {
            sprite = spr_noiseHUD_panic;
            hsp = random_range(1, 5);
        }
    }
    
    bang = true;
}

if (shoving == false)
    bang = false;

if (global.seconds <= 0 && global.minutes <= 0 && ded == false)
{
    alarm[1] = -1;
    
    if (global.miniboss || instance_exists(obj_toppinwarrior))
        alarm[2] = 1;
    else
        alarm[3] = 1;
    
    ded = true;
}
if (global.seconds > 59)
{
	global.minutes += 1;
	global.seconds -= 59;
}
if (global.timedgatetimer)
{
    if (global.timedgatetime > 0)
    {
        global.timedgatetime--;
    }
    else
    {
        global.timedgatetime = 0;
        global.timedgatetimer = false;
    }
}