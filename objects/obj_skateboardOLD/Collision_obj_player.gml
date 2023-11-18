if (other.state != states.skateboard && other.state != states.knightpep && other.state != states.gameover && other.state != states.gotoplayer && activated)
{
	other.state = states.skateboard
	instance_destroy()
}
