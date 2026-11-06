function do_dialog(_a0)
{
	with (instance_create(x, y, obj_dialogcontroller))
	{
		npcID = other.id
		dialog = _a0
		dialogsprite = dialog[0][1]
		currenttext = scr_calculate_text(dialog[0][0])
		dialogheight = scr_calculate_height(currenttext)
	}
	with (obj_player)
	{
		if (state == states.ghostpossess)
		{
			visible = true
			with (possessID)
			{
				state = states.stun
				stunned = 50
			}
		}
		sprite_index = spr_idle
		image_speed = 0.35
		state = states.actor
		hsp = 0
		vsp = 0
		movespeed = 0
	}
	exit;
}

function npc_do_dialog()
{
	do_dialog(dialog)
	exit;
}

function vigilante_add_battle()
{
	if (global.vigilantecutscene1 == -4 or (!global.vigilantecutscene1))
	{
		global.vigilantecutscene1 = 1
		quick_ini_write_real(get_savefile_ini(), "cutscene", "vigilante1", 1)
	}
	exit;
}

function do_dialog_cutscene(_a0, _a1, _a2)
{
	if (_a1 == undefined)
		_a1 = 0
	if (_a2 == undefined)
		_a2 = 0
	with (instance_create(_a1, _a2, obj_cutscene_handler))
	{
		scene_info = _a0
		for (var i = 0; i < array_length(scene_info); i++)
			scene_info[i][0] = method(id, scene_info[i][0])
	}
	exit;
}

