ADD_OBJECT_EVENT_GML_HOOK;
if (drop == 1) {
    if (jump == 0) {
        vsp = -6;
        hsp = random_range(-4, 4);
        jump = 1;
    }
    grav = 0.4;
    if (vsp < 12) vsp += grav;
    if place_meeting((x + floor(hsp)), y, obj_null) {
        x = floor(x);
        while (!place_meeting((x + sign(hsp)), y, obj_null))
            x += sign(hsp);
        hsp = 0;
    }
    x += hsp;
    if place_meeting(x, (y + floor(vsp)), obj_null) {
        y = floor(y);
        while (!place_meeting(x, (y + sign(vsp)), obj_null))
            y += sign(vsp);
        vsp = 0;
    }
    y += floor(vsp);
}