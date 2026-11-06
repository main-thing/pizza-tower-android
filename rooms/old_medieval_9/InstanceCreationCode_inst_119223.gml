prompt_condition = function()
{
    if (place_meeting(x, y, obj_player))
    {
        tv_reset();
        return 1;
    }
    
    return 0;
};

prompt_array[0] = tv_create_prompt("Wait a minute, is that gold!? Is everything golden!?  Were rich! I'll never have to work another day at this crummy TV station!", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("Screw you Janice I lied when I said I liked my job, I just didnt want to commit to resigning!! But now it doesnt matter!!", tvprompt.trigger, spr_tv_idleanim2, 3);
