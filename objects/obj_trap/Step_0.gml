with (obj_trapghost)
{
	if (point_distance(obj_player1.x, obj_player1.y, other.x, other.y) < other.ghost_distance_threshold)
	{
		if(state == states.normal||trapid == -4){
				state = states.transition;
				trapid = other.id;
		}
		if(instance_exists(trapid)){
			if(((point_distance(obj_player1.x, obj_player1.y, trapid.x, trapid.y) > point_distance(obj_player1.x, obj_player1.y, other.x, other.y) || (other.object_index == obj_anchortrap && state == states.normal && trapid.object_index == obj_anchortrap)) && trapid.object_index != obj_tvtrap))
			{
				state = states.transition;
				trapid = other.id;
		
			}
		}
	}
}
