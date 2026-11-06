// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_handle_collision_vis()
{
	with(obj_virtual_controller_manager)
	{
	    with(obj_solid)
		{
			if(object_index == obj_solid || object_index == obj_secretbigblock || object_index == obj_secretblock || object_index == obj_secretmetalblock || object_index == obj_mach3solid) 
			{
				visible = other.showcollisions;
			}
		}
			
		with(obj_slope)
		{
			if(object_index == obj_slope) 
			{
				visible = other.showcollisions;
			}
		}
			
		with(obj_platform)
		{
			if(object_index == obj_platform) 
			{
				visible = other.showcollisions;
			}
		}
		
		with(obj_enemyspawn)
		{
			visible = other.showcollisions;
		}
		
		with(obj_fakeeditor_trigger_base)
		{
			
			visible = other.showcollisions;
		}
		
		with(obj_fakeeditor_trigger_door_base)
		{
			visible = other.showcollisions;
		}
	}
}

// what
function scr_toggle_oldassets()
{
	
}