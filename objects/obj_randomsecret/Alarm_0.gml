ADD_OBJECT_EVENT_GML_HOOK;
if (!start)
    exit;

alarm[0] = 60;

if ((!instance_exists(obj_secretportalstart) || obj_secretportalstart.drop) && (!instance_exists(obj_secretportal) || !obj_secretportal.touched))
{
    seconds--;
    
    if (seconds < 0)
    {
        if (minutes > 0)
        {
            minutes--;
            seconds = 59;
        }
        else if (room != rank_room)
        {
            with (obj_player1)
            {
                instance_destroy(obj_fadeout);
                targetDoor = "A";
                state = states.timesup;
                sprite_index = spr_Timesup;
                image_index = 0;
                
                //if (isgustavo)
                //    sprite_index = spr_player_ratmounttimesup;
                
                visible = true;
                image_blend = c_white;
                //stop_music();
                //fmod_event_one_shot("event:/music/timesup");
				audio_stop_all();
				scr_soundeffect(global.oldsprites ? mu_timesup : mu_fatass);
                room = timesuproom;
            }
            
            instance_destroy();
        }
    }
}