with (obj_player)
{
    if (state == states.mach1 || state == states.mach2 || state == states.mach3 || state == states.machslide || state == states.slipnslide)
    {
        other.drop = 1
        state = states.slipnslide
        if (movespeed < 8)
            movespeed = 8
    }
    if (state == states.barrelmach1 || state == states.barrelmach2)
    {
        image_index = 0
        other.drop = 1
        state = states.barrelslipnslide
        if (movespeed < 8)
            movespeed = 8
    }
}
