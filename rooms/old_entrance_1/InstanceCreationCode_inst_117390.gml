prompt_condition = function()
{
    with (obj_player)
    {
        if (((sprite_index == spr_Timesup && floor(image_index) == (image_number - 2)) || state == states.normal) && place_meeting(x, y, obj_exitgate))
            return 1;
    }
    
    return 0;
};

visible = false;
prompt_array[0] = tv_create_prompt("It seems the gate behind the pizzaman has slammed shut! No way around it.", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("Looks like this odd looking man will have to explore this deeply strange place...", tvprompt.trigger, spr_tv_idleanim2, 3);
