enum Eval {
	POSITION,
	TOKENS,
	VARIABLES
}

position = 0;
variables = ds_map_create();
generatedJumps = ds_stack_create();
scope = ds_stack_create();
animations = ds_map_create();
tokens = -1;
label = 0;
creator = noone;

sm = sm_init(-1);