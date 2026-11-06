prompt_condition = function()
{
    with (obj_player)
    {
        if (state == states.knightpep || state == states.knightpepslopes || state == states.knightpepattack)
            return 1;
    }
    
    return 0;
};

prompt_array[0] = tv_create_prompt("Wow! It seems that thunder has turned a seemingly-unknown-as-of-now fat man into a valiant and more easily identifiable knight!", tvprompt.normal, spr_tv_knight, 3);
prompt_array[1] = tv_create_prompt("What mighty stead will he ride? What epic quest will he accomplish?", tvprompt.trigger, spr_tv_idleanim1, 3);
prompt_array[2] = tv_create_prompt("Maybe he will just slam into a wall and become incredibly boring again?", tvprompt.trigger, spr_tv_idleanim2, 3);
