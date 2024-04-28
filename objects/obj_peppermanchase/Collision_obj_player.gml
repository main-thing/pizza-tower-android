with (other.id)
{
    if (state != states.ejected && other.dead == 0)
    {
        instance_create(x, y, obj_bangeffect)
        repeat (6)
            instance_create(x, y, obj_slapstar)
        state = states.ejected
        vsp = -10
    }
}
