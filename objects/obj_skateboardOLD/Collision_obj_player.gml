ADD_OBJECT_EVENT_GML_HOOK;
if (other.vsp > 0 && other.state != states.skateboard && other.state != states.knightpep && other.state != states.gameover && other.state != states.gotoplayer)
{
    other.state = states.skateboard;
    instance_destroy();
}