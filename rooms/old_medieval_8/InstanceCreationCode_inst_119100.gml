prompt_condition = function()
{
    if (place_meeting(x, y, obj_player))
    {
        tv_reset();
        return 1;
    }
    
    return 0;
};

prompt_array[0] = tv_create_prompt("We are interviewing the viral Forknight who was caught eating on the job! He swore his guard duty to the tower, but watch has he was caught on video tuckering in on crackers!", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("\"What can I tell you I was hungry!\"", tvprompt.trigger, spr_tv_knight, 4);
prompt_array[2] = tv_create_prompt(" The sensational Forknight says he hopes that the pillar stays up so that he will be able to eat those crackers for another day!", tvprompt.trigger, spr_tv_idleanim2, 3);
