function scr_player_slipnslideOLD() {
    mach2 = 0
    jumpAnim = 1
    dashAnim = 1
    landAnim = 0
    moveAnim = 1
    stopAnim = 1
    crouchslideAnim = 1
    crouchAnim = 0
    machhitAnim = 0
    hsp = (xscale * movespeed)
    machhitAnim = 0
    crouchslideAnim = 1
    if (movespeed <= 0)
    {
        state = states.normal
        movespeed = 0
        mach2 = 0
        image_index = 0
    }
    if (scr_solid((x + 1), y) && xscale == 1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
    {
        state = states.bump
        hsp = -2
        vsp = -3
        mach2 = 0
        image_index = 0
        instance_create((x + 10), (y + 10), obj_bumpeffect)
    }
    if (scr_solid((x - 1), y) && xscale == -1 && (!(place_meeting((x + sign(hsp)), y, obj_slope))))
    {
        state = states.bump
        hsp = 2
        vsp = -3
        mach2 = 0
        image_index = 0
        instance_create((x - 10), (y + 10), obj_bumpeffect)
    }
    if grounded
        movespeed -= 0.2
    image_speed = 0.35
    if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5 && sprite_index == spr_slipnslide)
    {
        with (instance_create(x, y, obj_slidecloud))
            image_xscale = other.xscale
    }
    if ((!instance_exists(obj_slidecloud)) && grounded && movespeed > 1.5 && place_meeting(x, (y + 1), obj_current))
    {
        with (instance_create(x, y, obj_slidecloud))
        {
            image_xscale = other.xscale
            sprite_index = spr_watereffect
        }
    }
    if (sprite_index == spr_currentplayer && (!(place_meeting(x, (y + 1), obj_current))))
        sprite_index = spr_slipnslide
    if (sprite_index == spr_slipnslide && place_meeting(x, (y + 1), obj_current))
        sprite_index = spr_currentplayer
}