function scr_bosscontroller_particle_hp(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7) //gml_Script_scr_bosscontroller_particle_hp
{
    if ((argument7 == undefined))
        argument7 = -4
    with (obj_bosscontroller)
    {
        var q = 
        {
            type: 0,
            sprite_index: argument0,
            image_index: argument1,
            x: argument2,
            y: argument3,
            hsp: (8 * argument4),
            vsp: -6,
            spr_palette: argument5,
            paletteselect: argument6,
            palettetexture: argument7
        }

        ds_list_add(particlelist, q)
        return q;
    }
}

function scr_bosscontroller_particle_anim(argument0, argument1, argument2, argument3, argument4, argument5, argument6) //gml_Script_scr_bosscontroller_particle_anim
{
    if ((argument5 == undefined))
        argument5 = 707
    if ((argument6 == undefined))
        argument6 = 0
    with (obj_bosscontroller)
    {
        var q = 
        {
            type: 1,
            sprite_index: argument0,
            image_index: argument1,
            image_speed: argument4,
            x: argument2,
            y: argument3,
            spr_palette: argument5,
            paletteselect: argument6
        }

        ds_list_add(particlelist, q)
        q = q
        return q;
    }
}

function scr_bosscontroller_intro() //gml_Script_scr_bosscontroller_intro
{
    with (obj_player)
    {
        state = states.actor
        image_blend = make_colour_hsv(0, 0, 255)
        hsp = 0
        movespeed = 0
        flash = false
        x = roomstartx
    }
    with (bossID)
    {
        if ((state != states.actor))
            other.bossintrostate = state
        state = states.actor
        x = xstart
        y = ystart
        hsp = 0
        vsp = 0
    }
    flamey -= 4
    if ((introshake > 0))
        introshake -= introshake_acc
    var a = 0.1
    if ((arenabuffer > 0))
        arenabuffer--
    else
    {
        switch arenastate
        {
            case states.normal:
                var ptx = 0
                playerx = lerp(playerx, ptx, a)
                if ((abs((playerx - ptx)) <= 10))
                    arenastate++
                break
            case states.revolver:
                var btx = obj_screensizer.draw_width
                bossx = lerp(bossx, btx, a)
                if ((abs((bossx - btx)) <= 10))
                {
                    arenastate++
                    scr_soundeffect(sfx_boss_introduction)
                }
                break
            case states.dynamite:
                whitefade += 0.02
                if ((whitefade >= 2))
                {
                    whitefade = 0
                    arenastate++
                    arenabuffer = 300
                    introshake = 20
                    introshake_acc = 0.5
                }
                break
            case states.boots:
                state = states.normal
                with (obj_player)
                {
                    state = states.actor
                    hsp = 0
                    movespeed = 0
                    flash = false
                    x = roomstartx
                }
                with (bossID)
                {
                    skipintro = false
                    state = other.bossintrostate
                }
                break
        }

    }
}

function scr_bosscontroller_normal() //gml_Script_scr_bosscontroller_normal
{
    if ((boss_func != -4))
        self.boss_func()
    if ((boss_prevhp != boss_hp))
    {
        if ((boss_prevhp > boss_hp))
        {
            boss_prevhp = boss_hp
            var pos = scr_bosscontroller_get_health_pos((boss_hp + 1), boss_rowmax, boss_columnmax, boss_maxhp, boss_hp_x, boss_hp_y, boss_xpad, boss_ypad, true)
            if ((!is_undefined(pos)) && is_array(pos))
            {
                var bpal = boss_palette
                var bpalsel = pos[2]
                var btex = -4
                if ((boss_hpsprite == spr_bossfight_fakepephp))
                {
                    bpal = spr_peppalette
                    bpalsel = obj_player1.paletteselect
                    btex = global.palettetexture
                }
                scr_bosscontroller_particle_hp(boss_hpsprite, irandom((sprite_get_number(boss_hpsprite) - 1)), pos[0], pos[1], -1, bpal, bpalsel, btex)
            }
        }
        else if ((boss_prevhpbuffer > 0))
            boss_prevhpbuffer--
        else
        {
            boss_prevhpbuffer = 10
            boss_prevhp++
            pos = scr_bosscontroller_get_health_pos(boss_prevhp, boss_rowmax, boss_columnmax, boss_maxhp, boss_hp_x, boss_hp_y, boss_xpad, boss_ypad, true)
            if ((!is_undefined(pos)) && is_array(pos))
                scr_bosscontroller_particle_anim(spr_genericpoofeffect, 0, (pos[0] - 30), (pos[1] - 30), 0.5)
        }
    }
    if ((!instance_exists(bossID)) && (!bossdead) && instance_exists(obj_player1) && (obj_player1.state != states.tackle) && (obj_player1.state != states.comingoutdoor) && (room != boss_fakepephallway) && (room != boss_pizzaface) && (room != rank_room))
    {
        if ((room != boss_vigilante) || (obj_player1.state != states.actor))
        {
            bossdead = true
            notification_push((49 << 0), [room])
            alarm[0] = 480
            with (obj_player1)
            {
                //fmod_event_instance_play(global.snd_bossbeaten)
                global.pistol = false
                pistolanim = -4
                sprite_index = spr_player_levelcomplete
                image_speed = 0.35
                image_index = 0
                state = states.arenaintro
            }
            with (obj_hppickup)
            {
                scr_collect_hat()
                instance_destroy()
            }
            with(obj_music)
			{
				audio_stop_sound(musicID)
				music = mu_empty
				musicID = scr_music(music)
			}
        }
    }
    if ((!bossdead) && (player_hp <= 0) && (alarm[3] == -1) && (!instance_exists(obj_bossplayerdeath)))
    {
        player_hp = 0
        //instance_create(0, 0, obj_bossplayerdeath)
    }
}

function scr_bosscontroller_victory() //gml_Script_scr_bosscontroller_victory
{
    if ((victory_buffer > 0))
        victory_buffer--
    else if (!instance_exists(obj_bosskeynoise))
    {
        if ((player_hp > 0))
        {
            victory_buffer = 25
            var pos = scr_bosscontroller_get_health_pos(player_hp, player_rowmax, player_columnmax, player_maxhp, player_hp_x, player_hp_y, player_xpad, player_ypad)
            player_hp--
            with (instance_create(pos[0], pos[1], obj_hpeffect))
            {
                x_to = obj_player1.x
                y_to = obj_player1.y
                spd = 16
                finish = true
            }
        }
        else if ((!instance_exists(obj_hpeffect)) && (!instance_exists(obj_endlevelfade)))
        {
            with (obj_player1)
                scr_do_rank(false, true)
        }
    }
}

function scr_bosscontroller_pizzaface_p3_health() //gml_Script_scr_bosscontroller_pizzaface_p3_health
{
    for (var e = elitehit; e > 2; e -= 2)
    {
    }
    var eh = ((e + ((e - 1) * pizzahead_maxsubhp)) + pizzahead_subhp)
    return eh;
}

function scr_bosscontroller_draw_health(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8, argument9, argument10, argument11, argument12, argument13) //gml_Script_scr_bosscontroller_draw_health
{
    if ((argument11 == undefined))
        argument11 = -4
    if ((argument12 == undefined))
        argument12 = -4
    if ((argument13 == undefined))
        argument13 = -4
    var hpp = 0
    var _index = 0
    while ((hpp < argument4))
    {
        var c = c_white
        var zpad = (_index * 3)
        if ((argument11 != -4))
        {
            if ((argument12 == -4))
                pal_swap_set(argument11, _index, false)
            else
                pal_swap_set(argument11, argument12, false)
        }
        var _x = 0
        var _y = 0
        repeat (argument1 * argument2)
        {
            if ((_index == 0) && (argument3 < (argument1 * argument2)) && (hpp >= argument3))
                c = c_black
            if ((_index == 0) || (hpp < argument3))
            {
                var xf = ((argument5 + (_x * argument7)) - zpad)
                var yf = ((argument6 + (_y * argument8)) - zpad)
                //if ((argument13 != -4))
                    //pattern_set(global.Base_Pattern_Color, argument0, argument9, 1, 1, argument13)
                draw_sprite_ext(argument0, argument9, xf, yf, 1, 1, 0, c, argument10)
            }
            _x++
            if ((_x >= argument2))
            {
                _x = 0
                _y++
            }
            hpp++
        }
        _index++
    }
    //pattern_reset()
}

function scr_bosscontroller_get_health_pos(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7, argument8) //gml_Script_scr_bosscontroller_get_health_pos
{
    if ((argument8 == undefined))
        argument8 = false
    var hpp = 0
    var _index = 0
    while ((hpp < argument3))
    {
        var zpad = (_index * 3)
        var _x = 0
        var _y = 0
        repeat (argument1 * argument2)
        {
            hpp++
            if ((hpp >= argument0))
            {
                var q = [((argument4 + (_x * argument6)) - zpad), ((argument5 + (_y * argument7)) - zpad), _index]
                return q;
            }
            _x++
            if ((_x >= argument2))
            {
                _x = 0
                _y++
            }
        }
        _index++
    }
    return undefined;
}

function scr_collect_hat(argument0) //gml_Script_scr_collect_hat
{
    if ((argument0 == undefined))
        argument0 = false
    with (obj_bosscontroller)
    {
        if (((player_hp + instance_number(obj_hpeffect)) < player_maxhp))
        {
             scr_soundeffect(sfx_cardcollect)
            var pos = scr_bosscontroller_get_health_pos((player_hp + 1), player_rowmax, player_columnmax, player_maxhp, player_hp_x, player_hp_y, player_xpad, player_ypad)
            with (instance_create(other.x, other.y, obj_hpeffect))
            {
                if argument0
                    persistent = true
                image_index = other.image_index
                x_to = pos[0]
                y_to = pos[1]
            }
        }
        else
        {
            with (other)
            {
                scr_soundeffect(sfx_collecttopping)
                with (obj_camera)
                    healthshaketime = 30
                var val = 50
                scr_soundeffect(sfx_cardcollect)
                global.extrahats++
                with (instance_create(x, y, obj_smallnumber))
                    number = "+1"
            }
        }
    }
}

