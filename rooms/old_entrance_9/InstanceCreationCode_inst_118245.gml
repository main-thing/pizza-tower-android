prompt_condition = function()
{
    if (global.panic)
        return 1;
    
    return 0;
};

prompt_array[0] = tv_create_prompt("PTV interrupts this program to read out loud some big numbers that have suddenly appeared on our monitor.", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("PTV isnt really sure what the countdown means, why the ground is shaking or why people are screaming.", tvprompt.trigger, spr_tv_idleanim2, 3);
