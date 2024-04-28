if (sprite_index == spr_pepperman_charge)
    x += (spd - 0.5)
if (sprite_index == spr_pepperman_charge && obj_player.movespeed > 5)
    spd = floor(obj_player.movespeed)
else
    spd = 5
if (obj_player.state != states.comingoutdoor && screamintro == 0)
{
    with (obj_player)
    {
        xscale = -1
        image_index = 0
        state = states.backbreaker
        sprite_index = spr_player_bossintro
    }
    screamintro = 1
}
if (obj_player.state != states.backbreaker && screamintro == 1 && sprite_index != spr_pepperman_charge && dead == 0)
{
    instance_create(x, y, obj_peppermanchargechase)
    sprite_index = spr_pepperman_charge
}
if (dead == 1)
{
    if (vsp < 12)
        vsp += grav
    image_speed = 0
    x += hsp
    y += floor(vsp)
}
