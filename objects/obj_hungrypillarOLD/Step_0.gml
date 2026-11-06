ADD_OBJECT_EVENT_GML_HOOK;
if (obj_player.state == states.thrown) {
    if (framereset == 0) {
        image_index = 0;
        framereset = 1;
    }
    sprite_index = spr_hungrypillar_mouth;
    if (floor(image_index) == 3)
		image_speed = 0;
}
else {
    framereset = 0;
    if (sprite_index != spr_hungrypillar_angry1)
		sprite_index = spr_hungrypillar1;
    image_speed = 0.35;
}
if (toppineaten == 5) sprite_index = spr_hungrypillar_happy;
if (place_meeting((x + 1), y, obj_player) && (sprite_index != spr_hungrypillar_happy)) {
    obj_tv.message = "STEP BACK!!";
    obj_tv.showtext = 1;
    obj_tv.tvsprite = spr_tvpillar;
    obj_tv.alarm[0] = 150;
    obj_tv.image_speed = 0.1;
    sprite_index = spr_hungrypillar_angry1;
    with (obj_player) {
        xscale = (-other.image_xscale);
        state = states.bump;
        hsp = ((-xscale) * 10);
        vsp = -6;
        image_index = 0;
    }
}