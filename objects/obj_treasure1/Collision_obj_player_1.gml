with (obj_player)
{
    hsp = 0
    if place_meeting(x, (y + 1), obj_collisionparent)
    {
        if (other.sprite_index == spr_treasure1)
        {
            other.alarm[0] = 300
            scr_sound(sfx_gottreasure)
            scr_sound(va_happy1, va_happy2, va_happy3)
        }
        if (other.sprite_index == spr_treasure1)
            state = states.gottreasure
        other.sprite_index = spr_treasure1pick
        other.x = obj_player.x
        other.y = (obj_player.y - 35)
    }
}
