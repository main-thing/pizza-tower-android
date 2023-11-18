sm_end(sm);
ds_map_destroy(variables);
ds_stack_destroy(generatedJumps);
ds_stack_destroy(scope);
ds_map_destroy(animations);
if(ds_exists(tokens, ds_type_list)) ds_list_destroy(tokens);