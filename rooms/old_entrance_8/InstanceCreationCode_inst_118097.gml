prompt_condition = function()
{
    with (obj_swedishmonkey)
    {
        if (point_in_camera(x, y, view_camera[0]))
            return 1;
    }
    
    return 0;
};

prompt_array[0] = tv_create_prompt("We have found the monkeys! We have been told by the natives of this place that the monkeys are from \"sweden\".", tvprompt.normal, spr_tv_idleanim1, 3);
prompt_array[1] = tv_create_prompt("We will ask the locals more about this magical and seemingly fictional land.", tvprompt.trigger, spr_tv_idleanim1, 3);
