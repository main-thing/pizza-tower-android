with (obj_secretwall)
{
    if (image_alpha > 0.4)
        image_alpha -= 0.1
    depth = -6
    if instance_exists(obj_doortransition)
        depth = 0
}
