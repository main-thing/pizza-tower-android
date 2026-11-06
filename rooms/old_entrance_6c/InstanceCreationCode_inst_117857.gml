prompt_condition = function()
{
    if (global.panic)
        return 1;
    
    return 0;
};

prompt_array[0] = tv_create_prompt("The PTV report team is seemingly unimpressed by this countdown, it does not seem to do anything as of yet.", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("We will see when it reaches the 0 mark if anything remotely interesting happens.", tvprompt.trigger, spr_tv_idleanim1, 3);
