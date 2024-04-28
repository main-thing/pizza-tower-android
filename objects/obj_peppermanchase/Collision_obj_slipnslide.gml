if (other.drop == 0)
{
    instance_create(x, y, obj_key)
    dead = 1
    sprite_index = spr_pepperman_hurt
    hsp = spd
    other.drop = 1
}
