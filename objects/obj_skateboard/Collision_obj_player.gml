if (other.state != states.chainsaw && other.skateboarding == 0)
{
	instance_create(x, y, obj_genericpoofeffect)
	other.movespeed = 10
	other.state = states.mach2
	other.skateboarding = 1
	other.clowntimer = clowntimer
	tv_push_prompt_once(tv_create_prompt("This is the clown transformation text", tvprompt.transfo, other._spr_tv_clown, 3), "skateboard")
}
