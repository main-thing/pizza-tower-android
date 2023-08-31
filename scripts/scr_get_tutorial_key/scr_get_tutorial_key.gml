function scr_get_tutorial_key(argument0) //gml_Script_scr_get_tutorial_key
{
    var spr = -4
    var ix = 0
    var txt = -4
    switch argument0
    {
        case 37:
            spr = spr_tutorialgamepad
            ix = 16
            break
        case 39:
            spr = spr_tutorialgamepad
            ix = 17
            break
        case 38:
            spr = spr_tutorialgamepad
            ix = 4
            break
        case 40:
            spr = spr_tutorialgamepad
            ix = 5
            break
        case 16:
        case 160:
            spr = spr_tutorialkeyspecial
            ix = 0
            break
        case 17:
        case 162:
            spr = spr_tutorialkeyspecial
            ix = 1
            break
        case 32:
            spr = spr_tutorialkeyspecial
            ix = 2
            break
        default:
            spr = spr_tutorialkey
            ix = 0
            txt = chr(argument0)
            break
    }

    return [spr, ix, txt];
}