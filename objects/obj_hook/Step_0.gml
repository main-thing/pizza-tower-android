scr_getinput()
if (hooked == 1 && drop == 0)
{
    obj_player.x = x
    obj_player.y = (y + 40)
    if key_jump
    {
        with (obj_player)
        {
            jumpAnim = 0
            state = states.jump
            machslideAnim = 1
            image_index = 0
            vsp = 1
        }
        hooked = 0
        drop = 1
    }
}
if (place_meeting(x, (y - 31), obj_hookend) && hooked == 1)
{
    drop = 1
    obj_player.state = states.mach2
    hooked = 0
    vsp = random_range(-4, 0)
    hsp = random_range(-4, 4)
}
if (drop == 1)
{
    if (vsp < 12)
        vsp += grav
    if place_meeting((x + floor(hsp)), y, obj_null)
    {
        x = floor(x)
        while (!(place_meeting((x + sign(hsp)), y, obj_null)))
            x += sign(hsp)
        hsp = 0
    }
    x += hsp
    if place_meeting(x, (y + floor(vsp)), obj_null)
    {
        y = floor(y)
        while (!(place_meeting(x, (y + sign(vsp)), obj_null)))
            y += sign(vsp)
        vsp = 0
    }
    y += floor(vsp)
}
