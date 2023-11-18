with (obj_player)
{
	if (targetDoor == "LAP")
	{
		with(obj_toppinwarrior){
			instance_destroy()
		} 
		with(instance_create(x,y,obj_toppinwarrior)){
			toppinwarrior = 1
			depth = 10
			spr_idle = spr_twarrior1_idle
			spr_pose = spr_twarrior1_pose
			spr_run = spr_twarrior1_run
			spr_attack = spr_twarrior1_attack
			spr_hurt = spr_twarrior1_hurt
			global.toppinwarriorid1 = id
		}
		with(instance_create(x,y,obj_toppinwarrior)){
			toppinwarrior = 2
			depth = 11
			spr_idle = spr_twarrior2_idle
			spr_pose = spr_twarrior2_pose
			spr_run = spr_twarrior2_run
			spr_attack = spr_twarrior2_attack
			spr_hurt = spr_twarrior2_hurt
			global.toppinwarriorid2 = id
		}
		with(instance_create(x,y,obj_toppinwarrior)){
			toppinwarrior = 3
			depth = 12
			spr_idle = spr_twarrior3_idle
			spr_pose = spr_twarrior3_pose
			spr_run = spr_twarrior3_run
			spr_attack = spr_twarrior3_attack
			spr_hurt = spr_twarrior3_hurt
			global.toppinwarriorid3 = id
		}
		with(instance_create(x,y,obj_toppinwarrior)){
			toppinwarrior = 4
			depth = 13
			spr_idle = spr_twarrior4_idle
			spr_pose = spr_twarrior4_pose
			spr_run = spr_twarrior4_run
			spr_attack = spr_twarrior4_attack
			spr_hurt = spr_twarrior4_hurt
			global.toppinwarriorid4 = id
		}
		with(instance_create(x,y,obj_toppinwarrior)){
			toppinwarrior = 5
			depth = 14
			spr_idle = spr_twarrior4_idle
			spr_pose = spr_twarrior4_pose
			spr_run = spr_twarrior4_run
			spr_attack = spr_twarrior4_attack
			spr_hurt = spr_twarrior4_hurt
			global.toppinwarriorid4 = id
		}
	}
}