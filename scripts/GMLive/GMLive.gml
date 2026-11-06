// GMLive.gml (c) YellowAfterlife, 2017+
// PLEASE DO NOT FORGET to remove paid extensions from your project when publishing the source code!
// And if you are using git, you can exclude GMLive by adding
// `scripts/GMLive*` and `extensions/GMLive/` lines to your `.gitignore`.
// Feather disable all
// Generated at 2023-06-12 16:49:49 (10071ms) for v2.3.7+
/// @lint nullToAny true
// Feather disable all
globalvar mq_gml_thread_scope;mq_gml_thread_scope=[undefined,undefined,0,undefined,undefined,undefined,undefined,undefined,undefined,undefined,undefined];
globalvar gml_std_haxe_type_markerValue;if(live_enabled)gml_std_haxe_type_markerValue=[];
globalvar mt_gml_std_Date;
globalvar mt_gml_builder;
globalvar mt_gml_node;
globalvar mt_gml_action;
globalvar mt_gml_func;
globalvar mt_api_api_version;
globalvar mt_gml_parser;
globalvar mt_gml_parser_template_state;
globalvar mt_gml_parser_macro;
globalvar mt_gml_program;
globalvar mt_gml_std_StringBuf;
globalvar mt_api_api_var;
globalvar mt_gml_enum;
globalvar mt_gml_enum_ctr;
globalvar mt_gml_macro;
globalvar mt_ast_gml_node_def_param;
globalvar mt_ast_gml_node_def_ctr;
globalvar mt_gml_script;
globalvar mt_gml_source;
globalvar mt_gml_token;
globalvar mt_gml_std_haxe_class;
globalvar mt_gml_std_haxe_enum;
globalvar mt_gml_std_haxe_Exception;
globalvar mt_haxe_ds_basic_map;
globalvar mt_haxe_ds_string_map;
globalvar mt_gml_thread_scope;
globalvar mt_gml_with_scope;
globalvar mt_gml_type_ref;
globalvar mt_vm_v2_GmlStructBase;
if(live_enabled)then(function(){
mt_gml_std_Date=new gml_std_haxe_class(-1,"gml_std_Date");
mt_gml_builder=new gml_std_haxe_class(-1,"gml_builder");
mt_gml_node=new gml_std_haxe_enum(-1,"gml_node",["undefined_hx","boolean","number","cstring","other_const","enum_ctr","array_decl","object_decl","ensure_array_for_local","ensure_array_for_global","ensure_array_for_field","ensure_array_for_index","ensure_array_for_index2d","ident","self_hx","other_hx","global_ref","script","native_script","const","arg_const","arg_index","arg_count","call","call_script","call_script_at","call_script_id","call_script_with_array","call_field","call_func","call_func_at","construct","func_literal","prefix","postfix","un_op","bin_op","set_op","delete_hx","null_co","to_bool","from_bool","in","local_hx","local_set","local_aop","static_hx","static_set","static_aop","global_hx","global_set","global_aop","script_static","script_static_set","script_static_aop","field","field_set","field_aop","env","env_set","env_aop","env_fd","env_fd_set","env_fd_aop","env1d","env1d_set","env1d_aop","alarm","alarm_set_hx","alarm_aop","index","index_set","index_aop","index2d","index2d_set","index2d_aop","raw_id","raw_id_set","raw_id_aop","raw_id2d","raw_id2d_set","raw_id2d_aop","ds_list","ds_list_set_hx","ds_list_aop","ds_map","ds_map_set_hx","ds_map_aop","ds_grid","ds_grid_set_hx","ds_grid_aop","key_id","key_id_set","key_id_aop","var_decl","block","if_then","ternary","switch_hx","wait","fork","while_hx","do_until","do_while","repeat_hx","for_hx","with_hx","once","return_hx","exit_hx","break_hx","continue_hx","debugger","try_catch","throw_hx"],[gml_node_undefined_hx,gml_node_boolean,gml_node_number,gml_node_cstring,gml_node_other_const,gml_node_enum_ctr,gml_node_array_decl,gml_node_object_decl,gml_node_ensure_array_for_local,gml_node_ensure_array_for_global,gml_node_ensure_array_for_field,gml_node_ensure_array_for_index,gml_node_ensure_array_for_index2d,gml_node_ident,gml_node_self_hx,gml_node_other_hx,gml_node_global_ref,gml_node_script,gml_node_native_script,gml_node_const,gml_node_arg_const,gml_node_arg_index,gml_node_arg_count,gml_node_call,gml_node_call_script,gml_node_call_script_at,gml_node_call_script_id,gml_node_call_script_with_array,gml_node_call_field,gml_node_call_func,gml_node_call_func_at,gml_node_construct,gml_node_func_literal,gml_node_prefix,gml_node_postfix,gml_node_un_op,gml_node_bin_op,gml_node_set_op,gml_node_delete_hx,gml_node_null_co,gml_node_to_bool,gml_node_from_bool,gml_node_in,gml_node_local_hx,gml_node_local_set,gml_node_local_aop,gml_node_static_hx,gml_node_static_set,gml_node_static_aop,gml_node_global_hx,gml_node_global_set,gml_node_global_aop,gml_node_script_static,gml_node_script_static_set,gml_node_script_static_aop,gml_node_field,gml_node_field_set,gml_node_field_aop,gml_node_env,gml_node_env_set,gml_node_env_aop,gml_node_env_fd,gml_node_env_fd_set,gml_node_env_fd_aop,gml_node_env1d,gml_node_env1d_set,gml_node_env1d_aop,gml_node_alarm,gml_node_alarm_set_hx,gml_node_alarm_aop,gml_node_index,gml_node_index_set,gml_node_index_aop,gml_node_index2d,gml_node_index2d_set,gml_node_index2d_aop,gml_node_raw_id,gml_node_raw_id_set,gml_node_raw_id_aop,gml_node_raw_id2d,gml_node_raw_id2d_set,gml_node_raw_id2d_aop,gml_node_ds_list,gml_node_ds_list_set_hx,gml_node_ds_list_aop,gml_node_ds_map,gml_node_ds_map_set_hx,gml_node_ds_map_aop,gml_node_ds_grid,gml_node_ds_grid_set_hx,gml_node_ds_grid_aop,gml_node_key_id,gml_node_key_id_set,gml_node_key_id_aop,gml_node_var_decl,gml_node_block,gml_node_if_then,gml_node_ternary,gml_node_switch_hx,gml_node_wait,gml_node_fork,gml_node_while_hx,gml_node_do_until,gml_node_do_while,gml_node_repeat_hx,gml_node_for_hx,gml_node_with_hx,gml_node_once,gml_node_return_hx,gml_node_exit_hx,gml_node_break_hx,gml_node_continue_hx,gml_node_debugger,gml_node_try_catch,gml_node_throw_hx]);
mt_gml_action=new gml_std_haxe_enum(-1,"gml_action",["discard","dup","dup2x","dup3x","dup_in","undefined_hx","number","cstring","array_decl","object_decl","const","self_hx","other_hx","local_hx","local_set","local_aop","global_hx","global_set","global_aop","field","field_set","field_aop","fast_field_aop","self_field","self_field_set","self_field_aop","fast_self_field","fast_self_field_set","fast_self_field_aop","local_field","local_field_set","local_field_aop","fast_local_field","fast_local_field_set","fast_local_field_aop","index","index_set","index_aop","index2d","index2d_set","index2d_aop","env","env_set","env_aop","env1d","env1d_set","env1d_aop","ds_aop","arg_const","arg_const_set","arg_const_aop","arg_index","arg_index_set","arg_index_aop","arg_count","add_int","equ_op","neq_op","concat","bin_op","un_op","in","in_const","call_script","call_script_id","call_script_with_array","call_func","call_func0","call_func0o","call_func1","call_func1o","call_func2","call_func2o","call_func3","call_func3o","call_func4","call_func4o","call_func_with_local0","call_func_with_local0o","call_func_with_local1","call_func_with_local1o","call_func_with_local2","call_func_with_local2o","call_func_with_local3","call_func_with_local3o","call_func_with_local4","call_func_with_local4o","call_field","construct","func_literal","jump","jump_if","jump_unless","jump_placeholder","bool_and","bool_or","null_co","switch_hx","switch_case","repeat_jump","repeat_pre","with_pre","with_next","with_post","break_hx","continue_hx","return_hx","return_const","result","try_hx","catch_hx","finally_hx","throw_hx","wait","fork","ensure_array_for_local","ensure_array_for_global","ensure_array_for_field","ensure_array_for_index","ensure_array_for_index2d","alarm","alarm_set_hx","alarm_aop","closure"]);
mt_gml_func=new gml_std_haxe_class(-1,"gml_func");
mt_api_api_version=new gml_std_haxe_class(-1,"api_api_version");
mt_gml_parser=new gml_std_haxe_class(-1,"gml_parser");
mt_gml_parser_template_state=new gml_std_haxe_class(-1,"gml_parser_template_state");
mt_gml_parser_macro=new gml_std_haxe_class(-1,"gml_parser_macro");
mt_gml_program=new gml_std_haxe_class(-1,"gml_program");
mt_gml_std_StringBuf=new gml_std_haxe_class(-1,"gml_std_StringBuf");
mt_api_api_var=new gml_std_haxe_class(-1,"api_api_var");
mt_gml_enum=new gml_std_haxe_class(-1,"gml_enum");
mt_gml_enum_ctr=new gml_std_haxe_class(-1,"gml_enum_ctr");
mt_gml_macro=new gml_std_haxe_class(-1,"gml_macro");
mt_ast_gml_node_def_param=new gml_std_haxe_class(-1,"ast_gml_node_def_param");
mt_ast_gml_node_def_ctr=new gml_std_haxe_class(-1,"ast_gml_node_def_ctr");
mt_gml_script=new gml_std_haxe_class(-1,"gml_script");
mt_gml_source=new gml_std_haxe_class(-1,"gml_source");
mt_gml_token=new gml_std_haxe_enum(-1,"gml_token",["header","macro_def","macro_start","hash","semico","comma","period","colon","qmark","at_sign","dollar_sign","keyword","ident","undefined_hx","boolean","number","cstring","un_op","adjfix","bin_op","set_op","par_open","par_close","sqb_open","sqb_close","cub_open","cub_close","arg_const","null_co","null_co_set","pragma"]);
mt_gml_std_haxe_class=new gml_std_haxe_class(-1,"gml_std_haxe_class");
mt_gml_std_haxe_enum=new gml_std_haxe_class(-1,"gml_std_haxe_enum");
mt_gml_std_haxe_Exception=new gml_std_haxe_class(-1,"gml_std_haxe_Exception");
mt_haxe_ds_basic_map=new gml_std_haxe_class(-1,"haxe_ds_basic_map");
mt_haxe_ds_string_map=new gml_std_haxe_class(-1,"haxe_ds_string_map");
mt_haxe_ds_string_map.h_superClass=mt_haxe_ds_basic_map;
mt_gml_thread_scope=new gml_std_haxe_class(7,"gml_thread_scope");
mt_gml_with_scope=new gml_std_haxe_class(-1,"gml_with_scope");
mt_gml_type_ref=new gml_std_haxe_class(-1,"gml_type_ref");
mt_vm_v2_GmlStructBase=new gml_std_haxe_class(-1,"vm_v2_GmlStructBase");
})();
if(live_enabled)function gml_std_enum_toString(){
	return gml_std_Std_stringify(self);
}
if(live_enabled)function gml_std_enum_getIndex(){
	return __enumIndex__;
}

if(live_enabled)
function gml_std_Date(l_year,l_month,l_day,l_hour,l_min1,l_sec)constructor{
	static h_date=undefined; /// @is {date}
	static h_getTime=function(){
		return (self.h_date-25569)*86400000;
	}
	self.h_date=date_create_datetime(l_year,l_month+1,l_day,l_hour,l_min1,l_sec);
	static __class__=mt_gml_std_Date;
}

if(live_enabled)
function gml_std_Date_now(){
	var l_d=new gml_std_Date(2000,0,1,0,0,0);
	l_d.h_date=date_current_datetime();
	return l_d;
}

if(live_enabled)
function gml_std_Type_createEnumIndex(l_e,l_index,l_params){
	if(false)show_debug_message(argument[2]);
	var l_n=(l_params!=undefined?array_length(l_params):0);
	if(l_e.h_index<0){
		var l_fns=l_e.h_functions;
		if(l_fns==undefined)throw gml_std_haxe_Exception_thrown("Enum "+l_e.h_name+" does not have a constructor array.");
		return gml_internal_native_function_invoke_call(l_fns[l_index],l_params,l_n);
	}
	var l_r=array_create(l_n+1);
	l_r[@0]=l_index;
	if(l_n>0)array_copy(l_r,1,l_params,0,l_n);
	return l_r;
}

if(live_enabled)
function gml_std_Type_getEnumConstructs(l_e){
	return gml_std_gml_internal_ArrayImpl_copy(l_e.h_constructors);
}

if(live_enabled)
function gml_std_Type_enumConstructor(l_e){
	var l_et,l_i;
	var l_isStruct1=is_struct(l_e);
	if(l_isStruct1){
		l_et=l_e.__enum__;
		l_i=l_e.__enumIndex__;
	} else return string(l_e);
	var l_cs=l_et.h_constructors;
	if(l_cs!=undefined&&l_i>=0&&l_i<array_length(l_cs)){
		return l_cs[l_i];
	} else {
		if(l_isStruct1){
			var l_s=instanceof(l_e);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_i=string_length(l_et.h_name);
			if(string_copy(l_s,1,l_i)==l_et.h_name&&string_ord_at(l_s,l_i+1)==95)l_s=string_delete(l_s,1,l_i+1);
			return l_s;
		}
		return string(l_e);
	}
}

if(live_enabled)
function gml_std_Type_enumParameters(l_e){
	var l_n,l_r;
	if(is_struct(l_e)){
		var l_fields=l_e.__enumParams__;
		l_n=array_length(l_fields);
		l_r=array_create(l_n);
		var l_i=-1;
		while(++l_i<l_n){
			l_r[@l_i]=l_e[$ l_fields[l_i]];
		}
		return l_r;
	}
	if(is_array(l_e)){
		var l_m=l_e;
		l_n=array_length(l_m)-1;
		l_r=array_create(l_n);
		array_copy(l_r,0,l_m,1,l_n);
		return l_r;
	} else return [];
}

if(live_enabled)
function gml_std_Type_enumIndex(l_e){
	if(is_struct(l_e)){
		return l_e.__enumIndex__;
	} else if(is_array(l_e)){
		return l_e[0];
	} else return l_e;
}

if(live_enabled)
function gml_std_StringTools_startsWith(l_s,l_start){
	var l_n=string_length(l_start);
	return string_length(l_s)>=l_n&&string_copy(l_s,1,l_n)==l_start;
}

if(live_enabled)
function gml_std_StringTools_endsWith(l_s,l_end){
	var l_n=string_length(l_s);
	var l_i=string_length(l_end);
	return l_n>=l_i&&string_copy(l_s,l_n+1-l_i,l_i)==l_end;
}

if(live_enabled)
function gml_std_StringTools_trim(l_s){
	var l_char;
	var l_len=string_length(l_s);
	var l_till=l_len;
	while(l_till>0){
		l_char=string_ord_at(l_s,l_till);
		if(l_char==32||l_char>8&&l_char<14)l_till--; else break;
	}
	if(l_till<l_len)l_s=string_copy(l_s,1,l_till);
	var l_start=1;
	while(l_start<=l_till){
		l_char=string_ord_at(l_s,l_start);
		if(l_char==32||l_char>8&&l_char<14)l_start++; else break;
	}
	if(l_start>1)l_s=string_delete(l_s,1,l_start-1);
	return l_s;
}

if(live_enabled)
function compile_groups_gml_compile_group_literal_proc_lf(l_th,l_v,l_scope,l_st){
	var l_instStack=l_scope[6];
	var l_inst=l_instStack[l_instStack[0]];
	if(instanceof(l_inst)=="instance")l_inst=l_inst.id;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_inst;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_literal_proc_lf1(l_th,l_v,l_scope,l_st){
	var l_instStack=l_scope[6];
	var l_inst=l_instStack[l_instStack[0]-1];
	if(instanceof(l_inst)=="instance")l_inst=l_inst.id;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_inst;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_literal_proc(l_q,l_actions,l_out){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 0:if(l_out)ds_list_add(l_actions,gml_action_undefined_hx(l__g.h_d));break;
		case 2:if(l_out)ds_list_add(l_actions,gml_action_number(l__g.h_d,l__g.h_value));break;
		case 3:if(l_out)ds_list_add(l_actions,gml_action_cstring(l__g.h_d,l__g.h_value));break;
		case 1:if(l_out)ds_list_add(l_actions,gml_action_const(l__g.h_d,bool(l__g.h_value)));break;
		case 19:if(l_out)ds_list_add(l_actions,gml_action_const(l__g.h_d,gml_const_val[$ l__g.h_name]));break;
		case 4:if(l_out)ds_list_add(l_actions,gml_action_const(l__g.h_d,l__g.h_value));break;
		case 14:
			var l_d=l__g.h_d;
			if(l_out){
				if(gml_compile_curr_program.h_get_source(l_d[0]).h_version.h_int_self)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self",{},compile_groups_gml_compile_group_literal_proc_lf)); else ds_list_add(l_actions,gml_action_self_hx(l_d));
			}
			break;
		case 15:
			var l_d=l__g.h_d;
			if(l_out){
				if(gml_compile_curr_program.h_get_source(l_d[0]).h_version.h_int_self)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"other",{},compile_groups_gml_compile_group_literal_proc_lf1)); else ds_list_add(l_actions,gml_action_other_hx(l_d));
			}
			break;
		case 16:if(l_out)ds_list_add(l_actions,gml_action_number(l__g.h_d,-5));break;
		case 17:ds_list_add(l_actions,gml_action_func_literal(l__g.h_d,l__g.h_ref.h_name));break;
		case 18:ds_list_add(l_actions,gml_action_const(l__g.h_d,l__g.h_id));break;
		case 6:
			var l_w=l__g.h_values;
			compile_gml_compile_args_proc(l_actions,l_w);
			ds_list_add(l_actions,gml_action_array_decl(l__g.h_d,array_length(l_w)));
			break;
		case 7:
			var l_w=l__g.h_values;
			var l_fields=[];
			var l_i=0;
			for(var l__g2=array_length(l_w);l_i<l__g2;l_i++){
				var l_x=l_w[l_i];
				if(gml_compile_node(l_w[l_i],l_actions,true))return true;
				var l__g3=l_x;
				var l_bindFunc;
				l_bindFunc=(l__g3.__enumIndex__==32);
				array_push(l_fields,{name:l__g.h_keys[l_i],bindFunc:l_bindFunc});
			}
			ds_list_add(l_actions,gml_action_object_decl(l__g.h_d,l_fields));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_literal_init(){
	gml_compile_set_handlers(compile_groups_gml_compile_group_literal_proc,["undefined","number","cstring","const","other_const","boolean","self","other","global_ref","script","native_script","array_decl","object_decl"]);
}

if(live_enabled)
function compile_gml_compile_args_get_simple(l_q){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 55:
			if(l__g.h_obj.__enumIndex__==14){
				var l__field=l__g.h_field;
				var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l__field);
				if(l_fastGetter!=undefined){
					compile_gml_compile_args_get_simple_val=l_fastGetter;
					compile_gml_compile_args_get_simple_kind=3;
				} else {
					compile_gml_compile_args_get_simple_val=l__field;
					compile_gml_compile_args_get_simple_kind=2;
				}
			} else if(gml_compile_const_val_of(l_q)){
				compile_gml_compile_args_get_simple_val=gml_compile_const_val_of_val;
				compile_gml_compile_args_get_simple_kind=0;
			} else return false;
			break;
		case 43:
			compile_gml_compile_args_get_simple_val=gml_compile_curr_script.h_local_map[$ l__g.h_name];
			compile_gml_compile_args_get_simple_kind=1;
			break;
		default:
			if(gml_compile_const_val_of(l_q)){
				compile_gml_compile_args_get_simple_val=gml_compile_const_val_of_val;
				compile_gml_compile_args_get_simple_kind=0;
			} else return false;
	}
	return true;
}

if(live_enabled)
function compile_gml_compile_args_proc_lf(l_th,l_u,l_scope,l_st){
	var l_arr=self.values;
	var l_count=self.count;
	var l_i=l_st[0];
	var l_next=l_i+l_count;
	while(l_next>=array_length(l_st)){
		l_st[@array_length(l_st)*2]=0;
	}
	array_copy(l_st,l_i+1,l_arr,0,l_count);
	l_st[@0]=l_next;
	return 0;
}

if(live_enabled)
function compile_gml_compile_args_proc_lf1(l_th,l_u,l_scope,l_st){
	var l_params=self.params;
	var l_kinds=self.kinds;
	var l_locals=l_scope[4];
	var l_self1;
	if(self.usesSelf){
		var l_this1=l_scope[6];
		l_self1=l_this1[l_this1[0]];
	} else l_self1=undefined;
	var l_count=self.count;
	var l_i=l_st[0];
	var l_next=l_i+l_count;
	while(l_next>=array_length(l_st)){
		l_st[@array_length(l_st)*2]=0;
	}
	l_st[@0]=l_next;
	var l_k=0;
	var l__=0;
	for(var l__g1=l_count;l__<l__g1;l__++){
		l_i++;
		var l_v;
		switch(l_kinds[l_k]){
			case 1:l_v=l_locals[l_params[l_k]];break;
			case 0:l_v=l_params[l_k];break;
			case 3:l_v=l_params[l_k](l_self1);break;
			case 2:
				var l_field=l_params[l_k];
				var l_val=l_self1[$ l_field];
				if(l_val==undefined){
					if(!variable_struct_exists(l_self1,l_field)){
						if(is_numeric(l_self1)){
							if(object_exists(l_self1)){
								gml_thread_error(gml_std_Std_stringify(l_self1)+" ("+object_get_name(l_self1)+") does not have a variable `"+l_field+"`.");
							} else if(instance_exists(l_self1)){
								gml_thread_error(gml_std_Std_stringify(l_self1)+" ("+object_get_name(l_self1.object_index)+") does not have a variable `"+l_field+"`.");
							} else gml_thread_error(gml_value_dump(l_self1)+" does not have a variable `"+l_field+"`.");
						} else if(typeof(l_self1)=="ref"){
							if(instance_exists(l_self1))gml_thread_error(gml_std_Std_stringify(l_self1)+" ("+object_get_name(l_self1.object_index)+") does not have a variable `"+l_field+"`."); else gml_thread_error(gml_value_dump(l_self1)+" does not have a variable `"+l_field+"`.");
						} else gml_thread_error(gml_value_dump(l_self1)+" does not have a variable `"+l_field+"`.");
					}
				}
				l_v=l_val;
				break;
		}
		l_st[@l_i]=l_v;
		l_k++;
	}
	return 0;
}

if(live_enabled)
function compile_gml_compile_args_proc(l_actions,l_nodes,l_start,l_end){
	if(l_start==undefined)l_start=0;
	if(false)show_debug_message(argument[3]);
	if(l_end==undefined)l_end=array_length(l_nodes);
	var l_i=l_start;
	while(l_i<l_end){
		var l_q=l_nodes[l_i];
		if(!compile_gml_compile_args_get_simple(l_q)){
			if(gml_compile_node(l_q,l_actions,true))return true;
			l_i++;
			continue;
		}
		var l_kind=compile_gml_compile_args_get_simple_kind;
		var l_count=1;
		var l_kinds=[l_kind];
		var l_params=[compile_gml_compile_args_get_simple_val];
		var l_allConsts=l_kind==0;
		var l_usesLocals=l_kind==1;
		var l_usesSelf=l_kind==2||l_kind==3;
		while(l_i+l_count<l_end){
			if(!compile_gml_compile_args_get_simple(l_nodes[l_i+l_count]))break;
			l_kind=compile_gml_compile_args_get_simple_kind;
			array_push(l_params,compile_gml_compile_args_get_simple_val);
			array_push(l_kinds,l_kind);
			if(l_kind!=0){
				l_allConsts=false;
				switch(l_kind){
					case 1:l_usesLocals=true;break;
					case 2:case 3:l_usesSelf=true;break;
				}
			}
			l_count++;
		}
		var l_d=gml_std_haxe_enum_tools_getParameter(l_q,0);
		if(l_count==1){
			if(gml_compile_node(l_q,l_actions,true))return true;
		} else if(l_allConsts){
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"...push(consts)",{values:l_params,count:l_count},compile_gml_compile_args_proc_lf));
		} else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"...push(simple)",{
			params:l_params,
			kinds:l_kinds,
			count:l_count,
			usesLocals:l_usesLocals,
			usesSelf:l_usesSelf
		},compile_gml_compile_args_proc_lf1));
		l_i+=l_count;
	}
	return false;
}

if(live_enabled)
function gml_add_sig(l_s){
	
}

if(live_enabled)
function gml_remove_sig(l_s){
	
}

if(live_enabled)
function gml_parse_name(l_s,l_i){
	var l_c=string_ord_at(l_s,l_i+1);
	if(l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c==95){
		var l_k=l_i;
		do {
			l_i++;
			l_c=string_ord_at(l_s,l_i+1);
		} until(!(l_c==95||l_c>=97&&l_c<=122||l_c>=65&&l_c<=90||l_c>=48&&l_c<=57));
		return gml_std_string_substring(l_s,l_k,l_i);
	} else throw gml_std_haxe_Exception_thrown("API.parseName: wrong format in "+l_s);
}

if(live_enabled)
function gml_func_copy(l_to,l_from,l_note){
	if(false)show_debug_message(argument[2]);
	var l_f0=gml_func_map[$ l_from];
	if(l_f0==undefined)throw gml_std_haxe_Exception_thrown("Can't find "+l_from+" to add an alias for.");
	gml_func_map[$ l_to]=l_f0.h_copy(l_to);
	var l_tmp=l_note!=undefined&&l_note!="";
}

if(live_enabled)
function gml_var_add(l_signature,l_func){
	var l_v=new api_api_var();
	l_v.h_set(l_signature,l_func);
	api_api_var_map[$ l_v.h_name]=l_v;
}

if(live_enabled)
function gml_remove_var(l_name){
	if(api_api_var_map[$ l_name]==undefined){
		return false;
	} else {
		variable_struct_remove(api_api_var_map,l_name);
		return true;
	}
}

if(live_enabled)
function gml_const_add(l_name,l_value){
	var l_s=l_name+" = "+gml_value_print(l_value);
	gml_const_map[$ l_name]=true;
	gml_const_val[$ l_name]=l_value;
}

if(live_enabled)
function gml_remove_const(l_name){
	if(variable_struct_exists(gml_const_map,l_name)){
		variable_struct_remove(gml_const_map,l_name);
		variable_struct_remove(gml_const_val,l_name);
		return true;
	} else return false;
}

if(live_enabled)
function gml_asset_add(l_name,l_index){
	gml_asset_index[$ l_name]=l_index;
}

if(live_enabled)
function compile_gml_compile_call_func_proc_lf(l_th,l_u,l_scope,l_st){
	var l_argc=self.argc;
	var l_i=l_st[0]-l_argc;
	l_st[@0]=l_i;
	l_th.h_result=undefined;
	var l_pr=self.func(l_th,l_scope,l_st,l_i+1,l_argc);
	if(l_pr!=3){
		l_scope[@2]+=1;
		var l_i=l_st[0]+1;
		if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
		l_st[@l_i]=l_th.h_result;
		l_st[@0]=l_i;
	}
	return l_pr;
}

if(live_enabled)
function compile_gml_compile_call_func_proc_lf1(l_th,l_u,l_scope,l_st){
	var l_argc=self.argc;
	var l_i=l_st[0]-l_argc;
	l_st[@0]=l_i;
	return self.func(l_th,l_scope,l_st,l_i+1,l_argc);
}

if(live_enabled)
function compile_gml_compile_call_func_proc(l_actions,l_d,l_fn,l_args1,l_out){
	var l_fname=l_fn.h_name;
	var l_argc=array_length(l_args1);
	var l_func=l_fn.h_func;
	var l_funcFlags=l_fn.h_call_type;
	var l_i;
	if(l_funcFlags==undefined)l_funcFlags=0;
	if(l_func==-1)return gml_compile_error("Function `"+l_fname+"` is pointing at an invalid script.",l_d);
	var l_startArg=0;
	var l_firstArgVar=-1;
	if(l_funcFlags==0&&l_argc>0&&l_argc<=5){
		var l__g=l_args1[0];
		if(l__g.__enumIndex__==43){
			l_firstArgVar=gml_compile_curr_script.h_local_map[$ l__g.h_name];
			l_startArg++;
		}
	}
	compile_gml_compile_args_proc(l_actions,l_args1,l_startArg);
	if(l_funcFlags==-5){
		ds_list_add(l_actions,gml_action_call_func(l_d,l_func,l_argc,l_fn.h_arg_type_checks,l_fn.h_rest_type_check,l_funcFlags,false));
		if(l_out)ds_list_add(l_actions,gml_action_result(l_d));
		return false;
	}
	if(l_funcFlags==-7){
		if(l_out){
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"action call",{func:l_func,argc:l_argc},compile_gml_compile_call_func_proc_lf));
			ds_list_add(l_actions,gml_action_result(l_d));
		} else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"action call",{func:l_func,argc:l_argc},compile_gml_compile_call_func_proc_lf1));
		return false;
	}
	if(l_firstArgVar>=0)switch(l_argc){
		case 1:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func_with_local0o(l_d,l_func,l_firstArgVar));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func_with_local0(l_d,l_func,l_firstArgVar));
				return false;
			}
		case 2:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func_with_local1o(l_d,l_func,l_firstArgVar));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func_with_local1(l_d,l_func,l_firstArgVar));
				return false;
			}
		case 3:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func_with_local2o(l_d,l_func,l_firstArgVar));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func_with_local2(l_d,l_func,l_firstArgVar));
				return false;
			}
		case 4:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func_with_local3o(l_d,l_func,l_firstArgVar));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func_with_local3(l_d,l_func,l_firstArgVar));
				return false;
			}
		case 5:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func_with_local4o(l_d,l_func,l_firstArgVar));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func_with_local4(l_d,l_func,l_firstArgVar));
				return false;
			}
	}
	if(l_funcFlags==0&&l_argc<=4)switch(l_argc){
		case 0:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func0o(l_d,l_func));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func0(l_d,l_func));
				return false;
			}
		case 1:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func1o(l_d,l_func));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func1(l_d,l_func));
				return false;
			}
		case 2:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func2o(l_d,l_func));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func2(l_d,l_func));
				return false;
			}
		case 3:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func3o(l_d,l_func));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func3(l_d,l_func));
				return false;
			}
		case 4:
			if(l_out){
				ds_list_add(l_actions,gml_action_call_func4o(l_d,l_func));
				return false;
			} else {
				ds_list_add(l_actions,gml_action_call_func4(l_d,l_func));
				return false;
			}
	}
	ds_list_add(l_actions,gml_action_call_func(l_d,l_func,l_argc,l_fn.h_arg_type_checks,l_fn.h_rest_type_check,l_funcFlags,l_out));
	return false;
}

if(live_enabled)
function vm_v2_gml_action_closure_bind(l_d,l_tag,l_ctx,l_handler){
	return gml_action_closure(l_d,l_tag,l_ctx,method(l_ctx,l_handler));
}

if(live_enabled)
function compile_gml_compile_adjfix_proc_lf(l_th,l_u,l_scope,l_st){
	var l_locals=l_scope[4];
	var l_tmp=self.ind;
	var l_v=l_locals[l_tmp]+1;
	l_locals[@l_tmp]=l_v;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_adjfix_proc_lf1(l_th,l_u,l_scope,l_st){
	var l_locals=l_scope[4];
	var l_tmp=self.ind;
	var l_v=l_locals[l_tmp]-1;
	l_locals[@l_tmp]=l_v;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_adjfix_proc_lf2(l_th,l_u,l_scope,l_st){
	var l_locals=l_scope[4];
	var l_tmp=self.ind;
	var l_tmp1=l_locals[l_tmp];
	l_locals[@l_tmp]=(l_tmp1+1);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_tmp1;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_adjfix_proc_lf3(l_th,l_u,l_scope,l_st){
	var l_locals=l_scope[4];
	var l_tmp=self.ind;
	var l_tmp1=l_locals[l_tmp];
	l_locals[@l_tmp]=(l_tmp1-1);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_tmp1;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_adjfix_proc(l_d,l_x,l_isPrefix,l_inc,l_actions,l_out){
	var l_diff=(l_inc?1:-1);
	var l_fget,l_fset;
	var l__g=l_x;
	switch(l__g.__enumIndex__){
		case 43:
			var l_localInd=gml_compile_curr_script.h_local_map[$ l__g.h_name];
			if(l_isPrefix){
				if(l_inc){
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(++local)",{ind:l_localInd},compile_gml_compile_adjfix_proc_lf));
					return false;
				} else {
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(--local)",{ind:l_localInd},compile_gml_compile_adjfix_proc_lf1));
					return false;
				}
			} else if(l_inc){
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(local++)",{ind:l_localInd},compile_gml_compile_adjfix_proc_lf2));
				return false;
			} else {
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(local--)",{ind:l_localInd},compile_gml_compile_adjfix_proc_lf3));
				return false;
			}
		case 46:return compile_groups_gml_compile_group_static_proc_static_adjfix(l_actions,l_d,l__g.h_name,l_isPrefix,l_inc);
		case 52:return compile_groups_gml_compile_group_static_proc_script_static_adjfix(l_actions,l_d,l__g.h_scr,l__g.h_name,l_isPrefix,l_inc);
		case 49:
			var l_s=l__g.h_name;
			ds_list_add(l_actions,gml_action_global_hx(l_d,l_s));
			if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_actions,gml_action_dup(l_d));
			if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_actions,gml_action_global_set(l_d,l_s));
			break;
		case 55:
			var l_obj=l__g.h_obj;
			var l_field=l__g.h_field;
			if(gml_compile_node(l_obj,l_actions,true))return true;
			var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_field);
			var l_fastSetter=gml_compile_curr_program.h_get_fast_setter_after_getter(l_field);
			if(l_fastGetter!=undefined&&l_fastSetter!=undefined){
				ds_list_add(l_actions,gml_action_dup(l_d));
				ds_list_add(l_actions,gml_action_call_func1o(l_d,l_fastGetter));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,2));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_call_func2(l_d,l_fastSetter));
			} else {
				ds_list_add(l_actions,gml_action_dup(l_d));
				ds_list_add(l_actions,gml_action_field(l_d,l_field));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,2));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_field_set(l_d,l_field));
			}
			break;
		case 70:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index]))return true;
			ds_list_add(l_actions,gml_action_dup2x(l_d));
			ds_list_add(l_actions,gml_action_index(l_d));
			if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,3));
			if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_actions,gml_action_index_set(l_d));
			break;
		case 76:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index]))return true;
			ds_list_add(l_actions,gml_action_dup2x(l_d));
			ds_list_add(l_actions,gml_action_index(l_d));
			if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,3));
			if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_actions,gml_action_index_set(l_d));
			break;
		case 73:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2]))return true;
			ds_list_add(l_actions,gml_action_dup3x(l_d));
			ds_list_add(l_actions,gml_action_index2d(l_d));
			if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,4));
			if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_actions,gml_action_index2d_set(l_d));
			break;
		case 79:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2]))return true;
			ds_list_add(l_actions,gml_action_dup3x(l_d));
			ds_list_add(l_actions,gml_action_index2d(l_d));
			if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,4));
			if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
			ds_list_add(l_actions,gml_action_index2d_set(l_d));
			break;
		case 91:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_obj,l__g.h_key]))return true;
			l_fget=gml_func_map[$"variable_struct_get"];
			l_fset=gml_func_map[$"variable_struct_set"];
			if(l_fget!=undefined&&l_fset!=undefined){
				ds_list_add(l_actions,gml_action_dup2x(l_d));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fget.h_func,2,l_fget.h_arg_type_checks,l_fget.h_rest_type_check,0,true));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fset.h_func,3,l_fset.h_arg_type_checks,l_fset.h_rest_type_check,0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires variable_struct_get and variable_struct_set functions.",l_d);
		case 82:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_list,l__g.h_index]))return true;
			l_fget=gml_func_map[$"ds_list_find_value"];
			l_fset=gml_func_map[$"ds_list_set"];
			if(l_fget!=undefined&&l_fset!=undefined){
				ds_list_add(l_actions,gml_action_dup2x(l_d));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fget.h_func,2,l_fget.h_arg_type_checks,l_fget.h_rest_type_check,0,true));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fset.h_func,3,l_fset.h_arg_type_checks,l_fset.h_rest_type_check,0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_list_find_value and ds_list_set functions.",l_d);
		case 85:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_map,l__g.h_key]))return true;
			l_fget=gml_func_map[$"ds_map_find_value"];
			l_fset=gml_func_map[$"ds_map_set"];
			if(l_fget!=undefined&&l_fset!=undefined){
				ds_list_add(l_actions,gml_action_dup2x(l_d));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fget.h_func,2,l_fget.h_arg_type_checks,l_fget.h_rest_type_check,0,true));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,3));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fset.h_func,3,l_fset.h_arg_type_checks,l_fset.h_rest_type_check,0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_map_find_value and ds_map_set functions.",l_d);
		case 88:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_grid,l__g.h_index1,l__g.h_index2]))return true;
			l_fget=gml_func_map[$"ds_grid_get"];
			l_fset=gml_func_map[$"ds_grid_set"];
			if(l_fget!=undefined&&l_fset!=undefined){
				ds_list_add(l_actions,gml_action_dup3x(l_d));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fget.h_func,3,l_fget.h_arg_type_checks,l_fget.h_rest_type_check,0,true));
				if(l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				if(l_out)ds_list_add(l_actions,gml_action_dup_in(l_d,4));
				if(!l_isPrefix)ds_list_add(l_actions,gml_action_add_int(l_d,l_diff));
				ds_list_add(l_actions,gml_action_call_func(l_d,l_fset.h_func,4,l_fset.h_arg_type_checks,l_fset.h_rest_type_check,0,false));
				return false;
			} else return gml_compile_error("Operation not supported - requires ds_grid_get and ds_grid_set functions.",l_d);
		default:return gml_compile_error("Can't apply "+((l_isPrefix?"prefix":"postfix"))+((l_inc?"++":"--"))+" to "+gml_std_Type_enumConstructor(l_x),l_d);
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_has_statics_init(){
	try{
		if(false){
			self.static_get = undefined;
			self.static_set = undefined;
		}
		return static_get!=undefined;
	}catch(l__g){
		
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_no_static_writes(l_d){
	return gml_compile_error("Cannot modify static variables in a constructor",l_d);
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf(l_th,l_u,l_scope,l_st){
	var l_v=static_get(self.gmlScript)[$ self.name];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf1(l_th,l_u,l_scope,l_st){
	var l_v=static_get(self.gmlScript)[$ self.name];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf2(l_th,l_u,l_scope,l_st){
	var l_this1=static_get(self.gmlScript);
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=(l_i-1);
	l_this1[$ self.name]=l_r;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf3(l_th,l_u,l_scope,l_st){
	var l_this1=static_get(self.gmlScript);
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=(l_i-1);
	l_this1[$ self.name]=l_r;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf4(l_th,l_u,l_scope,l_st){
	var l_statics=static_get(self.gmlScript);
	l_statics[$ self.name]=self.op(l_statics[$ self.name],gml_stack_pop(l_st));
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_lf5(l_th,l_u,l_scope,l_st){
	var l_statics=static_get(self.gmlScript);
	l_statics[$ self.name]=self.op(l_statics[$ self.name],gml_stack_pop(l_st));
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static(l_q,l_actions,l_out,l_gmlScript){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 46:ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[]",{gmlScript:l_gmlScript,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_dot_static_lf1));break;
		case 52:ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[]",{gmlScript:l_gmlScript,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_dot_static_lf));break;
		case 47:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] = pop()",{gmlScript:l_gmlScript,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_dot_static_lf2));
			break;
		case 53:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] = pop()",{gmlScript:l_gmlScript,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_dot_static_lf3));
			break;
		case 48:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] op= pop()",{gmlScript:l_gmlScript,name:l__g.h_name,op:gml_op_apply_fns[l__g.h_op]},compile_groups_gml_compile_group_static_proc_dot_static_lf4));
			break;
		case 54:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] op= pop()",{gmlScript:l_gmlScript,name:l__g.h_name,op:gml_op_apply_fns[l__g.h_op]},compile_groups_gml_compile_group_static_proc_dot_static_lf5));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_adjfix_lf(l_th,l_u,l_scope,l_st){
	var l_statics=static_get(self.gmlScript);
	var l_val=l_statics[$ self.name]+self.delta;
	l_statics[$ self.name]=l_val;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_val;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_adjfix_lf1(l_th,l_u,l_scope,l_st){
	var l_statics=static_get(self.gmlScript);
	var l_val=l_statics[$ self.name];
	l_statics[$ self.name]=(l_val+self.delta);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_val;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc,l_gmlScript){
	var l_ctx={gmlScript:l_gmlScript,name:l_s,delta:(l_inc?1:-1)}
	if(l_isPrefix)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,(l_inc?"push(++static)":"push(--static)"),l_ctx,compile_groups_gml_compile_group_static_proc_dot_static_adjfix_lf)); else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,(l_inc?"push(static++)":"push(static--)"),l_ctx,compile_groups_gml_compile_group_static_proc_dot_static_adjfix_lf1));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_lf(l_th,l_u,l_scope,l_st){
	var l_v=self.values[$ self.name];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_lf1(l_th,l_u,l_scope,l_st){
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=(l_i-1);
	self.values[$ self.name]=l_r;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_lf2(l_th,l_u,l_scope,l_st){
	var l_statics=self.values;
	l_statics[$ self.name]=self.op(l_statics[$ self.name],gml_stack_pop(l_st));
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static(l_q,l_actions,l_out){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 46:ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[]",{values:gml_compile_curr_script.h_static_struct,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_struct_static_lf));break;
		case 47:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] = pop()",{values:gml_compile_curr_script.h_static_struct,name:l__g.h_name},compile_groups_gml_compile_group_static_proc_struct_static_lf1));
			break;
		case 48:
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"script.static[] op= pop()",{values:gml_compile_curr_script.h_static_struct,name:l__g.h_name,op:gml_op_apply_fns[l__g.h_op]},compile_groups_gml_compile_group_static_proc_struct_static_lf2));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_adjfix_lf(l_th,l_u,l_scope,l_st){
	var l_statics=self.values;
	var l_val=l_statics[$ self.name]+self.delta;
	l_statics[$ self.name]=l_val;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_val;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_adjfix_lf1(l_th,l_u,l_scope,l_st){
	var l_statics=self.values;
	var l_val=l_statics[$ self.name];
	l_statics[$ self.name]=l_val+self.delta;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_val;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc){
	var l_ctx={values:gml_compile_curr_script.h_static_struct,name:l_s,delta:(l_inc?1:-1)}
	if(l_isPrefix)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,(l_inc?"push(++static)":"push(--static)"),l_ctx,compile_groups_gml_compile_group_static_proc_struct_static_adjfix_lf)); else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,(l_inc?"push(static++)":"push(static--)"),l_ctx,compile_groups_gml_compile_group_static_proc_struct_static_adjfix_lf1));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_lf(l_th,l_u,l_scope,l_st){
	var l_v=self.values[self.ind];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_lf1(l_th,l_u,l_scope,l_st){
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=(l_i-1);
	self.values[@self.ind]=l_r;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_lf2(l_th,l_u,l_scope,l_st){
	var l_v=self.values;
	l_v[@self.ind]=self.op(self.values[self.ind],gml_stack_pop(l_st));
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static(l_q,l_actions,l_out){
	if(gml_compile_curr_script.h_script_id!=-1){
		return compile_groups_gml_compile_group_static_proc_dot_static(l_q,l_actions,l_out,gml_compile_curr_script.h_script_id);
	} else if(gml_compile_curr_script.h_is_constructor&&compile_groups_gml_compile_group_static_has_statics){
		return compile_groups_gml_compile_group_static_proc_struct_static(l_q,l_actions,l_out);
	}
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 46:ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l__g.h_d,"static[]",{ind:gml_compile_curr_script.h_static_map[$ l__g.h_name],values:gml_compile_curr_script.h_static_values},compile_groups_gml_compile_group_static_proc_static_lf));break;
		case 47:
			var l_d=l__g.h_d;
			if(gml_compile_curr_script.h_is_constructor&&!l__g.h_isInit)return compile_groups_gml_compile_group_static_no_static_writes(l_d);
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"static[] = pop()",{ind:gml_compile_curr_script.h_static_map[$ l__g.h_name],values:gml_compile_curr_script.h_static_values},compile_groups_gml_compile_group_static_proc_static_lf1));
			break;
		case 48:
			var l_d=l__g.h_d;
			if(gml_compile_curr_script.h_is_constructor)return compile_groups_gml_compile_group_static_no_static_writes(l_d);
			if(gml_compile_node(l__g.h_val,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"static[] op= pop()",{ind:gml_compile_curr_script.h_static_map[$ l__g.h_name],values:gml_compile_curr_script.h_static_values,op:gml_op_apply_fns[l__g.h_op]},compile_groups_gml_compile_group_static_proc_static_lf2));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_adjfix_lf(l_th,l_u,l_scope,l_st){
	var l_v=++self.values[@self.ind];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_adjfix_lf1(l_th,l_u,l_scope,l_st){
	var l_v=--self.values[@self.ind];
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_adjfix_lf2(l_th,l_u,l_scope,l_st){
	var l_v=self.values[@self.ind]++;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_adjfix_lf3(l_th,l_u,l_scope,l_st){
	var l_v=self.values[@self.ind]--;
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc){
	if(gml_compile_curr_script.h_script_id!=-1){
		return compile_groups_gml_compile_group_static_proc_dot_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc,gml_compile_curr_script.h_script_id);
	} else if(gml_compile_curr_script.h_is_constructor&&compile_groups_gml_compile_group_static_has_statics){
		return compile_groups_gml_compile_group_static_proc_struct_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc);
	}
	if(gml_compile_curr_script.h_is_constructor)return compile_groups_gml_compile_group_static_no_static_writes(l_d);
	var l_ctx={ind:gml_compile_curr_script.h_static_map[$ l_s],name:l_s,values:gml_compile_curr_script.h_static_values}
	if(l_isPrefix){
		if(l_inc)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(++static)",l_ctx,compile_groups_gml_compile_group_static_proc_static_adjfix_lf)); else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(--static)",l_ctx,compile_groups_gml_compile_group_static_proc_static_adjfix_lf1));
	} else if(l_inc){
		ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(static++)",l_ctx,compile_groups_gml_compile_group_static_proc_static_adjfix_lf2));
	} else ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(static--)",l_ctx,compile_groups_gml_compile_group_static_proc_static_adjfix_lf3));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_script_static(l_q,l_actions,l_out){
	var l_scrName;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 52:l_scrName=l__g.h_scr;break;
		case 53:l_scrName=l__g.h_scr;break;
		case 54:l_scrName=l__g.h_scr;break;
		default:return undefined;
	}
	return compile_groups_gml_compile_group_static_proc_dot_static(l_q,l_actions,l_out,asset_get_index(l_scrName));
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_script_static_adjfix(l_actions,l_d,l_scrName,l_s,l_isPrefix,l_inc){
	return compile_groups_gml_compile_group_static_proc_dot_static_adjfix(l_actions,l_d,l_s,l_isPrefix,l_inc,asset_get_index(l_scrName));
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_init_lf(l_th,l_u,l_scope,l_st){
	if(variable_struct_names_count(static_get(self.gmlScript))!=0){
		l_scope[@2]=self.dest;
		return 2;
	} else return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_init_lf1(l_th,l_u,l_scope,l_st){
	var l_this1=l_scope[6];
	static_set(l_this1[l_this1[0]],static_get(self.gmlScript));
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_dot_static_init(l_actions,l_initArr,l_gmlScript){
	ds_list_add(l_actions,undefined);
	var l_start=ds_list_size(l_actions)-1;
	var l__g=0;
	while(l__g<array_length(l_initArr)){
		var l_item=l_initArr[l__g];
		l__g++;
		if(gml_compile_node(l_item,l_actions,false))return true;
	}
	ds_list_set(l_actions,l_start,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"if (statics) jump",{gmlScript:l_gmlScript,dest:ds_list_size(l_actions)},compile_groups_gml_compile_group_static_proc_dot_static_init_lf));
	if(gml_compile_curr_script.h_is_constructor)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"set statics",{gmlScript:l_gmlScript},compile_groups_gml_compile_group_static_proc_dot_static_init_lf1));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_init_lf(l_th,l_u,l_scope,l_st){
	if(self.ready[0]){
		l_scope[@2]=self.dest;
		return 2;
	} else {
		self.ready[@0]=true;
		return 0;
	}
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_init_lf1(l_th,l_u,l_scope,l_st){
	var l_this1=l_scope[6];
	static_set(l_this1[l_this1[0]],self.values);
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_struct_static_init(l_actions,l_initArr){
	ds_list_add(l_actions,undefined);
	var l_start=ds_list_size(l_actions)-1;
	var l__g=0;
	while(l__g<array_length(l_initArr)){
		var l_item=l_initArr[l__g];
		l__g++;
		if(gml_compile_node(l_item,l_actions,false))return true;
	}
	ds_list_set(l_actions,l_start,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"if static_ready jump",{ready:gml_compile_curr_script.h_static_ready,dest:ds_list_size(l_actions)},compile_groups_gml_compile_group_static_proc_struct_static_init_lf));
	if(gml_compile_curr_script.h_is_constructor)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"set statics",{values:gml_compile_curr_script.h_static_struct},compile_groups_gml_compile_group_static_proc_struct_static_init_lf1));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_init_lf(l_th,l_u,l_scope,l_st){
	if(self.ready[0]){
		l_scope[@2]=self.dest;
		return 2;
	} else {
		self.ready[@0]=true;
		return 0;
	}
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_init_lf1(l_th,l_u,l_scope,l_st){
	var l_this1=l_scope[6];
	var l_self1=l_this1[l_this1[0]];
	var l_i=0;
	for(var l__g1=array_length(self.names);l_i<l__g1;l_i++){
		l_self1[$ self.names[l_i]]=self.values[l_i];
	}
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_proc_static_init(l_actions){
	var l_initArr=gml_compile_curr_script.h_static_init;
	if(array_length(l_initArr)==0)return false;
	if(gml_compile_curr_script.h_script_id!=-1){
		return compile_groups_gml_compile_group_static_proc_dot_static_init(l_actions,l_initArr,gml_compile_curr_script.h_script_id);
	} else if(gml_compile_curr_script.h_is_constructor&&compile_groups_gml_compile_group_static_has_statics){
		return compile_groups_gml_compile_group_static_proc_struct_static_init(l_actions,l_initArr);
	}
	ds_list_add(l_actions,undefined);
	var l_start=ds_list_size(l_actions)-1;
	var l__g=0;
	while(l__g<array_length(l_initArr)){
		var l_item=l_initArr[l__g];
		l__g++;
		if(gml_compile_node(l_item,l_actions,false))return true;
	}
	ds_list_set(l_actions,l_start,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"if static_ready jump",{ready:gml_compile_curr_script.h_static_ready,dest:ds_list_size(l_actions)},compile_groups_gml_compile_group_static_proc_static_init_lf));
	if(gml_compile_curr_script.h_is_constructor)ds_list_add(l_actions,vm_v2_gml_action_closure_bind(gml_compile_curr_script.h_pos,"set statics",{names:gml_compile_curr_script.h_static_names,values:gml_compile_curr_script.h_static_values},compile_groups_gml_compile_group_static_proc_static_init_lf1));
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_static_init(){
	gml_compile_set_handlers(compile_groups_gml_compile_group_static_proc_static,["static","static_set","static_aop"]);
	gml_compile_set_handlers(compile_groups_gml_compile_group_static_proc_script_static,["script_static","script_static_set","script_static_aop"]);
}

if(live_enabled)
function gml_func()constructor{
	static h_name=undefined; /// @is {string}
	static h_signature=undefined; /// @is {string}
	static h_is_const=undefined; /// @is {bool}
	static h_func=undefined; /// @is {any}
	static h_raw_func=undefined; /// @is {any}
	static h_call_type=undefined; /// @is {data_GmlFuncFlags}
	static h_is_script=undefined; /// @is {bool}
	static h_arg_count=undefined; /// @is {int}
	static h_min_args=undefined; /// @is {int}
	static h_max_args=undefined; /// @is {int}
	static h_arg_type_checks=undefined; /// @is {array<gml_type_check>}
	static h_rest_type_check=undefined; /// @is {gml_type_check}
	static h_copy=function(l_newName){
		var l_f=new gml_func();
		var l_sig=self.h_signature;
		var l_pos=gml_std_string_pos_ext_haxe(l_sig,self.h_name);
		l_sig=gml_std_string_substring(l_sig,0,l_pos)+l_newName+gml_std_string_substring(l_sig,l_pos+string_length(self.h_name));
		l_f.h_name=l_newName;
		l_f.h_signature=l_sig;
		l_f.h_is_const=self.h_is_const;
		l_f.h_func=self.h_func;
		l_f.h_call_type=self.h_call_type;
		l_f.h_arg_count=self.h_arg_count;
		l_f.h_min_args=self.h_min_args;
		l_f.h_max_args=self.h_max_args;
		l_f.h_arg_type_checks=self.h_arg_type_checks;
		l_f.h_rest_type_check=self.h_rest_type_check;
		return l_f;
	}
	static h_init_mystery=function(l_name,l_fn){
		self.h_name=l_name;
		self.h_signature=l_name+"(...)";
		self.h_is_const=false;
		self.h_func=method(undefined,l_fn);
		self.h_raw_func=l_fn;
		self.h_call_type=3;
		self.h_is_script=true;
		self.h_arg_count=-1;
		self.h_min_args=0;
		self.h_max_args=81;
		self.h_arg_type_checks=[];
		self.h_rest_type_check=gml_type_check_any;
	}
	static h_set=function(l_sig,l_func){
		self.h_signature=l_sig;
		var l_parStart=gml_std_string_pos_ext_haxe(l_sig,"(")+1;
		if(l_parStart==0)throw gml_std_haxe_Exception_thrown(self.h_signature+" has no `(`");
		var l_parEnd=gml_std_string_pos_ext_haxe(l_sig,")");
		if(l_parEnd<0)throw gml_std_haxe_Exception_thrown(self.h_signature+" has no `)`");
		var l_argText=gml_std_StringTools_trim(gml_std_string_substring(l_sig,l_parStart,l_parEnd));
		var l_flags=gml_std_string_substring(l_sig,l_parEnd+1);
		var l_argCount;
		var l_minArgs=-1;
		var l_maxArgs,l_args1,l_argCheck;
		var l_restCheck=gml_type_check_any;
		if(l_argText==""){
			l_argCount=0;
			l_maxArgs=0;
			l_argCheck=[];
			l_args1=undefined;
		} else {
			l_args1=gml_std_string_split(l_argText,",");
			l_argCount=array_length(l_args1);
			l_maxArgs=l_argCount;
			l_argCheck=array_create(l_argCount);
		}
		var l_pos;
		var l_i=0;
		for(var l__g1=l_argCount;l_i<l__g1;l_i++){
			var l_arg=l_args1[l_i];
			var l_opt;
			var l_isRest=false;
			l_pos=gml_std_string_pos_ext_haxe(l_arg,"=");
			if(l_pos>=0){
				l_opt=true;
				l_arg=gml_std_string_substring(l_arg,0,l_pos);
			} else if(gml_std_string_pos_ext_haxe(l_arg,"...")>=0){
				l_isRest=true;
				l_opt=true;
				l_maxArgs=81;
			} else l_opt=false;
			l_pos=gml_std_string_pos_ext_haxe(l_arg,":");
			if(l_pos>=0){
				var l_typeStr=gml_std_StringTools_trim(gml_std_string_substring(l_arg,l_pos+1));
				l_arg=gml_std_string_substring(l_arg,0,l_pos);
				l_argCheck[@l_i]=gml_type_check_any;
			} else l_argCheck[@l_i]=gml_type_check_any;
			if(gml_std_string_pos_ext_haxe(l_arg,"?")>=0)l_opt=true;
			if(l_opt){
				l_argCount=-1;
				if(l_minArgs<0)l_minArgs=l_i;
			}
		}
		if(l_argCount<0){
			if(l_minArgs<0)l_minArgs=0;
		} else {
			l_minArgs=l_argCount;
			l_maxArgs=l_argCount;
		}
		l_pos=0;
		var l_inst=0;
		for(var l__=0;l__<3;l__++){
			if(string_ord_at(l_sig,l_pos+1)==58){
				l_pos++;
				l_inst++;
			} else break;
		}
		if(string_ord_at(l_sig,l_pos+1)==36&&string_ord_at(l_sig,l_pos+1+1)==123){
			var l_start=l_pos+2;
			l_pos=gml_std_string_pos_ext_haxe(l_sig,"}",l_pos)+1;
			switch(gml_std_string_substring(l_sig,l_start,l_pos-1)){
				case "raw":l_inst=-5;break;
				case "acall":l_inst=-7;break;
				default:throw gml_std_haxe_Exception_thrown("Unknown meta ${"+gml_std_string_substring(l_sig,l_start,l_pos)+"} in "+l_sig);
			}
		}
		var l_name=gml_parse_name(l_sig,l_pos);
		var l_rawFunc;
		if(is_method(l_func)){
			l_rawFunc=method_get_index(l_func);
			var l__self=method_get_self(l_func);
			if(l__self!=undefined){
				if(instanceof(l__self)=="instance"||is_numeric(l__self)){
					l_func=method(undefined,l_func);
				} else switch(l_inst){
					case 1:case 2:case 3:throw gml_std_haxe_Exception_thrown("self/other functions cannot have struct bindings in "+l_sig);
				}
			}
		} else {
			l_rawFunc=l_func;
			l_func=method(undefined,l_func);
			if(l_func>=100000)self.h_is_script=true;
		}
		if(!gml_std_haxe_boot_isJS)ds_map_set(gml_func_name,l_rawFunc,l_name);
		self.h_name=l_name;
		self.h_func=l_func;
		self.h_raw_func=l_rawFunc;
		self.h_call_type=l_inst;
		self.h_is_const=gml_std_string_pos_ext_haxe(l_flags,"#")>=0;
		self.h_arg_count=l_argCount;
		self.h_min_args=l_minArgs;
		self.h_max_args=l_maxArgs;
		self.h_arg_type_checks=l_argCheck;
		self.h_rest_type_check=l_restCheck;
	}
	self.h_is_script=false;
	static __class__=mt_gml_func;
}

if(live_enabled)
function gml_func_add(l_signature,l_func){
	var l_f=new gml_func();
	l_f.h_set(l_signature,l_func);
	gml_func_map[$ l_f.h_name]=l_f;
}

if(live_enabled)
function gml_func_remove(l_name){
	if(gml_func_map[$ l_name]==undefined)return false;
	variable_struct_remove(gml_func_map,l_name);
	return true;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf(l_th,l_u,l_scope,l_st){
	var l_v=gml_op_apply_fns[self.op](l_scope[4][self.ind1],l_scope[4][self.ind2]);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf1(l_th,l_u,l_scope,l_st){
	var l_v=gml_op_apply_fns[self.op](l_scope[4][self.ind],self.val);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf2(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=gml_op_apply_fns[self.op](l_scope[4][self.ind],l_st[l_z]);
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf3(l_th,l_u,l_scope,l_st){
	var l_v=gml_op_apply_fns[self.op](self.val,l_scope[4][self.ind]);
	var l_i=l_st[0]+1;
	if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
	l_st[@l_i]=l_v;
	l_st[@0]=l_i;
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf4(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=gml_op_apply_fns[self.op](l_st[l_z],l_scope[4][self.ind]);
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf5(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=gml_op_apply_fns[self.op](self.val,l_st[l_z]);
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc_lf6(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=gml_op_apply_fns[self.op](l_st[l_z],self.val);
	return 0;
}

if(live_enabled)
function compile_gml_compile_bin_op_proc(l_actions,l_d,l_o,l_a,l_b){
	if(gml_op_is_simple(l_o)){
		var l_ai;
		var l__g=l_a;
		if(l__g.__enumIndex__==43)l_ai=gml_compile_curr_script.h_local_map[$ l__g.h_name]; else l_ai=-1;
		var l_bi;
		var l__g=l_b;
		if(l__g.__enumIndex__==43)l_bi=gml_compile_curr_script.h_local_map[$ l__g.h_name]; else l_bi=-1;
		if(l_ai>=0){
			if(l_bi>=0){
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(local "+gml_op_to_string(l_o)+" local)",{ind1:l_ai,ind2:l_bi,op:l_o},compile_gml_compile_bin_op_proc_lf));
				return false;
			}
			if(gml_compile_const_val_of(l_b)){
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(local "+gml_op_to_string(l_o)+" const)",{ind:l_ai,val:gml_compile_const_val_of_val,op:l_o},compile_gml_compile_bin_op_proc_lf1));
				return false;
			}
			if(gml_compile_node(l_b,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(local "+gml_op_to_string(l_o)+" pop())",{ind:l_ai,op:l_o},compile_gml_compile_bin_op_proc_lf2));
			return false;
		}
		if(l_bi>=0){
			if(gml_compile_const_val_of(l_a)){
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(const "+gml_op_to_string(l_o)+" local)",{ind:l_bi,val:gml_compile_const_val_of_val,op:l_o},compile_gml_compile_bin_op_proc_lf3));
				return false;
			}
			if(gml_compile_node(l_a,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(pop() "+gml_op_to_string(l_o)+" local)",{ind:l_bi,op:l_o},compile_gml_compile_bin_op_proc_lf4));
			return false;
		}
		if(gml_compile_const_val_of(l_a)){
			var l_val=gml_compile_const_val_of_val;
			if(gml_compile_node(l_b,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(const "+gml_op_to_string(l_o)+" pop())",{val:l_val,op:l_o},compile_gml_compile_bin_op_proc_lf5));
			return false;
		}
		if(gml_compile_const_val_of(l_b)){
			var l_val=gml_compile_const_val_of_val;
			if(gml_compile_node(l_a,l_actions,true))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"push(pop() "+gml_op_to_string(l_o)+" const)",{val:l_val,op:l_o},compile_gml_compile_bin_op_proc_lf6));
			return false;
		}
	}
	var l_p0;
	switch(l_o){
		case 18:
			if(compile_gml_compile_args_proc(l_actions,[l_a,l_b]))return true;
			ds_list_add(l_actions,gml_action_concat(l_d));
			break;
		case 64:
			if(compile_gml_compile_args_proc(l_actions,[l_a,l_b]))return true;
			ds_list_add(l_actions,gml_action_equ_op(l_d));
			break;
		case 65:
			if(compile_gml_compile_args_proc(l_actions,[l_a,l_b]))return true;
			ds_list_add(l_actions,gml_action_neq_op(l_d));
			break;
		case 80:
			if(gml_compile_node(l_a,l_actions,true))return true;
			l_p0=ds_list_size(l_actions);
			ds_list_add(l_actions,gml_action_bool_and(l_d,0));
			if(gml_compile_node(l_b,l_actions,true))return true;
			ds_list_set(l_actions,l_p0,gml_action_bool_and(l_d,ds_list_size(l_actions)));
			break;
		case 96:
			if(gml_compile_node(l_a,l_actions,true))return true;
			l_p0=ds_list_size(l_actions);
			ds_list_add(l_actions,gml_action_bool_or(l_d,0));
			if(gml_compile_node(l_b,l_actions,true))return true;
			ds_list_set(l_actions,l_p0,gml_action_bool_or(l_d,ds_list_size(l_actions)));
			break;
		default:
			if(compile_gml_compile_args_proc(l_actions,[l_a,l_b]))return true;
			ds_list_add(l_actions,gml_action_bin_op(l_d,l_o));
	}
	return false;
}

if(live_enabled)
function gml_value_get_type(l_this1){
	if(l_this1==undefined){
		return "undefined";
	} else if(is_numeric(l_this1)){
		return "number";
	} else if(is_string(l_this1)){
		return "string";
	} else if(is_struct(l_this1)){
		return "struct";
	} else if(is_array(l_this1)){
		return "array";
	} else return typeof(l_this1);
}

if(live_enabled)
function gml_value_print(l_this1){
	ds_map_clear(vm_value_gml_value_printer_print_refs);
	vm_value_gml_value_printer_print_num=0;
	var l_r=vm_value_gml_value_printer_print_rec(l_this1,0);
	ds_map_clear(vm_value_gml_value_printer_print_refs);
	return l_r;
}

if(live_enabled)
function gml_value_dump(l_this1){
	if(instanceof(l_this1)=="instance")return "`"+gml_value_print(l_this1)+"` (instance of "+object_get_name(l_this1.object_index)+")";
	return "`"+gml_value_print(l_this1)+"` ("+gml_value_get_type(l_this1)+")";
}

if(live_enabled)
function vm_value_gml_value_printer_print_rec(l_v,l_z){
	var l_r,l_i,l_n;
	var l_id=vm_value_gml_value_printer_print_num++;
	if(l_v==undefined)return "undefined";
	if(is_int64(l_v))return string(l_v);
	if(is_bool(l_v)){
		if(l_v)return "true"; else return "false";
	}
	if(is_numeric(l_v)){
		if(sign(frac(l_v))==0)return string(l_v); else return json_stringify(l_v);
	}
	if(is_string(l_v)){
		return json_stringify(l_v);
	} else if(is_array(l_v)){
		l_r=ds_map_find_value(vm_value_gml_value_printer_print_refs,l_v);
		if(l_r!=undefined)return l_r;
		ds_map_set(vm_value_gml_value_printer_print_refs,l_v,"@"+string(l_id));
		l_n=array_length(l_v);
		if(l_n>0){
			if(++l_z>8)return "[...]";
			l_r="["+vm_value_gml_value_printer_print_rec(l_v[0],l_z);
			for(l_i=1;l_i<l_n;l_i++){
				l_r+=", "+vm_value_gml_value_printer_print_rec(l_v[l_i],l_z);
			}
			return l_r+"]";
		} else return "[]";
	}
	if(instanceof(l_v)=="instance"){
		var l_q=l_v;
		return "instance#"+string(l_q.id)+"("+object_get_name(l_q.object_index)+")";
	}
	return string(l_v);
}

if(live_enabled)
function gml_std_Std_stringify(l_value){
	if(l_value==undefined)return "null";
	if(is_string(l_value))return l_value;
	var l_n,l_i,l_s;
	if(is_struct(l_value)){
		var l_e=l_value[$"__enum__"];
		if(l_e==undefined)return string(l_value);
		var l_ects=l_e.h_constructors;
		if(l_ects!=undefined){
			l_i=l_value.__enumIndex__;
			if(l_i>=0&&l_i<array_length(l_ects))l_s=l_ects[l_i]; else l_s="?";
		} else {
			l_s=instanceof(l_value);
			if(string_copy(l_s,1,3)=="mc_")l_s=string_delete(l_s,1,3);
			l_n=string_length(l_e.h_name);
			if(string_copy(l_s,1,l_n)==l_e.h_name)l_s=string_delete(l_s,1,l_n+1);
		}
		l_s+="(";
		var l_fields=l_value.__enumParams__;
		l_n=array_length(l_fields);
		for(l_i=-1;++l_i<l_n;l_s+=gml_std_Std_stringify(l_value[$ l_fields[l_i]])){
			if(l_i>0)l_s+=", ";
		}
		return l_s+")";
	}
	if(is_real(l_value)){
		l_s=string_format(l_value,0,16);
		if(os_browser!=browser_not_a_browser){
			l_n=string_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_ord_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		} else {
			l_n=string_byte_length(l_s);
			l_i=l_n;
			while(l_i>0){
				switch(string_byte_at(l_s,l_i)){
					case 48:
						l_i--;
						continue;
					case 46:l_i--;break;
				}
				break;
			}
		}
		return string_copy(l_s,1,l_i);
	}
	return string(l_value);
}

if(live_enabled)
function gml_std_Std_parseFloat(l_s){
	var l_l=string_length(l_s);
	var l_n=string_length(string_digits(l_s));
	var l_p=string_pos(".",l_s);
	var l_e=string_pos("e",l_s);
	if(l_e==0)l_e=string_pos("E",l_s);
	switch(l_e){
		case 0:break;
		case 1:return NaN;
		case 2:if(l_p>0)return NaN;break;
		default:if(l_p>0&&l_e<l_p)return NaN;
	}
	if(l_e!=0&&l_e<l_l-1)switch(string_ord_at(l_s,l_e+1)){
		case 43:case 45:l_l--;break;
	}
	if(l_n&&l_n==l_l-(string_ord_at(l_s,1)==45)-(l_p!=0)-(l_e!=0))return real(l_s); else return NaN;
}

if(live_enabled)
function gml_std_Std_parseInt(l_value){
	var l_n=string_length(string_digits(l_value));
	if(l_n&&l_n==string_length(l_value)-(string_ord_at(l_value,1)==45))return real(l_value); else return undefined;
}

if(live_enabled)
function gml_std_string_pos_ext_haxe(l_this,l_needle,l_startPos){
	if(l_startPos==undefined)l_startPos=0;
	if(false)show_debug_message(argument[1]);
	if(l_startPos<=0)return string_pos(l_needle,l_this)-1;
	return string_pos_ext(l_needle,l_this,l_startPos)-1;
}

if(live_enabled)
function gml_std_string_last_pos_haxe(l_this,l_needle,l_startPos){
	if(false)show_debug_message(argument[1]);
	if(l_startPos==undefined||l_startPos>=string_length(l_this))return string_last_pos(l_needle,l_this)-1;
	return string_last_pos_ext(l_needle,l_this,l_startPos)-1;
}

if(live_enabled)
function gml_std_string_split(l_this,l_del){
	var l_str=l_this;
	var l_num=0;
	var l_arr=array_create(string_count(l_del,l_str)+1);
	for(var l_pos=string_pos(l_del,l_str);l_pos>0;l_pos=string_pos(l_del,l_str)){
		l_arr[@l_num]=string_copy(l_str,1,l_pos-1);
		l_num++;
		l_str=string_delete(l_str,1,l_pos);
	}
	l_arr[@l_num]=l_str;
	return l_arr;
}

if(live_enabled)
function gml_std_string_substr(l_this,l_pos,l_len){
	if(false)show_debug_message(argument[1]);
	if(l_pos<0)l_pos+=string_length(l_this);
	if(l_len==undefined)return string_delete(l_this,1,l_pos); else return string_copy(l_this,1+l_pos,l_len);
}

if(live_enabled)
function gml_std_string_substring(l_this,l_start,l_end){
	if(false)show_debug_message(argument[1]);
	if(l_end==undefined){
		if(l_start>0)return string_delete(l_this,1,l_start); else return l_this;
	}
	if(l_start<0)l_start=0;
	if(l_end<0)l_end=0;
	if(l_start>l_end){
		var l_tmp=l_start;
		l_start=l_end;
		l_end=l_tmp;
	}
	var l_len=string_length(l_this);
	if(l_start>=l_len){
		return "";
	} else if(l_end>=l_len){
		if(l_start>0)return string_delete(l_this,1,l_start); else return l_this;
	} else return string_copy(l_this,l_start+1,l_end-l_start);
}

if(live_enabled)
function gml_op_is_simple(l_this1){
	switch(l_this1){
		case 18:case 80:case 96:return false;
		default:return true;
	}
}

if(live_enabled)
function gml_op_get_priority(l_op){
	return (l_op>>4);
}

if(live_enabled)
function gml_op_to_string(l_this1){
	switch(l_this1){
		case -1:return "";
		case 0:return "*";
		case 1:return "/";
		case 3:return "div";
		case 2:return "%";
		case 16:return "+";
		case 17:return "-";
		case 18:return "+";
		case 32:return "<<";
		case 33:return ">>";
		case 48:return "|";
		case 49:return "&";
		case 50:return "^";
		case 64:return "==";
		case 65:return "!=";
		case 68:return ">";
		case 66:return "<";
		case 69:return ">=";
		case 67:return "<=";
		case 80:return "&&";
		case 96:return "||";
		default:return gml_op_get_name(l_this1);
	}
}

if(live_enabled)
function gml_op_apply_init_lf(l_a,l_b){
	return l_a+l_b;
}

if(live_enabled)
function gml_op_apply_init_lf1(l_a,l_b){
	return l_a-l_b;
}

if(live_enabled)
function gml_op_apply_init_lf2(l_a,l_b){
	return l_a*l_b;
}

if(live_enabled)
function gml_op_apply_init_lf3(l_a,l_b){
	return l_a/l_b;
}

if(live_enabled)
function gml_op_apply_init_lf4(l_a,l_b){
	return l_a%l_b;
}

if(live_enabled)
function gml_op_apply_init_lf5(l_a,l_b){
	if(l_b==0&&is_int64(l_b)&&is_int64(l_a))throw gml_std_haxe_Exception_thrown("Division by zero");
	return (l_a div l_b);
}

if(live_enabled)
function gml_op_apply_init_lf6(l_a,l_b){
	return (l_a&l_b);
}

if(live_enabled)
function gml_op_apply_init_lf7(l_a,l_b){
	return (l_a|l_b);
}

if(live_enabled)
function gml_op_apply_init_lf8(l_a,l_b){
	return (l_a^l_b);
}

if(live_enabled)
function gml_op_apply_init_lf9(l_a,l_b){
	return (l_a<<l_b);
}

if(live_enabled)
function gml_op_apply_init_lf10(l_a,l_b){
	return (l_a>>l_b);
}

if(live_enabled)
function gml_op_apply_init_lf11(l_a,l_b){
	return l_a==l_b;
}

if(live_enabled)
function gml_op_apply_init_lf12(l_a,l_b){
	return l_a!=l_b;
}

if(live_enabled)
function gml_op_apply_init_lf13(l_a,l_b){
	return l_a>l_b;
}

if(live_enabled)
function gml_op_apply_init_lf14(l_a,l_b){
	return l_a>=l_b;
}

if(live_enabled)
function gml_op_apply_init_lf15(l_a,l_b){
	return l_a<l_b;
}

if(live_enabled)
function gml_op_apply_init_lf16(l_a,l_b){
	return l_a<=l_b;
}

if(live_enabled)
function gml_op_apply_init_lf17(l_v1,l_v2){
	if(!is_string(l_v2))l_v2=gml_value_print(l_v2);
	if(!is_string(l_v1))l_v1=gml_value_print(l_v1);
	return l_v1+l_v2;
}

if(live_enabled)
function gml_op_apply_init_lf18(l_a,l_b){
	show_error("No handler for operator "+string(self.ind),true);
	return 0;
}

if(live_enabled)
function gml_op_apply_init(){
	var l_out=[];
	var l__=0;
	for(var l__g1=96+1;l__<l__g1;l__++){
		array_push(l_out,undefined);
	}
	l_out[@16]=gml_op_apply_init_lf;
	l_out[@17]=gml_op_apply_init_lf1;
	l_out[@0]=gml_op_apply_init_lf2;
	l_out[@1]=gml_op_apply_init_lf3;
	l_out[@2]=gml_op_apply_init_lf4;
	l_out[@3]=gml_op_apply_init_lf5;
	l_out[@49]=gml_op_apply_init_lf6;
	l_out[@48]=gml_op_apply_init_lf7;
	l_out[@50]=gml_op_apply_init_lf8;
	l_out[@32]=gml_op_apply_init_lf9;
	l_out[@33]=gml_op_apply_init_lf10;
	l_out[@64]=gml_op_apply_init_lf11;
	l_out[@65]=gml_op_apply_init_lf12;
	l_out[@68]=gml_op_apply_init_lf13;
	l_out[@69]=gml_op_apply_init_lf14;
	l_out[@66]=gml_op_apply_init_lf15;
	l_out[@67]=gml_op_apply_init_lf16;
	l_out[@18]=gml_op_apply_init_lf17;
	var l_oi=0;
	for(var l__g1=96+1;l_oi<l__g1;l_oi++){
		if(l_out[l_oi]==undefined)l_out[@l_oi]=method({ind:l_oi},gml_op_apply_init_lf18);
	}
	return l_out;
}

if(live_enabled)
function gml_op_get_name(l_this1){
	switch(l_this1){
		case 1:return "Div";
		case 2:return "Mod";
		case 7:return "priorities";
		case 16:return "Add";
		case 17:return "Sub";
		case 18:return "Cct";
		case 32:return "Shl";
		case 33:return "Shr";
		case 48:return "Or";
		case 49:return "And";
		case 64:return "EQ";
		case 65:return "NE";
		case 66:return "LT";
		case 67:return "LE";
		case 68:return "GT";
		case 69:return "GE";
		case 80:return "BAnd";
		case 96:return "BOr";
		case 50:return "Xor";
		case 3:return "IDiv";
		case 0:return "Mul";
		case -1:return "Set";
		default:return undefined;
	}
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf(l_th,l_u,l_scope,l_st){
	delete l_scope[4][self.varind];
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf1(l_th,l_u,l_scope,l_st){
	var l_global = global; delete l_global[$ self.varname];
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf2(l_th,l_u,l_scope,l_st){
	var l_this1=l_scope[6];
	delete l_this1[l_this1[0]][$ self.varname];
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf3(l_th,l_u,l_scope,l_st){
	var l_i=l_st[0];
	var l_r=l_st[l_i];
	l_st[@l_i]=0;
	l_st[@0]=(l_i-1);
	delete l_r[$ self.varname];
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf4(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	delete l_st[l_z][l_st[l_z+1]];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf5(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	delete l_st[l_z][| l_st[l_z+1]];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf6(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	delete l_st[l_z][? l_st[l_z+1]];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf7(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0]-2;
	l_st[@0]=(l_z-1);
	delete l_st[l_z][# l_st[l_z+1], l_st[l_z+2]];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	l_st[@l_z+2]=0;
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc_lf8(l_th,l_u,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	delete l_st[l_z][$ l_st[l_z+1]];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_gml_compile_delete_proc(l_actions,l_d,l_x){
	var l__g=l_x;
	switch(l__g.__enumIndex__){
		case 43:
			var l_s=l__g.h_name;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete local",{varname:l_s,varind:gml_compile_curr_script.h_local_map[$ l_s]},compile_gml_compile_delete_proc_lf));
			break;
		case 49:ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete global",{varname:l__g.h_name},compile_gml_compile_delete_proc_lf1));break;
		case 55:
			var l__g1=l__g.h_obj;
			if(l__g1.__enumIndex__==14){
				if(gml_compile_node(l_x,l_actions,true))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete self.field",{varname:l__g.h_field},compile_gml_compile_delete_proc_lf2));
			} else {
				if(gml_compile_node(l__g1,l_actions,true))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete field",{varname:l__g.h_field},compile_gml_compile_delete_proc_lf3));
			}
			break;
		case 70:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index]))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete array index",{},compile_gml_compile_delete_proc_lf4));
			break;
		case 82:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_list,l__g.h_index]))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete list index",{},compile_gml_compile_delete_proc_lf5));
			break;
		case 85:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_map,l__g.h_key]))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete map index",{},compile_gml_compile_delete_proc_lf6));
			break;
		case 88:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_grid,l__g.h_index1,l__g.h_index2]))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete grid index",{},compile_gml_compile_delete_proc_lf7));
			break;
		case 91:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_obj,l__g.h_key]))return true;
			ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"delete struct field",{},compile_gml_compile_delete_proc_lf8));
			break;
		default:return gml_compile_error("Can't delete "+gml_std_Type_enumConstructor(l_x),gml_std_haxe_enum_tools_getParameter(l_x,0));
	}
	return false;
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameter(l_q,l_i){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		return l_q[$ l_params[l_i]];
	} else if(is_array(l_q)){
		return l_q[l_i+1];
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_getParameterCount(l_q){
	if(is_struct(l_q)){
		return array_length(l_q.__enumParams__);
	} else if(is_array(l_q)){
		return array_length(l_q)-1;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setParameter(l_q,l_i,l_value){
	if(is_struct(l_q)){
		var l_params=l_q.__enumParams__;
		l_q[$ l_params[l_i]]=l_value;
	} else if(is_array(l_q)){
		l_q[@l_i+1]=l_value;
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function gml_std_haxe_enum_tools_setTo(l_q,l_v){
	if(is_struct(l_q)){
		var l_qp=l_q.__enumParams__;
		var l_vp=l_v.__enumParams__;
		var l_n=array_length(l_qp);
		var l_i=-1;
		while(++l_i<l_n){
			l_q[$ l_qp[l_i]]=undefined;
		}
		l_i=-1;
		l_n=array_length(l_vp);
		while(++l_i<l_n){
			l_q[$ l_vp[l_i]]=l_v[$ l_vp[l_i]];
		}
		l_q.__enumParams__=l_vp;
		l_q.__enumIndex__=l_v.__enumIndex__;
	} else if(is_array(l_q)){
		var l_qx=l_q;
		var l_vx=l_v;
		var l_n=array_length(l_vx);
		if(array_length(l_qx)!=l_n)array_resize(l_qx,l_n);
		array_copy(l_qx,0,l_vx,0,l_n);
	} else throw gml_std_haxe_Exception_thrown("Not an EnumValue");
}

if(live_enabled)
function compile_groups_gml_compile_group_ds_proc(l_q,l_actions,l_out){
	var l_fn,l_fn2;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 82:
			l_fn=gml_func_map[$"ds_list_find_value"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_list,l__g.h_index],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 83:
			l_fn=gml_func_map[$"ds_list_set"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_list,l__g.h_index,l__g.h_val],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 84:
			var l_args1=[l__g.h_list,l__g.h_index,l__g.h_val];
			l_fn=gml_func_map[$"ds_list_find_value"];
			l_fn2=gml_func_map[$"ds_list_set"];
			if(l_fn!=undefined&&l_fn2!=undefined){
				compile_gml_compile_args_proc(l_actions,l_args1);
				ds_list_add(l_actions,gml_action_ds_aop(l__g.h_d,l__g.h_op,array_length(l_args1),l_fn.h_func,l_fn2.h_func,l_out));
				return false;
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 85:
			l_fn=gml_func_map[$"ds_map_find_value"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_map,l__g.h_key],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 86:
			l_fn=gml_func_map[$"ds_map_set"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_map,l__g.h_key,l__g.h_val],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 87:
			var l_args1=[l__g.h_map,l__g.h_key,l__g.h_val];
			l_fn=gml_func_map[$"ds_map_find_value"];
			l_fn2=gml_func_map[$"ds_map_set"];
			if(l_fn!=undefined&&l_fn2!=undefined){
				compile_gml_compile_args_proc(l_actions,l_args1);
				ds_list_add(l_actions,gml_action_ds_aop(l__g.h_d,l__g.h_op,array_length(l_args1),l_fn.h_func,l_fn2.h_func,l_out));
				return false;
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 91:
			l_fn=gml_func_map[$"variable_struct_get"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_obj,l__g.h_key],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 92:
			l_fn=gml_func_map[$"variable_struct_set"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_obj,l__g.h_key,l__g.h_val],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 93:
			var l_args1=[l__g.h_obj,l__g.h_key,l__g.h_val];
			l_fn=gml_func_map[$"variable_struct_get"];
			l_fn2=gml_func_map[$"variable_struct_set"];
			if(l_fn!=undefined&&l_fn2!=undefined){
				compile_gml_compile_args_proc(l_actions,l_args1);
				ds_list_add(l_actions,gml_action_ds_aop(l__g.h_d,l__g.h_op,array_length(l_args1),l_fn.h_func,l_fn2.h_func,l_out));
				return false;
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 88:
			l_fn=gml_func_map[$"ds_grid_get"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_grid,l__g.h_index1,l__g.h_index2],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 89:
			l_fn=gml_func_map[$"ds_grid_set"];
			if(l_fn!=undefined)return compile_gml_compile_call_func_proc(l_actions,l__g.h_d,l_fn,[l__g.h_grid,l__g.h_index1,l__g.h_index2,l__g.h_val],l_out); else return gml_compile_error("Accessor not supported",l__g.h_d);
		case 90:
			var l_args1=[l__g.h_grid,l__g.h_index1,l__g.h_index2,l__g.h_val];
			l_fn=gml_func_map[$"ds_grid_get"];
			l_fn2=gml_func_map[$"ds_grid_set"];
			if(l_fn!=undefined&&l_fn2!=undefined){
				compile_gml_compile_args_proc(l_actions,l_args1);
				ds_list_add(l_actions,gml_action_ds_aop(l__g.h_d,l__g.h_op,array_length(l_args1),l_fn.h_func,l_fn2.h_func,l_out));
				return false;
			} else return gml_compile_error("Accessor not supported",l__g.h_d);
		default:return undefined;
	}
}

if(live_enabled)
function compile_groups_gml_compile_group_ds_init(){
	gml_compile_set_handlers(compile_groups_gml_compile_group_ds_proc,["ds_list","ds_list_set","ds_list_aop","ds_map","ds_map_set","ds_map_aop","ds_grid","ds_grid_set","ds_grid_aop","key_id","key_id_set","key_id_aop"]);
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=l_scope[4][self.ind][(l_st[l_z]|0)];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf1(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	var l_this1=l_scope[6];
	l_st[@l_z]=self.func(l_this1[l_this1[0]])[l_st[l_z]];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf2(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	var l_this1=l_scope[6];
	l_st[@l_z]=l_this1[l_this1[0]][$ self.field][l_st[l_z]];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf3(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	l_st[@l_z]=l_scope[4][self.ind][(l_st[l_z]|0)];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf4(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	var l_this1=l_scope[6];
	l_st[@l_z]=self.func(l_this1[l_this1[0]])[l_st[l_z]];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf5(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0];
	var l_this1=l_scope[6];
	l_st[@l_z]=l_this1[l_this1[0]][$ self.field][l_st[l_z]];
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf6(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_scope[4][self.ind][@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf7(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_this2=self.func(l_this1[l_this1[0]]);
	l_this2[@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf8(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_arr=l_this1[l_this1[0]][$ self.field];
	l_arr[@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf9(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	l_scope[4][self.ind][@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf10(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_this2=self.func(l_this1[l_this1[0]]);
	l_this2[@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf11(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_arr=l_this1[l_this1[0]][$ self.field];
	l_arr[@l_st[l_z]]=l_st[l_z+1];
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf12(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_w=l_scope[4][self.ind];
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf13(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_w=self.func(l_this1[l_this1[0]]);
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf14(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_w=l_this1[l_this1[0]][$ self.field];
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf15(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_w=l_scope[4][self.ind];
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf16(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_w=self.func(l_this1[l_this1[0]]);
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc_lf17(l_th,l_v,l_scope,l_st){
	var l_z=l_st[0]-1;
	l_st[@0]=(l_z-1);
	var l_this1=l_scope[6];
	var l_w=l_this1[l_this1[0]][$ self.field];
	var l_k=l_st[l_z];
	l_w[@l_k]=gml_op_apply_fns[self.op](l_w[l_k],l_st[l_z+1]);
	l_st[@l_z]=0;
	l_st[@l_z+1]=0;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_proc(l_q,l_actions,l_out){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 70:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(gml_compile_node(l_ind,l_actions,true))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]",{ind:l_i},compile_groups_gml_compile_group_array_proc_lf3));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(gml_compile_node(l_ind,l_actions,true))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]",{func:l_fastGetter},compile_groups_gml_compile_group_array_proc_lf4));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]",{field:l_s},compile_groups_gml_compile_group_array_proc_lf5));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind]))return true;
			ds_list_add(l_actions,gml_action_index(l_d));
			break;
		case 76:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(gml_compile_node(l_ind,l_actions,true))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]",{ind:l_i},compile_groups_gml_compile_group_array_proc_lf));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(gml_compile_node(l_ind,l_actions,true))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]",{func:l_fastGetter},compile_groups_gml_compile_group_array_proc_lf1));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]",{field:l_s},compile_groups_gml_compile_group_array_proc_lf2));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind]))return true;
			ds_list_add(l_actions,gml_action_index(l_d));
			break;
		case 71:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_val=l__g.h_val;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]=",{ind:l_i},compile_groups_gml_compile_group_array_proc_lf9));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]=",{func:l_fastGetter},compile_groups_gml_compile_group_array_proc_lf10));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]=",{field:l_s},compile_groups_gml_compile_group_array_proc_lf11));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind,l_val]))return true;
			ds_list_add(l_actions,gml_action_index_set(l_d));
			break;
		case 77:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_val=l__g.h_val;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]=",{ind:l_i},compile_groups_gml_compile_group_array_proc_lf6));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]=",{func:l_fastGetter},compile_groups_gml_compile_group_array_proc_lf7));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]=",{field:l_s},compile_groups_gml_compile_group_array_proc_lf8));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind,l_val]))return true;
			ds_list_add(l_actions,gml_action_index_set(l_d));
			break;
		case 72:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_op=l__g.h_op;
			var l_val=l__g.h_val;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]=",{ind:l_i,op:l_op},compile_groups_gml_compile_group_array_proc_lf12));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]=",{func:l_fastGetter,op:l_op},compile_groups_gml_compile_group_array_proc_lf13));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]=",{field:l_s,op:l_op},compile_groups_gml_compile_group_array_proc_lf14));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind,l_val]))return true;
			ds_list_add(l_actions,gml_action_index_aop(l_d,l_op));
			break;
		case 78:
			var l_d=l__g.h_d;
			var l_arr=l__g.h_arr;
			var l_ind=l__g.h_index;
			var l_op=l__g.h_op;
			var l_val=l__g.h_val;
			var l_i;
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==43)l_i=gml_compile_curr_script.h_local_map[$ l__g1.h_name]; else l_i=-1;
			if(l_i>=0){
				if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local[]=",{ind:l_i,op:l_op},compile_groups_gml_compile_group_array_proc_lf15));
				return false;
			}
			var l__g1=l_arr;
			if(l__g1.__enumIndex__==55){
				if(l__g1.h_obj.__enumIndex__==14){
					var l_s=l__g1.h_field;
					if(compile_gml_compile_args_proc(l_actions,[l_ind,l_val]))return true;
					var l_fastGetter=gml_compile_curr_program.h_get_fast_getter(l_s);
					if(l_fastGetter!=undefined){
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.fast_field[]=",{func:l_fastGetter,op:l_op},compile_groups_gml_compile_group_array_proc_lf16));
						return false;
					} else {
						ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"self.field[]=",{field:l_s,op:l_op},compile_groups_gml_compile_group_array_proc_lf17));
						return false;
					}
				}
			}
			if(compile_gml_compile_args_proc(l_actions,[l_arr,l_ind,l_val]))return true;
			ds_list_add(l_actions,gml_action_index_aop(l_d,l_op));
			break;
		case 73:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2]))return true;
			ds_list_add(l_actions,gml_action_index2d(l__g.h_d));
			break;
		case 79:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2]))return true;
			ds_list_add(l_actions,gml_action_index2d(l__g.h_d));
			break;
		case 74:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2,l__g.h_val]))return true;
			ds_list_add(l_actions,gml_action_index2d_set(l__g.h_d));
			break;
		case 80:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2,l__g.h_val]))return true;
			ds_list_add(l_actions,gml_action_index2d_set(l__g.h_d));
			break;
		case 75:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2,l__g.h_val]))return true;
			ds_list_add(l_actions,gml_action_index2d_aop(l__g.h_d,l__g.h_op));
			break;
		case 81:
			if(compile_gml_compile_args_proc(l_actions,[l__g.h_arr,l__g.h_index1,l__g.h_index2,l__g.h_val]))return true;
			ds_list_add(l_actions,gml_action_index2d_aop(l__g.h_d,l__g.h_op));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_array_init(){
	gml_compile_set_handlers(compile_groups_gml_compile_group_array_proc,["index","index_set","index_aop","raw_id","raw_id_set","raw_id_aop","index2d","index2d_set","index2d_aop","raw_id2d","raw_id2d_set","raw_id2d_aop"]);
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=self.val;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf1(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=self.val;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf2(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]/=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf3(l_th,l_v,l_scope,l_st){
	var l_this1=l_scope[4];
	l_this1[@self.ind]=(l_scope[4][self.ind] div self.num);
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf4(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]-=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf5(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=(l_scope[4][self.ind]<<self.num);
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf6(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=(l_scope[4][self.ind]>>self.num);
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf7(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]|=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf8(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]&=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf9(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]^=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf10(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]==self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf11(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]!=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf12(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]<=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf13(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]>self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf14(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]>=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf15(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]=l_scope[4][self.ind]<self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf16(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]+=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf17(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]/=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc_lf18(l_th,l_v,l_scope,l_st){
	l_scope[4][@self.ind]*=self.num;
	return 0;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_proc(l_q,l_actions,l_out){
	var l_i,l_vi;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 94:
			var l_d=l__g.h_d;
			var l_s=l__g.h_name;
			var l_x=l__g.h_val;
			if(l_x!=undefined){
				l_i=gml_compile_curr_script.h_local_map[$ l_s];
				if(gml_compile_const_val_of(l_x)){
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local = const",{ind:l_i,name:l_s,val:gml_compile_const_val_of_val},compile_groups_gml_compile_group_local_proc_lf));
					return false;
				}
				if(gml_compile_node(l_x,l_actions,true))return true;
				ds_list_add(l_actions,gml_action_local_set(l_d,l_i,l_s));
			}
			break;
		case 43:
			var l_s=l__g.h_name;
			ds_list_add(l_actions,gml_action_local_hx(l__g.h_d,gml_compile_curr_script.h_local_map[$ l_s],l_s));
			break;
		case 44:
			var l_d=l__g.h_d;
			var l_s=l__g.h_name;
			var l_x=l__g.h_val;
			l_i=gml_compile_curr_script.h_local_map[$ l_s];
			if(gml_compile_const_val_of(l_x)){
				ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local = const",{ind:l_i,name:l_s,val:gml_compile_const_val_of_val},compile_groups_gml_compile_group_local_proc_lf1));
				return false;
			}
			if(gml_compile_node(l_x,l_actions,true))return true;
			ds_list_add(l_actions,gml_action_local_set(l_d,l_i,l_s));
			break;
		case 45:
			var l_d=l__g.h_d;
			var l_s=l__g.h_name;
			var l_o=l__g.h_op;
			var l_x=l__g.h_val;
			l_i=gml_compile_curr_script.h_local_map[$ l_s];
			if(gml_compile_const_val_of(l_x))switch(l_o){
				case 2:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local %= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf2));
					return false;
				case 3:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local div= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf3));
					return false;
				case 17:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local -= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf4));
					return false;
				case 32:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local <<= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf5));
					return false;
				case 33:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local >>= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf6));
					return false;
				case 48:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local |= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf7));
					return false;
				case 49:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local &= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf8));
					return false;
				case 50:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local ^= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf9));
					return false;
				case 64:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local eq= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf10));
					return false;
				case 65:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local ne= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf11));
					return false;
				case 67:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local le= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf12));
					return false;
				case 68:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local gt= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf13));
					return false;
				case 69:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local ge= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf14));
					return false;
				case 66:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local lt= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf15));
					return false;
				case 16:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local += number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf16));
					return false;
				case 1:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local /= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf17));
					return false;
				case 0:
					ds_list_add(l_actions,vm_v2_gml_action_closure_bind(l_d,"local *= number",{
						ind:l_i,
						name:l_s,
						num:gml_compile_const_val_of_val,
						op:l_o
					},compile_groups_gml_compile_group_local_proc_lf18));
					return false;
			}
			if(gml_compile_node(l_x,l_actions,true))return true;
			ds_list_add(l_actions,gml_action_local_aop(l_d,l_o,gml_compile_curr_script.h_local_map[$ l_s],l_s));
			break;
		default:return undefined;
	}
	return false;
}

if(live_enabled)
function compile_groups_gml_compile_group_local_init(){
	gml_compile_set_handlers(compile_groups_gml_compile_group_local_proc,["var_decl","local","local_set","local_aop"]);
}

if(live_enabled)
function gml_stack_push(l_this1,l_v){
	var l_i=l_this1[0]+1;
	if(l_i>=array_length(l_this1))l_this1[@array_length(l_this1)*2]=0;
	l_this1[@l_i]=l_v;
	l_this1[@0]=l_i;
}

if(live_enabled)
function gml_stack_pop(l_this1){
	var l_i=l_this1[0];
	var l_r=l_this1[l_i];
	l_this1[@l_i]=0;
	l_this1[@0]=(l_i-1);
	return l_r;
}

if(live_enabled)
function gml_stack_pop_multi(l_this1,l_n){
	var l_arr=[];
	var l_k=l_this1[0]-l_n;
	array_copy(l_arr,0,l_this1,l_k+1,l_n);
	array_copy(l_this1,l_k+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_k;
	return l_arr;
}

if(live_enabled)
function gml_stack_discard(l_this1){
	var l_i=l_this1[0];
	l_this1[@l_i]=0;
	l_this1[@0]=(l_i-1);
}

if(live_enabled)
function gml_stack_discard_multi(l_this1,l_n){
	var l_i=l_this1[0]-l_n;
	array_copy(l_this1,l_i+1,gml_stack_fill_value_arr,0,l_n);
	l_this1[@0]=l_i;
}

if(live_enabled)
function haxe_ds__vector_vector_impl__fill(l_this1,l_v){
	var l_i=0;
	for(var l__g1=array_length(l_this1);l_i<l__g1;l_i++){
		l_this1[@l_i]=l_v;
	}
}

if(live_enabled)
function api_api_version(l_name)constructor{
	static h_name=undefined; /// @is {string}
	static h_has_string_escape_characters=undefined; /// @is {bool}
	static h_has_literal_strings=undefined; /// @is {bool}
	static h_has_func_literal=undefined; /// @is {bool}
	static h_has_constructor=undefined; /// @is {bool}
	static h_has_try_catch=undefined; /// @is {bool}
	static h_has_value_calls=undefined; /// @is {bool}
	static h_has_delete=undefined; /// @is {bool}
	static h_default_ret_value=undefined; /// @is {any}
	static h_expr_macros=undefined; /// @is {bool}
	static h_int_self=undefined; /// @is {bool}
	static h_script_dot_static=undefined; /// @is {bool}
	static h_to_string=function(){
		return "ApiVersion(\""+self.h_name+"\")";
	}
	self.h_script_dot_static=false;
	self.h_int_self=false;
	self.h_expr_macros=false;
	self.h_default_ret_value=undefined;
	self.h_has_delete=false;
	self.h_has_value_calls=false;
	self.h_has_try_catch=false;
	self.h_has_constructor=false;
	self.h_has_func_literal=false;
	self.h_has_literal_strings=false;
	self.h_has_string_escape_characters=false;
	self.h_name=l_name;
	static __class__=mt_api_api_version;
}

if(live_enabled)
function api_api_version_create(l_i){
	var l_v=new api_api_version(("v"+string(floor(l_i/10))+"."+string((l_i%10))));
	var l_v2=l_i>=20;
	var l_v23=l_i>=23;
	var l_mod=false;
	l_v.h_int_self=!l_v23;
	l_v.h_has_string_escape_characters=l_v2;
	l_v.h_has_literal_strings=l_v2;
	l_v.h_has_func_literal=l_v23;
	l_v.h_has_constructor=l_v23;
	l_v.h_has_try_catch=l_v23||l_mod;
	l_v.h_has_value_calls=l_v23;
	l_v.h_expr_macros=!l_v23;
	l_v.h_has_delete=l_v23;
	l_v.h_script_dot_static=l_v23&&compile_groups_gml_compile_group_static_has_statics;
	l_v.h_default_ret_value=(l_v23?undefined:0);
	return l_v;
}

if(live_enabled)
function gml_parser_template_state(l_pos,l_tkIndex,l_next)constructor{
	static h_curly_depth=undefined; /// @is {int}
	static h_tk_index=undefined; /// @is {int}
	static h_next=undefined; /// @is {gml_parser_template_state}
	static h_arg_count=undefined; /// @is {int}
	static h_str=undefined; /// @is {string}
	static h_stop=undefined; /// @is {int}
	static h_pos=undefined; /// @is {gml_pos}
	self.h_stop=34;
	self.h_str="";
	self.h_arg_count=0;
	self.h_curly_depth=0;
	self.h_pos=l_pos;
	self.h_tk_index=l_tkIndex;
	self.h_next=l_next;
	static __class__=mt_gml_parser_template_state;
}

if(live_enabled)
function _gml_parser_gml_parser_string_buf_impl__start(){
	var l_buf=_gml_parser_gml_parser_string_buf_impl____buf;
	buffer_seek(l_buf,buffer_seek_start,0);
	return l_buf;
}

if(live_enabled)
function _gml_parser_gml_parser_string_buf_impl__add_code_point(l_this1,l_n){
	if(l_n<=127){
		buffer_write(l_this1,buffer_u8,l_n);
	} else if(l_n<=2047){
		buffer_write(l_this1,buffer_u8,(192|(l_n>>6)));
		buffer_write(l_this1,buffer_u8,(128|(l_n&63)));
	} else if(l_n<=65535){
		buffer_write(l_this1,buffer_u8,(192|(l_n>>12)));
		buffer_write(l_this1,buffer_u8,(128|((l_n>>6)&63)));
		buffer_write(l_this1,buffer_u8,(128|(l_n&63)));
	} else {
		buffer_write(l_this1,buffer_u8,(192|(l_n>>18)));
		buffer_write(l_this1,buffer_u8,(128|((l_n>>12)&63)));
		buffer_write(l_this1,buffer_u8,(128|((l_n>>6)&63)));
		buffer_write(l_this1,buffer_u8,(128|(l_n&63)));
	}
}

if(live_enabled)
function _gml_parser_gml_parser_string_buf_impl__to_string(l_this1){
	buffer_write(l_this1,buffer_u8,0);
	buffer_seek(l_this1,buffer_seek_start,0);
	return buffer_read(l_this1,buffer_string);
}

if(live_enabled)
function gml_parser_macro(l__name,l__config,l__pos)constructor{
	static h_pos=undefined; /// @is {gml_pos}
	static h_name=undefined; /// @is {string}
	static h_config=undefined; /// @is {string}
	static h_tokens=undefined; /// @is {array<gml_token>}
	self.h_tokens=[];
	self.h_name=l__name;
	self.h_config=l__config;
	self.h_pos=l__pos;
	static __class__=mt_gml_parser_macro;
}

if(live_enabled)
function gml_std_StringBuf()constructor{
	static h_str=undefined; /// @is {string}
	static h_strLen=undefined; /// @is {int}
	static h_arr=undefined; /// @is {array<string>}
	static h_arrLen=undefined; /// @is {int}
	static h_arrMax=undefined; /// @is {int}
	static h_length=undefined; /// @is {int}
	static h_store=function(){
		var l_i=self.h_arrLen++;
		var l_m=self.h_arrMax;
		var l_arr=self.h_arr;
		if(l_i>=l_m){
			l_m*=2;
			l_arr[@l_m-1]=undefined;
			self.h_arrMax=l_m;
		}
		l_arr[@l_i]=self.h_str;
		self.h_str="";
		self.h_strLen=0;
	}
	static h_addChar=function(l_c){
		self.h_str+=chr(l_c);
		self.h_length+=1;
		if(++self.h_strLen>=128)self.h_store();
	}
	static h_add=function(l_val){
		var l_s=gml_std_Std_stringify(l_val);
		var l_n=string_byte_length(l_s);
		self.h_str+=l_s;
		self.h_length+=l_n;
		self.h_strLen+=l_n;
		if(self.h_strLen>=128)self.h_store();
	}
	static h_toString=function(){
		var l_arr=self.h_arr;
		var l_buf=gml_std_StringBuf_buffer;
		buffer_seek(l_buf,buffer_seek_start,0);
		var l_i=0;
		for(var l__g1=self.h_arrLen;l_i<l__g1;l_i++){
			buffer_write(l_buf,buffer_text,l_arr[l_i]);
		}
		buffer_write(l_buf,buffer_string,self.h_str);
		buffer_seek(l_buf,buffer_seek_start,0);
		return buffer_read(l_buf,buffer_string);
	}
	self.h_length=0;
	self.h_arrMax=4;
	self.h_arrLen=0;
	self.h_arr=array_create(4);
	self.h_strLen=0;
	self.h_str="";
	static __class__=mt_gml_std_StringBuf;
}

function gml_fast_field_add(l_name,l_getter,l_setter){
	if(live_enabled){
		api_api_fast_field_getters[$ l_name]=l_getter;
		api_api_fast_field_setters[$ l_name]=l_setter;
	}
}

if(live_enabled)
function api_api_var()constructor{
	static h_name=undefined; /// @is {string}
	static h_flags=undefined; /// @is {int}
	static h_func=undefined; /// @is {any}
	static h_type_check=undefined; /// @is {gml_type_check}
	static h_set=function(l_sig,l_func){
		var l_flags=0;
		if(string_ord_at(l_sig,1)==58){
			l_sig=gml_std_string_substring(l_sig,1);
			l_flags|=4;
		}
		var l_typeCheck=gml_type_check_any;
		var l_pos=gml_std_string_pos_ext_haxe(l_sig,":");
		if(l_pos>=0){
			var l_typeStr=gml_std_string_substring(l_sig,l_pos+1);
			l_typeCheck=gml_type_check_map[$ l_typeStr];
			if(l_typeCheck==undefined)throw gml_std_haxe_Exception_thrown("`"+l_typeStr+"` is not a known type in `"+l_sig+"`");
			l_sig=gml_std_string_substring(l_sig,0,l_pos);
		}
		self.h_name=gml_parse_name(l_sig,0);
		if(gml_std_string_pos_ext_haxe(l_sig,"[")>=0)l_flags|=2;
		if(gml_std_string_pos_ext_haxe(l_sig,"*")>=0)l_flags|=1;
		self.h_flags=l_flags;
		self.h_func=l_func;
		self.h_type_check=l_typeCheck;
	}
	self.h_flags=0;
	static __class__=mt_api_api_var;
}

if(live_enabled)
function gml_enum(l_name,l_pos)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_ctr_list=undefined; /// @is {array<gml_enum_ctr>}
	static h_ctr_map=undefined; /// @is {tools_Dictionary<gml_enum_ctr>}
	static h_has_values=undefined; /// @is {bool}
	static h_add=function(l_name,l_val){
		var l_ctr=new gml_enum_ctr(l_name,self.h_pos,gml_node_number(self.h_pos,l_val,string(l_val)));
		l_ctr.h_value=l_val;
		array_push(self.h_ctr_list,l_ctr);
		self.h_ctr_map[$ l_name]=l_ctr;
	}
	static h_print=function(){
		var l_r="(enum "+self.h_name+" { ";
		var l_z=false;
		var l__g=0;
		var l__g1=self.h_ctr_list;
		while(l__g<array_length(l__g1)){
			var l_ctr=l__g1[l__g];
			l__g++;
			if(l_z)l_r+=", "; else l_z=true;
			l_r+=l_ctr.h_name+" = "+gml_std_Std_stringify(l_ctr.h_value);
		}
		return l_r+" })";
	}
	self.h_has_values=false;
	self.h_ctr_map={}
	self.h_ctr_list=[];
	self.h_name=l_name;
	self.h_pos=l_pos;
	static __class__=mt_gml_enum;
}

if(live_enabled)
function gml_enum_create_builtin(l_name){
	var l_e=new gml_enum(l_name,gml_pos_create(-2,0,0,0));
	gml_enum_map[$ l_name]=l_e;
	return l_e;
}

if(live_enabled)
function gml_enum_ctr(l_name,l_pos,l_node)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_value=undefined; /// @is {int?}
	self.h_value=undefined;
	self.h_name=l_name;
	self.h_pos=l_pos;
	self.h_node=l_node;
	static __class__=mt_gml_enum_ctr;
}

function gml_macro(l_name,l_node,l_isExpr,l_isStat)constructor{
	static h_name=undefined; /// @is {string}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_is_expr=undefined; /// @is {bool}
	static h_is_stat=undefined; /// @is {bool}
	if(live_enabled){
		self.h_name=l_name;
		self.h_node=l_node;
		self.h_is_expr=l_isExpr;
		self.h_is_stat=l_isStat;
	}
	static __class__=mt_gml_macro;
}

if(live_enabled)
function ast_gml_macro_proc_patch(l_tks,l_setExclude){
	var l_changed=false;
	var l_i=-1;
	var l_n=array_length(l_tks);
	if(l_setExclude){
		ds_list_clear(ast_gml_macro_proc_next_exclude_list);
		tools__dictionary_dictionary_impl__clear(ast_gml_macro_proc_next_exclude_map);
	}
	while(++l_i<l_n){
		var l_tk=l_tks[l_i];
		var l_pos,l_id;
		if(l_tk.__enumIndex__==12){
			l_pos=l_tk.h_d;
			l_id=l_tk.h_id;
		} else continue;
		var l_nm=ast_gml_macro_proc_map[$ l_id];
		if(l_nm==undefined)continue;
		if(variable_struct_exists(ast_gml_macro_proc_exclude_map,l_id))continue;
		if(!variable_struct_exists(ast_gml_macro_proc_next_exclude_map,l_id)){
			ast_gml_macro_proc_next_exclude_map[$ l_id]=true;
			ds_list_add(ast_gml_macro_proc_next_exclude_list,l_id);
		}
		var l_ntks=l_nm.h_tokens;
		var l_ntkn=array_length(l_ntks);
		switch(l_ntkn){
			case 0:
				gml_std_gml_internal_ArrayImpl_splice(l_tks,l_i,1);
				l_i--;
				l_n--;
				break;
			case 1:l_tks[@l_i]=l_ntks[0];break;
			default:
				l_tks[@l_i]=l_ntks[0];
				l_n+=l_ntkn-1;
				var l_k=l_ntkn;
				while(--l_k>=1){
					array_insert(l_tks,l_i+1,l_ntks[l_k]);
				}
		}
		l_changed=true;
	}
	if(l_changed&&l_setExclude){
		var l_k=0;
		for(var l__g1=ds_list_size(ast_gml_macro_proc_next_exclude_list);l_k<l__g1;l_k++){
			ast_gml_macro_proc_exclude_map[$ ds_list_find_value(ast_gml_macro_proc_next_exclude_list,l_k)]=true;
		}
	}
	return l_changed;
}

if(live_enabled)
function ast_gml_macro_proc_run(l_pg,l_builders){
	tools__dictionary_dictionary_impl__clear(ast_gml_macro_proc_map);
	ds_list_clear(ast_gml_macro_proc_list);
	var l__g=0;
	while(l__g<array_length(l_builders)){
		var l_b=l_builders[l__g];
		l__g++;
		if(l_b.h_error_text==undefined){
			var l_macros=l_b.h_source.h_parser.h_macros;
			var l_i=0;
			for(var l__g2=array_length(l_macros);l_i<l__g2;l_i++){
				var l_m=l_macros[l_i];
				var l_config=l_m.h_config;
				if(l_config!=undefined&&l_config!=live_config)continue;
				if(variable_struct_exists(ast_gml_macro_proc_map,l_m.h_name)){
					l_pg.h_error_text="Macro redifinition (first at "+gml_pos_to_string(ast_gml_macro_proc_map[$ l_m.h_name].h_pos,l_pg)+")";
					l_pg.h_error_pos=l_m.h_pos;
					return true;
				}
				ast_gml_macro_proc_map[$ l_m.h_name]=l_m;
				ds_list_add(ast_gml_macro_proc_list,l_m);
			}
		}
	}
	var l__g=0;
	var l__g1=ast_gml_macro_proc_list;
	while(l__g<ds_list_size(l__g1)){
		var l_m=ds_list_find_value(l__g1,l__g);
		l__g++;
		tools__dictionary_dictionary_impl__clear(ast_gml_macro_proc_exclude_map);
		ast_gml_macro_proc_exclude_map[$ l_m.h_name]=true;
		var l_tks=l_m.h_tokens;
		for(var l_step=0;l_step<64;l_step++){
			if(!ast_gml_macro_proc_patch(l_tks,true))break;
		}
	}
	tools__dictionary_dictionary_impl__clear(ast_gml_macro_proc_exclude_map);
	var l__g=0;
	while(l__g<array_length(l_builders)){
		var l_b=l_builders[l__g];
		l__g++;
		if(l_b.h_error_text==undefined){
			if(ast_gml_macro_proc_patch(l_b.h_tokens,false))l_b.h_length=array_length(l_b.h_tokens);
		}
	}
	return false;
}

if(live_enabled)
function ast_gml_node_def_param(l__name,l__type)constructor{
	static h_name=undefined; /// @is {string}
	static h_type=undefined; /// @is {ast_GmlNodeDefType}
	self.h_name=l__name;
	self.h_type=l__type;
	static __class__=mt_ast_gml_node_def_param;
}

if(live_enabled)
function ast_gml_node_def_ctr(l__name,l__params)constructor{
	static h_name=undefined; /// @is {string}
	static h_params=undefined; /// @is {array<ast_gml_node_def_param>}
	static h_has_children=undefined; /// @is {bool}
	self.h_has_children=false;
	self.h_name=l__name;
	self.h_params=l__params;
	var l__g=0;
	while(l__g<array_length(l__params)){
		var l_param=l__params[l__g];
		l__g++;
		var l_t=l_param.h_type;
		if(l_t==2||l_t==1){
			self.h_has_children=true;
			break;
		}
	}
	static __class__=mt_ast_gml_node_def_ctr;
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_iter(l_q,l_st){
	gml_std_haxe_enum_tools_setParameter(l_q,0,gml_pos_concat(gml_std_haxe_enum_tools_getParameter(l_q,0),ast_gml_node_tools_ni_concat_pos_pos));
	return gml_node_tools_seek(l_q,undefined,ast_gml_node_tools_ni_concat_pos_iter);
}

if(live_enabled)
function ast_gml_node_tools_ni_concat_pos_rec(l_q,l_p){
	ast_gml_node_tools_ni_concat_pos_pos=l_p;
	ast_gml_node_tools_ni_concat_pos_iter(l_q,undefined);
}

if(live_enabled)
function ast_gml_node_tools_ni_get_pos_string(l_q,l_pg){
	return gml_pos_to_string(gml_std_haxe_enum_tools_getParameter(l_q,0),l_pg);
}

if(live_enabled)
function gml_pos_create(l_src,l_row,l_col,l_ofs){
	var l_this=array_create(4);
	/// @typedef {tuple<src:ast_GmlPosSource,row:int,col:int,next:gml_pos>} gml_pos
	l_this[@3]=undefined;
	l_this[@0]=l_src;
	l_this[@1]=l_row;
	l_this[@2]=l_col;
	return l_this;
}

if(live_enabled)
function gml_pos_get_source(l_this,l_pg){
	return l_pg.h_get_source(l_this[0]);
}

if(live_enabled)
function gml_pos_copy(l_this){
	var l_r=gml_pos_create(l_this[0],l_this[1],l_this[2],0);
	if(l_this[3]!=undefined)l_r[@3]=gml_pos_copy(l_this[3]);
	return l_r;
}

if(live_enabled)
function gml_pos_concat(l_this,l_p){
	var l_r=gml_pos_copy(l_p);
	var l_l=l_r;
	while(l_l[3]!=undefined){
		l_l=l_l[3];
	}
	l_l[@3]=l_this;
	return l_r;
}

if(live_enabled)
function gml_pos_to_string(l_this,l_pg){
	var l_name;
	if(l_pg!=undefined)l_name=l_pg.h_get_source(l_this[0]).h_name; else l_name="?";
	var l_r=l_name+("[L"+string(l_this[1])+",c"+string(l_this[2])+"]");
	if(l_this[3]!=undefined)l_r+=">"+gml_pos_to_string(l_this[3],l_pg);
	return l_r;
}

if(live_enabled)
function gml_pos_to_string_in(l_this,l_src){
	return (l_src.h_name+("[L"+string(l_this[1])+",c"+string(l_this[2])+"]"));
}

if(live_enabled)
function gml_script(l_src,l_name,l_pos)constructor{
	static h_name=undefined; /// @is {string}
	static h_pos=undefined; /// @is {gml_pos}
	static h_index=undefined; /// @is {int}
	static h_node=undefined; /// @is {ast_GmlNode}
	static h_source=undefined; /// @is {gml_source}
	static h_local_map=undefined; /// @is {tools_Dictionary<int>}
	static h_local_names=undefined; /// @is {array<string>}
	static h_locals=undefined; /// @is {int}
	static h_prefix_statements=undefined; /// @is {array<ast_GmlNode>}
	static h_is_function=undefined; /// @is {bool}
	static h_is_constructor=undefined; /// @is {bool}
	static h_parent_name=undefined; /// @is {string}
	static h_parent_is_global=undefined; /// @is {bool}
	static h_parent_argc=undefined; /// @is {int}
	static h_static_map=undefined; /// @is {tools_Dictionary<int>}
	static h_static_names=undefined; /// @is {array<string>}
	static h_static_count=undefined; /// @is {int}
	static h_static_init=undefined; /// @is {array<ast_GmlNode>}
	static h_script_id=undefined; /// @is {script}
	static h_get_uses_script_static=function(){
		return self.h_script_id!=-1;
	}
	static h_static_struct=undefined; /// @is {haxe_DynamicAccess<any>}
	static h_get_uses_static_struct=function(){
		return self.h_is_constructor&&compile_groups_gml_compile_group_static_has_statics;
	}
	static h_static_values=undefined; /// @is {array<any>}
	static h_static_ready=undefined; /// @is {array<bool>}
	static h_arguments=undefined; /// @is {int}
	static h_named_args=undefined; /// @is {tools_Dictionary<int>}
	static h_actions=undefined; /// @is {gml_action_list}
	static h_destroy=function(){
		self.h_local_map=undefined;
		self.h_static_map=undefined;
		if(self.h_actions!=undefined){
			var l_this1=self.h_actions;
			var l_i=0;
			for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
				var l_q=ds_list_find_value(l_this1,l_i);
				if(l_q!=undefined){
					if(l_q.__enumIndex__==97)ds_map_destroy(l_q.h_jumptable);
				}
			}
			ds_list_destroy(l_this1);
			self.h_actions=undefined;
		}
	}
	static h_is_valid=function(){
		return self.h_actions!=undefined;
	}
	static h_seek=function(l_iter,l_stack){
		var l__scr=gml_program_seek_script;
		gml_program_seek_script=self;
		l_iter(self.h_node,l_stack);
		gml_program_seek_script=l__scr;
	}
	self.h_actions=undefined;
	self.h_named_args=undefined;
	self.h_arguments=0;
	self.h_static_ready=[false];
	self.h_static_values=[];
	self.h_static_struct=(compile_groups_gml_compile_group_static_has_statics?{}:undefined);
	self.h_script_id=-1;
	self.h_static_init=[];
	self.h_static_count=0;
	self.h_static_names=[];
	self.h_static_map={}
	self.h_parent_argc=0;
	self.h_parent_is_global=false;
	self.h_parent_name=undefined;
	self.h_is_constructor=false;
	self.h_is_function=false;
	self.h_prefix_statements=undefined;
	self.h_locals=0;
	self.h_local_names=[];
	self.h_local_map={}
	self.h_source=l_src;
	self.h_name=l_name;
	self.h_pos=l_pos;
	static __class__=mt_gml_script;
}

function gml_source(l_name,l_code,l_main,l_opt)constructor{
	static h_index=undefined; /// @is {ast_GmlSourceId}
	static h_name=undefined; /// @is {string}
	static h_code=undefined; /// @is {string}
	static h_main=undefined; /// @is {string}
	static h_length=undefined; /// @is {int}
	static h_opt=undefined; /// @is {bool}
	static h_parser=undefined; /// @is {gml_parser}
	static h___eof=undefined; /// @is {gml_pos}
	static h_get_pos_source=function(){
		if(live_enabled){
			return self.h_index;
		}else return undefined;
	}
	static h_get_eof=function(){
		if(live_enabled){
			if(self.h___eof==undefined)self.h___eof=gml_pos_create(self.h_index,string_count("\n",self.h_code)+2,1,self.h_length);
			return self.h___eof;
		}else return undefined;
	}
	static h_version=undefined; /// @is {api_api_version}
	static h_to_string=function(){
		if(live_enabled){
			return "GmlSource(\""+self.h_name+"\")";
		}else return undefined;
	}
	if(l_opt==undefined)l_opt=false;
	if(false)show_debug_message(argument[3]);
	if(live_enabled){
		self.h_version=undefined;
		self.h___eof=undefined;
		self.h_index=-1;
		self.h_name=l_name;
		self.h_code=l_code;
		self.h_opt=l_opt;
		if(l_main==undefined){
			l_main=l_name;
			var l_i=gml_std_string_last_pos_haxe(l_main,"/");
			var l_k=gml_std_string_last_pos_haxe(l_main,"\\");
			if(l_i<0||l_k>l_i)l_i=l_k;
			l_i=gml_std_string_pos_ext_haxe(l_main,".");
			if(l_i>=0)l_main=gml_std_string_substring(l_main,0,l_i);
		}
		self.h_main=l_main;
		self.h_length=string_length(l_code);
	}
	static __class__=mt_gml_source;
}

function gml_source_init_unknown(){
	if(live_enabled){
		var l_src=new gml_source("unknown","",undefined,true);
		l_src.h_index=-1;
		l_src.h_version=gml_parser_default_version;
		return l_src;
	}else return undefined;
}

function gml_source_init_builtin(){
	if(live_enabled){
		var l_src=new gml_source("built-in","",undefined,true);
		l_src.h_index=-2;
		l_src.h_version=gml_parser_default_version;
		return l_src;
	}else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v(l_d){
	return gml_token_keyword(l_d,0);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v1(l_d){
	return gml_token_boolean(l_d,true);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v2(l_d){
	return gml_token_boolean(l_d,false);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v3(l_d){
	return gml_token_number(l_d,-3,undefined);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v4(l_d){
	return gml_token_number(l_d,-4,undefined);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v5(l_d){
	return gml_token_undefined_hx(l_d);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v6(l_d){
	return gml_token_cub_open(l_d);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v7(l_d){
	return gml_token_cub_close(l_d);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v8(l_d){
	return gml_token_keyword(l_d,1);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v9(l_d){
	return gml_token_keyword(l_d,2);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v10(l_d){
	return gml_token_keyword(l_d,3);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v11(l_d){
	return gml_token_keyword(l_d,4);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v12(l_d){
	return gml_token_keyword(l_d,5);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v13(l_d){
	return gml_token_keyword(l_d,6);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v14(l_d){
	return gml_token_keyword(l_d,7);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v15(l_d){
	return gml_token_keyword(l_d,8);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v16(l_d){
	return gml_token_keyword(l_d,9);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v17(l_d){
	return gml_token_keyword(l_d,14);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v18(l_d){
	return gml_token_keyword(l_d,10);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v19(l_d){
	return gml_token_keyword(l_d,11);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v20(l_d){
	return gml_token_keyword(l_d,13);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v21(l_d){
	return gml_token_keyword(l_d,12);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v22(l_d){
	return gml_token_keyword(l_d,15);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v23(l_d){
	return gml_token_keyword(l_d,19);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v24(l_d){
	return gml_token_keyword(l_d,18);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v25(l_d){
	return gml_token_keyword(l_d,17);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v26(l_d){
	return gml_token_keyword(l_d,16);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v27(l_d){
	if(gml_parser_curr_version.h_has_try_catch)return gml_token_keyword(l_d,21); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v28(l_d){
	if(gml_parser_curr_version.h_has_try_catch)return gml_token_keyword(l_d,22); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v29(l_d){
	if(gml_parser_curr_version.h_has_try_catch)return gml_token_keyword(l_d,23); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v30(l_d){
	if(gml_parser_curr_version.h_has_constructor)return gml_token_keyword(l_d,25); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v31(l_d){
	if(gml_parser_curr_version.h_has_delete)return gml_token_keyword(l_d,29); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v32(l_d){
	if(gml_parser_curr_version.h_has_func_literal)return gml_token_keyword(l_d,24); else return undefined;
}

if(live_enabled)
function data_gml_keyword_mapper_init_v33(l_d){
	return gml_token_bin_op(l_d,3);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v34(l_d){
	return gml_token_bin_op(l_d,2);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v35(l_d){
	return gml_token_bin_op(l_d,80);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v36(l_d){
	return gml_token_bin_op(l_d,96);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v37(l_d){
	return gml_token_bin_op(l_d,65);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v38(l_d){
	return gml_token_un_op(l_d,1);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v39(l_d){
	return gml_token_keyword(l_d,26);
}

if(live_enabled)
function data_gml_keyword_mapper_init_v40(l_d){
	return gml_token_keyword(l_d,27);
}

if(live_enabled)
function data_gml_keyword_mapper_init(){
	var l_m={}
	l_m[$"global"]=data_gml_keyword_mapper_init_v;
	l_m[$"true"]=data_gml_keyword_mapper_init_v1;
	l_m[$"false"]=data_gml_keyword_mapper_init_v2;
	l_m[$"all"]=data_gml_keyword_mapper_init_v3;
	l_m[$"noone"]=data_gml_keyword_mapper_init_v4;
	l_m[$"undefined"]=data_gml_keyword_mapper_init_v5;
	l_m[$"begin"]=data_gml_keyword_mapper_init_v6;
	l_m[$"end"]=data_gml_keyword_mapper_init_v7;
	l_m[$"globalvar"]=data_gml_keyword_mapper_init_v8;
	l_m[$"var"]=data_gml_keyword_mapper_init_v9;
	l_m[$"enum"]=data_gml_keyword_mapper_init_v10;
	l_m[$"if"]=data_gml_keyword_mapper_init_v11;
	l_m[$"then"]=data_gml_keyword_mapper_init_v12;
	l_m[$"else"]=data_gml_keyword_mapper_init_v13;
	l_m[$"switch"]=data_gml_keyword_mapper_init_v14;
	l_m[$"case"]=data_gml_keyword_mapper_init_v15;
	l_m[$"default"]=data_gml_keyword_mapper_init_v16;
	l_m[$"for"]=data_gml_keyword_mapper_init_v17;
	l_m[$"repeat"]=data_gml_keyword_mapper_init_v18;
	l_m[$"while"]=data_gml_keyword_mapper_init_v19;
	l_m[$"do"]=data_gml_keyword_mapper_init_v20;
	l_m[$"until"]=data_gml_keyword_mapper_init_v21;
	l_m[$"with"]=data_gml_keyword_mapper_init_v22;
	l_m[$"exit"]=data_gml_keyword_mapper_init_v23;
	l_m[$"return"]=data_gml_keyword_mapper_init_v24;
	l_m[$"break"]=data_gml_keyword_mapper_init_v25;
	l_m[$"continue"]=data_gml_keyword_mapper_init_v26;
	l_m[$"try"]=data_gml_keyword_mapper_init_v27;
	l_m[$"catch"]=data_gml_keyword_mapper_init_v28;
	l_m[$"throw"]=data_gml_keyword_mapper_init_v29;
	l_m[$"new"]=data_gml_keyword_mapper_init_v30;
	l_m[$"delete"]=data_gml_keyword_mapper_init_v31;
	l_m[$"function"]=data_gml_keyword_mapper_init_v32;
	l_m[$"div"]=data_gml_keyword_mapper_init_v33;
	l_m[$"mod"]=data_gml_keyword_mapper_init_v34;
	l_m[$"and"]=data_gml_keyword_mapper_init_v35;
	l_m[$"or"]=data_gml_keyword_mapper_init_v36;
	l_m[$"xor"]=data_gml_keyword_mapper_init_v37;
	l_m[$"not"]=data_gml_keyword_mapper_init_v38;
	l_m[$"argument"]=data_gml_keyword_mapper_init_v39;
	l_m[$"argument_count"]=data_gml_keyword_mapper_init_v40;
	return l_m;
}

if(live_enabled)
function gml_std_haxe_class(l_id,l_name)constructor{
	static h_superClass=undefined; /// @is {haxe_class<any>}
	static h_marker=undefined; /// @is {any}
	static h_index=undefined; /// @is {int}
	static h_name=undefined; /// @is {string}
	self.h_superClass=undefined;
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	static __class__="class";
}

if(live_enabled)
function gml_std_haxe_enum(l_id,l_name,l_constructors,l_functions)constructor{
	static h_constructors=undefined; /// @is {array<string>}
	static h_functions=undefined; /// @is {array<haxe_Function>}
	static h_marker=undefined; /// @is {any}
	static h_index=undefined; /// @is {int}
	static h_name=undefined; /// @is {string}
	if(false)show_debug_message(argument[3]);
	self.h_marker=gml_std_haxe_type_markerValue;
	self.h_index=l_id;
	self.h_name=l_name;
	self.h_constructors=l_constructors;
	self.h_functions=l_functions;
	static __class__="enum";
}

if(live_enabled)
function gml_seek_adjfix_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 33:
			var l_d=l__g.h_d;
			var l_x=l__g.h_expr;
			var l_pre;
			l_pre=(l_q.__enumIndex__==33);
			var l_o;
			var l_inBlock=gml_node_tools_is_in_block(l_q,ds_list_find_value(l_st,0));
			if(l_pre||l_inBlock){
				var l__g1=l_x;
				switch(l__g1.__enumIndex__){
					case 85:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_map_aop(l_d,l__g1.h_map,l__g1.h_key,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 82:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_list_aop(l_d,l__g1.h_list,l__g1.h_index,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 88:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_grid_aop(l_d,l__g1.h_grid,l__g1.h_index1,l__g1.h_index2,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 91:
						l_o=(l__g.h_inc?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_key_id_aop(l_d,l__g1.h_obj,l__g1.h_key,l_o,gml_node_number(l_d,1,undefined)));
						break;
					default:
						if(l_inBlock){
							l_o=(l__g.h_inc?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,gml_node_set_op(l_d,l_o,l_x,gml_node_number(l_d,1,undefined)));
						}
				}
			}
			break;
		case 34:
			var l_d=l__g.h_d;
			var l_x=l__g.h_expr;
			var l_b=l__g.h_inc;
			var l_pre;
			l_pre=(l_q.__enumIndex__==33);
			var l_o;
			var l_inBlock=gml_node_tools_is_in_block(l_q,ds_list_find_value(l_st,0));
			if(l_pre||l_inBlock){
				var l__g=l_x;
				switch(l__g.__enumIndex__){
					case 85:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_map_aop(l_d,l__g.h_map,l__g.h_key,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 82:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_list_aop(l_d,l__g.h_list,l__g.h_index,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 88:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_ds_grid_aop(l_d,l__g.h_grid,l__g.h_index1,l__g.h_index2,l_o,gml_node_number(l_d,1,undefined)));
						break;
					case 91:
						l_o=(l_b?16:17);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_key_id_aop(l_d,l__g.h_obj,l__g.h_key,l_o,gml_node_number(l_d,1,undefined)));
						break;
					default:
						if(l_inBlock){
							l_o=(l_b?16:17);
							gml_std_haxe_enum_tools_setTo(l_q,gml_node_set_op(l_d,l_o,l_x,gml_node_number(l_d,1,undefined)));
						}
				}
			}
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_alarms_check(l_x){
	var l__g=l_x;
	if(l__g.__enumIndex__==55){
		if(l__g.h_field=="alarm")return l__g.h_obj; else return undefined;
	} else return undefined;
}

if(live_enabled)
function gml_seek_alarms_proc(l_q,l_st){
	var l_r;
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 70:
			l_r=gml_seek_alarms_check(l__g.h_arr);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,gml_node_alarm(l__g.h_d,l_r,l__g.h_index));
			break;
		case 76:
			l_r=gml_seek_alarms_check(l__g.h_arr);
			if(l_r!=undefined)gml_std_haxe_enum_tools_setTo(l_q,gml_node_alarm(l__g.h_d,l_r,l__g.h_index));
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_arguments_proc(l_q,l_st){
	gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
	var l__g=l_q;
	if(l__g.__enumIndex__==20){
		var l_i=l__g.h_index;
		if(gml_program_seek_script.h_arguments<=l_i)gml_program_seek_script.h_arguments=l_i+1;
	}
	return false;
}

if(live_enabled)
function gml_seek_calls_proc_func(l_q,l_d,l_fn,l_args1){
	var l_fname=l_fn.h_name;
	var l_argCount=array_length(l_args1);
	var l_minArgs=l_fn.h_min_args;
	var l_maxArgs=l_fn.h_max_args;
	if(live_allow_trailing_args)l_maxArgs=65536;
	if(l_argCount<l_minArgs||l_argCount>l_maxArgs){
		var l_e;
		if(l_minArgs==l_maxArgs){
			l_e="`"+l_fname+"` takes "+string(l_minArgs)+" argument";
			if(l_minArgs!=1)l_e+="s";
		} else if(l_argCount<l_minArgs){
			l_e="`"+l_fname+"` requires at least "+string(l_minArgs)+" argument";
			if(l_minArgs!=1)l_e+="s";
		} else {
			l_e="`"+l_fname+"` takes no more than "+string(l_maxArgs)+" argument";
			if(l_maxArgs!=1)l_e+="s";
		}
		l_e+=", got "+string(l_argCount);
		return gml_program_seek_inst.h_error(l_e,gml_std_haxe_enum_tools_getParameter(l_q,0));
	}
	gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_func(l_d,l_fn,l_args1));
	return false;
}

if(live_enabled)
function gml_seek_calls_proc(l_q,l_st){
	var l_n,l_s;
	var l__g=l_q;
	if(l__g.__enumIndex__==23){
		var l_d=l__g.h_d;
		var l_x=l__g.h_expr;
		var l_args1=l__g.h_args;
		var l__g=l_x;
		switch(l__g.__enumIndex__){
			case 17:
				var l_o=l__g.h_ref;
				l_n=l_o.h_arguments;
				l_s=l_o.h_name;
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script(l_d,l_s,l_args1));
				break;
			case 55:gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_field(l_d,l__g.h_obj,l__g.h_field,l_args1));break;
			case 13:
				var l_s1=l__g.h_id;
				var l_fn=gml_func_map[$ l_s1];
				if(l_fn==undefined){
					if(gml_program_seek_inst.h_get_source(l_d[0]).h_version.h_has_value_calls)gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_args1)); else return gml_program_seek_inst.h_error("`"+l_s1+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				} else if(gml_seek_calls_proc_func(l_q,l_d,l_fn,l_args1)){
					return true;
				}
				break;
			case 18:
				var l_s=l__g.h_name;
				var l_fn=gml_func_map[$ l_s];
				if(l_fn==undefined){
					if(gml_program_seek_inst.h_get_source(l_d[0]).h_version.h_has_value_calls)gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_args1)); else return gml_program_seek_inst.h_error("`"+l_s+"` is not a function or script",gml_std_haxe_enum_tools_getParameter(l_x,0));
				} else if(gml_seek_calls_proc_func(l_q,l_d,l_fn,l_args1)){
					return true;
				}
				break;
			default:if(gml_program_seek_inst.h_get_source(l_d[0]).h_version.h_has_value_calls)gml_std_haxe_enum_tools_setTo(l_q,gml_node_call_script_id(l_d,l_x,l_args1)); else return gml_program_seek_inst.h_error("Expression is not callable",gml_std_haxe_enum_tools_getParameter(l_x,0));
		}
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_enum_fields_proc_one(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==55){
		var l_d=l__g.h_d;
		var l_x=l__g.h_obj;
		var l_f=l__g.h_field;
		var l__g=l_x;
		switch(l__g.__enumIndex__){
			case 13:
				var l_s=l__g.h_id;
				var l_e=gml_program_seek_inst.h_enum_map[$ l_s];
				if(l_e==undefined)l_e=gml_enum_map[$ l_s];
				if(l_e!=undefined){
					if(!l_e.h_has_values)gml_seek_enum_values_proc_one(l_e);
					var l_c=l_e.h_ctr_map[$ l_f];
					if(l_c!=undefined){
						if(l_c.h_value==undefined)return gml_program_seek_inst.h_error("Recursive enum reference to "+l_s+"."+l_f,l_d);
						gml_std_haxe_enum_tools_setTo(l_q,gml_node_number(l_d,l_c.h_value,undefined));
						return false;
					} else return gml_program_seek_inst.h_error("Enum `"+l_s+"` does not contain field `"+l_f+"`",l_d);
				}
				break;
			case 18:
				var l_s=l__g.h_name;
				if(l__g.h_id>=gml_script_index_offset){
					gml_std_haxe_enum_tools_setTo(l_q,gml_node_script_static(l_d,l_s,l_f));
					return false;
				}
				break;
			case 17:
				var l_scr=l__g.h_ref;
				if(l_scr.h_script_id!=-1){
					gml_std_haxe_enum_tools_setTo(l_q,gml_node_script_static(l_d,l_scr.h_name,l_f));
					return false;
				}
				break;
		}
		var l_av=api_api_var_map[$ l_f];
		if(l_av!=undefined){
			if((l_av.h_flags&4)==0)return gml_program_seek_inst.h_error("`"+l_f+"` is not an instance-specific variable.",l_d);
		}
	}
	return gml_node_tools_seek(l_q,l_st,gml_seek_enum_fields_proc_one);
}

if(live_enabled)
function gml_seek_enum_fields_proc(l_q,l_st){
	return gml_seek_enum_fields_proc_one(l_q,l_st);
}

if(live_enabled)
function gml_seek_enum_values_proc_one(l_e){
	l_e.h_has_values=true;
	var l_next=0;
	var l__g=0;
	var l__g1=l_e.h_ctr_list;
	while(l__g<array_length(l__g1)){
		var l_c=l__g1[l__g];
		l__g++;
		if(l_c.h_node!=undefined){
			var l_st=ds_list_create();
			var l__seekFunc=gml_program_seek_func;
			gml_program_seek_func=gml_seek_idents_proc;
			gml_program_seek_script=undefined;
			gml_seek_idents_proc(l_c.h_node,l_st);
			gml_program_seek_func=l__seekFunc;
			ds_list_destroy(l_st);
			gml_seek_enum_fields_proc_one(l_c.h_node,undefined);
			gml_seek_eval_eval(l_c.h_node);
			var l_node=l_c.h_node;
			var l_v=gml_seek_eval_node_to_value(l_node);
			if(is_numeric(l_v)){
				l_c.h_value=floor(l_v);
				l_next=l_c.h_value+1;
			} else if(l_v!=gml_seek_eval_invalid_value){
				return gml_program_seek_inst.h_error("Enum values should be integer",gml_std_haxe_enum_tools_getParameter(l_node,0));
			} else return gml_program_seek_inst.h_error(("Enum values should be constant"+gml_std_Type_enumConstructor(l_node)),gml_std_haxe_enum_tools_getParameter(l_c.h_node,0));
		} else l_c.h_value=l_next++;
	}
	return false;
}

if(live_enabled)
function gml_seek_enum_values_proc(){
	var l__g=0;
	var l__g1=gml_program_seek_inst.h_enum_array;
	while(l__g<array_length(l__g1)){
		var l_e=l__g1[l__g];
		l__g++;
		if(gml_seek_enum_values_proc_one(l_e))return true;
	}
	return false;
}

if(live_enabled)
function gml_seek_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==55){
		var l_d=l__g.h_d;
		var l_x=l__g.h_obj;
		var l_s=l__g.h_field;
		if(l_x.__enumIndex__==16)gml_std_haxe_enum_tools_setTo(l_q,gml_node_global_hx(l_d,l_s));
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_idents_proc(l_q,l_st){
	var l_d,l_s;
	var l__g=l_q;
	if(l__g.__enumIndex__==13){
		l_d=l__g.h_d;
		l_s=l__g.h_id;
	} else {
		l_d=undefined;
		l_s=undefined;
	}
	if(l_d!=undefined)for(var l__=0;l__<1;l__++){
		var l_scr=gml_program_seek_script;
		if(l_scr!=undefined){
			var l_i=l_scr.h_named_args[$ l_s];
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_arg_const(l_d,l_i));
				continue;
			}
			l_i=l_scr.h_local_map[$ l_s];
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_local_hx(l_d,l_s));
				continue;
			}
			l_i=l_scr.h_static_map[$ l_s];
			if(l_i!=undefined){
				gml_std_haxe_enum_tools_setTo(l_q,gml_node_static_hx(l_d,l_s));
				continue;
			}
		}
		var l_mcr=gml_program_seek_inst.h_macro_map[$ l_s];
		if(l_mcr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_tools_clone(l_mcr.h_node));
			ast_gml_node_tools_ni_concat_pos_rec(l_q,l_d);
			gml_seek_idents_proc(l_q,l_st);
			continue;
		}
		if(gml_const_map[$ l_s]==true){
			var l_val=gml_const_val[$ l_s];
			var l_valNode=gml_seek_eval_value_to_node(l_val,l_d);
			if(l_valNode!=undefined)gml_std_haxe_enum_tools_setTo(l_q,l_valNode); else return gml_program_seek_inst.h_error(("Cannot create a node for `"+l_s+"` ("+typeof(l_val)+")"),l_d);
			continue;
		}
		var l_v=api_api_var_map[$ l_s];
		if(l_v!=undefined){
			var l_flags=l_v.h_flags;
			if((l_flags&4)!=0)gml_std_haxe_enum_tools_setTo(l_q,gml_node_env_fd(l_d,gml_node_self_hx(l_d),l_v)); else gml_std_haxe_enum_tools_setTo(l_q,gml_node_env(l_d,l_v));
			if(ds_list_size(l_st)>0){
				var l__g1=ds_list_find_value(l_st,0);
				switch(l__g1.__enumIndex__){
					case 70:
						var l_d1=l__g1.h_d;
						var l_k=l__g1.h_index;
						if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(ds_list_find_value(l_st,0),gml_node_env1d(l_d1,l_v,l_k)); else return gml_program_seek_inst.h_error("`"+l_s+"` is not an array.",l_d1);
						break;
					case 73:return gml_program_seek_inst.h_error("`"+l_s+"` is not a 2d array.",l__g1.h_d);
					default:if((l_flags&2)!=0)gml_std_haxe_enum_tools_setTo(l_q,gml_node_env1d(l_d,l_v,gml_node_number(l_d,0,undefined)));
				}
			}
			continue;
		}
		var l_scr1=gml_program_seek_inst.h_script_map[$ l_s];
		if(l_scr1!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_script(l_d,l_scr1));
			continue;
		}
		var l_fscr=gml_func_script_id[$ l_s];
		if(l_fscr!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_native_script(l_d,l_s,l_fscr));
			continue;
		}
		var l_fn=gml_func_map[$ l_s];
		if(l_fn!=undefined){
			gml_std_haxe_enum_tools_setTo(l_q,gml_node_native_script(l_d,l_s,l_fn.h_raw_func));
			continue;
		}
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_locals_proc(l_q,l_st){
	var l__g=l_q;
	switch(l__g.__enumIndex__){
		case 94:
			var l_s=l__g.h_name;
			if(!variable_struct_exists(gml_program_seek_script.h_local_map,l_s)){
				gml_program_seek_script.h_local_map[$ l_s]=gml_program_seek_script.h_locals++;
				array_push(gml_program_seek_script.h_local_names,l_s);
			}
			break;
		case 113:
			var l_s=l__g.h_capvar;
			if(!variable_struct_exists(gml_program_seek_script.h_local_map,l_s)){
				gml_program_seek_script.h_local_map[$ l_s]=gml_program_seek_script.h_locals++;
				array_push(gml_program_seek_script.h_local_names,l_s);
			}
			break;
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_seek_self_fields_proc(l_q,l_st){
	var l__g=l_q;
	if(l__g.__enumIndex__==13){
		var l_d=l__g.h_d;
		gml_std_haxe_enum_tools_setTo(l_q,gml_node_field(l_d,gml_node_self_hx(l_d),l__g.h_id));
	}
	return gml_node_tools_seek(l_q,l_st,gml_program_seek_func);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_shift(l_arr){
	if(array_length(l_arr)==0)return undefined;
	var l_result=l_arr[0];
	array_delete(l_arr,0,1);
	return l_result;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_splice(l_arr,l_pos,l_len){
	if(l_pos<0){
		l_pos+=array_length(l_arr);
		if(l_pos<0)l_pos=0;
	}
	var l_n=array_length(l_arr);
	if(l_pos+l_len>l_n)l_len=l_n-l_pos;
	if(l_len<=0)return [];
	var l_r=array_create(l_len);
	array_copy(l_r,0,l_arr,l_pos,l_len);
	array_delete(l_arr,l_pos,l_len);
	return l_r;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_indexOf(l_arr,l_v,l_i){
	if(l_i==undefined)l_i=0;
	if(false)show_debug_message(argument[2]);
	var l_len=array_length(l_arr);
	if(l_i<0){
		l_i+=l_len;
		if(l_i<0)l_i=0;
	}
	while(l_i<l_len){
		if(l_arr[l_i]==l_v)return l_i;
		l_i++;
	}
	return -1;
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_join(l_arr,l_sep){
	var l_len=array_length(l_arr);
	if(l_len==0)return "";
	var l_buf=gml_std_gml_internal_ArrayImpl_join_buf;
	if(l_buf==undefined){
		l_buf=buffer_create(1024,buffer_grow,1);
		gml_std_gml_internal_ArrayImpl_join_buf=l_buf;
	}
	buffer_seek(l_buf,buffer_seek_start,0);
	buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[0]));
	var l_i=1;
	for(var l__g1=l_len;l_i<l__g1;l_i++){
		buffer_write(l_buf,buffer_text,l_sep);
		buffer_write(l_buf,buffer_text,gml_std_Std_stringify(l_arr[l_i]));
	}
	buffer_write(l_buf,buffer_u8,0);
	buffer_seek(l_buf,buffer_seek_start,0);
	return buffer_read(l_buf,buffer_string);
}

if(live_enabled)
function gml_std_gml_internal_ArrayImpl_copy(l_arr){
	var l_out;
	var l_len=array_length(l_arr);
	if(l_len>0){
		l_out=array_create(l_len);
		array_copy(l_out,0,l_arr,0,l_len);
	} else l_out=[];
	return l_out;
}

if(live_enabled)
function gml_internal_native_function_invoke_call(l_fn,l_args1,l_argc){
	if(false)show_debug_message(argument[2]);
	if(l_argc==undefined)l_argc=array_length(l_args1);
	if(l_argc>32)throw gml_std_haxe_Exception_thrown("Too many arguments!");
	return gml_internal_native_function_invoke_funcs[l_argc](l_fn,l_args1);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with0(l_fn,l_w){
	return l_fn();
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with1(l_fn,l_w){
	return l_fn(l_w[0]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with2(l_fn,l_w){
	return l_fn(l_w[0],l_w[1]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with3(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with4(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2],l_w[3]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with5(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2],l_w[3],l_w[4]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with6(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2],l_w[3],l_w[4],l_w[5]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with7(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2],l_w[3],l_w[4],l_w[5],l_w[6]);
}

if(live_enabled)
function gml_internal_native_function_invoke_funcs_with8(l_fn,l_w){
	return l_fn(l_w[0],l_w[1],l_w[2],l_w[3],l_w[4],l_w[5],l_w[6],l_w[7]);
}

if(live_enabled)
function haxe__dynamic_access_dynamic_access_impl__copy(l_this1){
	var l_fields=variable_struct_get_names(l_this1);
	var l_r={}
	var l_i=0;
	for(var l__g1=array_length(l_fields);l_i<l__g1;l_i++){
		var l_fd=l_fields[l_i];
		l_r[$ l_fd]=l_this1[$ l_fd];
	}
	return l_r;
}

if(live_enabled)
function gml_std_haxe_Exception_new(l_message,l_previous,l_native){
	if(false)show_debug_message(argument[2]);
	self.h_message=l_message;
	self.h_previous=l_previous;
	if(l_native==undefined){
		var l_natEx=undefined;
		try { show_error(l_message, true); } catch(_e) { l_natEx = _e; };
		array_delete(l_natEx.stacktrace,0,1);
		l_natEx.hxException=self;
		l_native=l_natEx;
	}
	self.h_native=l_native;
}

if(live_enabled)
function gml_std_haxe_Exception(l_message,l_previous,l_native)constructor{
	static h_message=undefined; /// @is {string}
	static h_previous=undefined; /// @is {gml_std_haxe_Exception?}
	static h_native=undefined; /// @is {any}
	static h_unwrap=method(undefined,gml_std_haxe_Exception_h_unwrap);
	static h_toString=method(undefined,gml_std_haxe_Exception_h_toString);
	switch(argument_count){
		case 1:method(self, gml_std_haxe_Exception_new)(argument[0]);break;
		case 2:method(self, gml_std_haxe_Exception_new)(argument[0],argument[1]);break;
		case 3:method(self, gml_std_haxe_Exception_new)(argument[0],argument[1],argument[2]);break;
		default:show_error("Expected 1..3 arguments.",true);
	}
	static __class__=mt_gml_std_haxe_Exception;
}

if(live_enabled)
function gml_std_haxe_Exception_caught(l_value){
	if(is_struct(l_value)){
		if(variable_struct_exists(l_value,"stack"))return l_value;
		var l_hxEx=l_value[$"hxException"];
		if(l_hxEx!=undefined)return l_hxEx;
		if(variable_struct_exists(l_value,"stacktrace")){
			l_hxEx=new gml_std_haxe_Exception(l_value.message,undefined,l_value);
			l_value.hxException=l_hxEx;
			return l_hxEx;
		}
	}
	return new gml_std_haxe_Exception(string(l_value));
}

if(live_enabled)
function gml_std_haxe_Exception_thrown(l_value){
	if(is_struct(l_value)){
		if(variable_struct_exists(l_value,"stack"))return l_value.h_native;
		if(variable_struct_exists(l_value,"stacktrace"))return l_value;
	}
	var l_message=(is_string(l_value)?l_value:string(l_value));
	var l_natEx=undefined;
	try { show_error(l_message, true); } catch(_e) { l_natEx = _e; };
	return l_natEx;
}

if(live_enabled)
function gml_std_haxe_Exception_h_unwrap(){
	return self.h_native;
}

if(live_enabled)
function gml_std_haxe_Exception_h_toString(){
	return self.h_message;
}

if(live_enabled)
function haxe_ds_basic_map_new(){
	self.h_obj={}
}

if(live_enabled)
function haxe_ds_basic_map()constructor{
	static h_obj=undefined; /// @is {haxe_DynamicAccess<V>}
	method(self, haxe_ds_basic_map_new)();
	static __class__=mt_haxe_ds_basic_map;
}

if(live_enabled)
function haxe_ds_string_map()constructor{
	static h_obj=undefined; /// @is {haxe_DynamicAccess<V>}
	method(self, haxe_ds_basic_map_new)();
	static __class__=mt_haxe_ds_string_map;
}

if(live_enabled)
function live_gmlive_patcher_add_source(l_name,l_acc,l_found,l_m){
	l_found[$ l_name]=true;
	var l_tokens;
	var l_parser=l_m.h_parser;
	if(l_parser!=undefined){
		if(l_parser.h_token_count<0)exit;
		l_tokens=l_parser.h_tokens;
	} else {
		l_parser=new gml_parser(l_m);
		l_m.h_parser=l_parser;
		l_tokens=l_parser.h_run();
		if(l_tokens==undefined)exit;
	}
	var l_tokenCount=l_parser.h_token_count;
	ds_list_add(l_acc,l_m);
	live_gmlive_patcher_index_rec(l_tokens,l_tokenCount,l_acc,l_found);
	var l_macros=l_parser.h_macros;
	var l_i=0;
	for(var l__g1=array_length(l_macros);l_i<l__g1;l_i++){
		var l_mtokens=l_macros[l_i].h_tokens;
		live_gmlive_patcher_index_rec(l_mtokens,array_length(l_mtokens),l_acc,l_found);
	}
}

if(live_enabled)
function live_gmlive_patcher_index_rec(l_tokens,l_tokensLen,l_acc,l_found){
	var l_tokensLen1=l_tokensLen-1;
	var l_tokensPos=-1;
	var l_macros=live_live_macros;
	var l_enums=live_live_enums;
	while(++l_tokensPos<l_tokensLen){
		var l_tk=l_tokens[l_tokensPos];
		var l_id;
		if(l_tk.__enumIndex__==12)l_id=l_tk.h_id; else continue;
		if(variable_struct_exists(l_found,l_id))continue;
		var l_src=l_macros[$ l_id];
		if(l_src!=undefined){
			live_gmlive_patcher_add_source(l_id,l_acc,l_found,l_src);
			continue;
		}
		l_src=l_enums[$ l_id];
		if(l_src!=undefined){
			if(l_tokensPos>0){
				var l__g1=l_tokens[l_tokensPos-1];
				if((l__g1.__enumIndex__==6))continue;
			}
			if(l_tokensPos<l_tokensLen1){
				var l__g3=l_tokens[l_tokensPos+1];
				if((l__g3.__enumIndex__==6))live_gmlive_patcher_add_source(l_id,l_acc,l_found,l_src);
			}
			continue;
		}
		l_found[$ l_id]=true;
	}
}

if(live_enabled)
function live_gmlive_patcher_compile_ex(l_name,l_code){
	var l_source=new gml_source(l_name,l_code,l_name);
	var l_parser=new gml_parser(l_source);
	var l_tokens=l_parser.h_run();
	if(l_tokens==undefined){
		live_gmlive_patcher_error_text=gml_parser_error_text;
		return undefined;
	}
	var l_found=live_async_http_1_found;
	var l_acc=live_async_http_1_acc;
	tools__dictionary_dictionary_impl__clear(l_found);
	ds_list_clear(l_acc);
	if(live_live_globals!=undefined)ds_list_add(l_acc,live_live_globals);
	l_source.h_parser=l_parser;
	live_gmlive_patcher_index_rec(l_tokens,l_parser.h_token_count,l_acc,l_found);
	ds_list_add(l_acc,l_source);
	var l_srci=ds_list_size(l_acc);
	var l_srcs=array_create(l_srci);
	while(--l_srci>=0){
		l_srcs[@l_srci]=ds_list_find_value(l_acc,l_srci);
	}
	var l_pg=new gml_program(l_srcs);
	live_gmlive_patcher_error_text=l_pg.h_error_text;
	if(!l_pg.h_is_ready){
		l_pg.h_destroy();
		return undefined;
	}
	l_pg.h_tag=l_name;
	return l_pg;
}

if(live_enabled)
function live_shader_updated_default(){
	throw gml_std_haxe_Exception_thrown("Can't update shader! You have not assigned a script to live_shader_updated. Please check documentation");
}

function shader_set_live(l_sh,l_live1){
	if(live_enabled){
		var l_i;
		if(l_live1){
			if(ds_map_exists(live_shader_live_shaders,l_sh))exit;
			ds_map_set(live_shader_live_shaders,l_sh,true);
			l_i=ds_list_find_index(live_shader_live_shaders_stop,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_stop,l_i);
			ds_list_add(live_shader_live_shaders_start,l_sh);
		} else {
			if(!ds_map_exists(live_shader_live_shaders,l_sh))exit;
			ds_map_delete(live_shader_live_shaders,l_sh);
			l_i=ds_list_find_index(live_shader_live_shaders_start,l_sh);
			if(l_i>=0)ds_list_delete(live_shader_live_shaders_start,l_i);
			ds_list_add(live_shader_live_shaders_stop,l_sh);
		}
	}
}

function live_validate_scripts(){
	if(live_enabled){
		var l_names=["GMLive_call","live_call","GMLive_tools","live_execute_string","GMLive_token","mc_gml_token","GMLive_parser","gml_parser_buf_sub","GMLive_node","mc_gml_node","GMLive_nodeTools","gml_node_tools_seek","GMLive_builder","gml_builder","GMLive_compiler","gml_compile_program","GMLive_seekEval","gml_seek_eval_eval","GMLive_seekSetOp","gml_seek_set_op_proc","GMLive_action","mc_gml_action","GMLive_new","vm_impl_gml_thread_construct_init","GMLive_exec","vm_gml_thread_exec_slice_init","GMLive_program","gml_program","GMLive_thread","gml_thread","GMLive_vm","vm_group_op_impl","GMLive_vm_init","vm_v2_gml_thread_v2_handlers_init","GMLive_vm_call","live_method","GMLiveAPI","live_preinit_api","GMLive_roomLoader","live_room_start","GMLive_http","live_async_http"];
		var l_i=0;
		var l_count=array_length(l_names);
		while(l_i<l_count){
			var l_scr=l_names[l_i++];
			var l_ref=l_names[l_i++];
			if(-1==asset_get_index(l_ref))show_error(("Function `"+l_ref+"` is missing!"+("\nCheck that script resource `"+l_scr+"` exists (Ctrl+T) and is not just a single empty function;")+"\ndelete and re-import if necessary!"),false);
		}
	}
}

if(live_enabled)
function live_cache_data_create(){
	var l_this=array_create(1);
	/// @typedef {tuple<program:gml_program>} live_cache_data
	l_this[@0]=undefined;
	return l_this;
}

if(live_enabled)
function tools__dictionary_dictionary_impl__clear(l_this1){
	var l_keys=variable_struct_get_names(l_this1);
	var l__g=0;
	while(l__g<array_length(l_keys)){
		var l_key=l_keys[l__g];
		l__g++;
		variable_struct_remove(l_this1,l_key);
	}
}

if(live_enabled)
function live_bits_gmlive_indexer_add_assets(){
	var l_s;
	for(var l_i=0;sprite_exists(l_i);l_i++){
		gml_asset_add(sprite_get_name(l_i),l_i);
	}
	for(l_i=0;font_exists(l_i);l_i++){
		gml_asset_add(font_get_name(l_i),l_i);
	}
	for(l_i=0;object_exists(l_i);l_i++){
		gml_asset_add(object_get_name(l_i),l_i);
	}
	for(l_i=0;audio_exists(l_i);l_i++){
		gml_asset_add(audio_get_name(l_i),l_i);
	}
	for(l_i=0;l_i<1024&&string_ord_at(tileset_get_name(l_i),1)!=60;l_i++){
		gml_asset_add(tileset_get_name(l_i),l_i);
	}
	for(l_i=0;room_exists(l_i);l_i++){
		gml_asset_add(room_get_name(l_i),l_i);
	}
	for(l_i=0;path_exists(l_i);l_i++){
		gml_asset_add(path_get_name(l_i),l_i);
	}
	for(l_i=0;timeline_exists(l_i);l_i++){
		gml_asset_add(timeline_get_name(l_i),l_i);
	}
	for(l_i=0;l_i<256;l_i++){
		l_s=audio_group_name(l_i);
		if(l_s=="<undefined>"||l_s==""||l_s==undefined)break;
		gml_asset_add(l_s,l_i);
	}
}

if(live_enabled)
function live_bits_gmlive_indexer_add_scripts(){
	var l_start=100000;
	var l_k=l_start;
	for(var l__g1=l_start+100000;l_k<l__g1;l_k++){
		if(!script_exists(l_k))break;
		var l_name=script_get_name(l_k);
		if(string_ord_at(l_name,1)==60)continue;
		if(!variable_global_exists(l_name))continue;
		if(variable_struct_exists(gml_func_map,l_name))continue;
		if(asset_get_index(l_name)!=l_k)continue;
		var l_f=new gml_func();
		l_f.h_init_mystery(l_name,l_k);
		gml_func_map[$ l_name]=l_f;
	}
}

if(live_enabled)
function live_bits_gmlive_ready_run(){
	vm_gml_thread_exec_slice_funcs=vm_gml_thread_exec_slice_init();
	vm_impl_gml_thread_construct_funcs=vm_impl_gml_thread_construct_init();
	vm_group_op_funcs=vm_group_op_impl();
	vm_v2_gml_thread_v2_handlers=vm_v2_gml_thread_v2_handlers_init();
}

if(live_enabled)
function gml_link(l_value,l_next)constructor{
	static h_value=undefined; /// @is {T}
	static h_next=undefined; /// @is {gml_link<T>}
	self.h_value=l_value;
	self.h_next=l_next;
	//
}

if(live_enabled)
function gml_action_list_print_action_value(l_v){
	if(l_v==undefined){
		return "null";
	} else if(is_numeric(l_v)){
		if(!is_real(l_v)||sign(frac(l_v))==0)return string(l_v); else return json_stringify(l_v);
	} else if(is_string(l_v)){
		return json_stringify(l_v);
	} else {
		if(is_struct(l_v)&&variable_struct_exists(l_v,"dump"))return l_v.dump();
		return gml_std_Std_stringify(l_v);
	}
}

if(live_enabled)
function gml_action_list_print_action_get_func_name(l_func){
	var l_label=undefined;
	var l_name;
	if(is_method(l_func)){
		var l_scr=method_get_index(l_func);
		l_name=script_get_name(l_scr);
		l_label=ds_map_find_value(gml_func_name,l_scr);
	} else if(is_numeric(l_func)&&script_exists(l_func)){
		l_name=script_get_name(l_func);
		l_label=ds_map_find_value(gml_func_name,l_func);
	} else l_name=string(l_func);
	if(l_label==undefined||l_label==l_name)return l_name; else return l_label+"@"+l_name;
}

if(live_enabled)
function gml_action_list_print_action(l_act){
	var l_pos=gml_std_haxe_enum_tools_getParameter(l_act,0);
	var l_pre="L"+string(l_pos[1])+"\tc"+string(l_pos[2])+"\t";
	var l_r=l_pre+gml_std_Type_enumConstructor(l_act);
	switch(l_act.__enumIndex__){
		case 123:return l_pre+("{ tag : \""+l_act.h_tag+"\",")+string_delete(string(l_act.h_ctx),1,1);
		case 63:return l_r+"("+l_act.h_script.h_name+", "+string(l_act.h_argc)+")";
		case 9:return l_r+"("+gml_std_gml_internal_ArrayImpl_join(l_act.h_fields,",")+")";
		case 42:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act.h_f)+"\", \""+gml_action_list_print_action_get_func_name(l_act.h_ch)+"\")";
		case 41:return l_r+"(\""+gml_action_list_print_action_get_func_name(l_act.h_f)+"\")";
		case 66:
			var l_args1=l_act.h_args;
			l_r+="(\""+gml_action_list_print_action_get_func_name(l_act.h_func)+"\", "+string(l_act.h_argc)+", [";
			var l_sep=false;
			var l__g=0;
			while(l__g<array_length(l_args1)){
				var l_f=l_args1[l__g];
				l__g++;
				if(l_sep)l_r+=","; else l_sep=true;
				l_r+=script_get_name(l_f);
			}
			l_r+="], "+script_get_name(l_act.h_rest)+(", "+gml_std_Std_stringify(l_act.h_inst)+", "+(string(l_act.h_out))+")");
			return l_r;
		case 97:return l_r+"(jt: "+vm__gml_value_map_gml_value_map_impl__print(l_act.h_jumptable)+", default: "+string(l_act.h_defaultPos)+")";
		case 67:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 68:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 69:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 70:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 71:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 72:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 73:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 74:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 75:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 76:return l_r+"(func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 77:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 78:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 79:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 80:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 81:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 82:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 83:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 84:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 85:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
		case 86:return l_r+"(ind: "+string(l_act.h_local)+", func: "+gml_action_list_print_action_get_func_name(l_act.h_func)+")";
	}
	if(is_struct(l_act)){
		var l_enumParams=l_act.__enumParams__;
		var l_argc=array_length(l_enumParams);
		if(l_argc>1){
			l_r+="(";
			var l_k=1;
			for(var l__g1=l_argc;l_k<l__g1;l_k++){
				if(l_k>1)l_r+=", ";
				var l_f=l_enumParams[l_k];
				l_r+=l_f+": "+gml_action_list_print_action_value(l_act[$ l_f]);
			}
			l_r+=")";
		}
		return l_r;
	}
	var l_argc=gml_std_haxe_enum_tools_getParameterCount(l_act);
	if(l_argc>1){
		l_r+="(";
		var l_k=1;
		for(var l__g1=l_argc;l_k<l__g1;l_k++){
			if(l_k>1)l_r+=", ";
			l_r+=gml_action_list_print_action_value(gml_std_haxe_enum_tools_getParameter(l_act,l_k));
		}
		l_r+=")";
	}
	return l_r;
}

if(live_enabled)
function gml_action_list_print(l_this1){
	var l_r=new gml_std_StringBuf();
	var l_i=0;
	for(var l__g1=ds_list_size(l_this1);l_i<l__g1;l_i++){
		var l_act=ds_list_find_value(l_this1,l_i);
		if(l_i>0)l_r.h_addChar(10);
		var l_actStr=gml_action_list_print_action(l_act);
		l_act.__string__=l_actStr;
		l_r.h_add(l_i);
		l_r.h_addChar(9);
		l_r.h_add(l_actStr);
	}
	return l_r.h_toString();
}

if(live_enabled)
function gml_thread_scope_create(l_actions,l_offset,l_args1,l_locals,l_self1,l_other1,l_next,l_program){
	var l_this=[mt_gml_thread_scope];
	array_copy(l_this,1,mq_gml_thread_scope,1,10);
	/// @typedef {tuple<any,actions:gml_action_list,offset:int,args:array<any>,locals:array<any>,stack:gml_stack<any>,inst:gml_stack<any>,with:gml_with_scope,xhdl:gml_link<int>,program:gml_program,next:gml_thread_scope>} gml_thread_scope
	l_this[@8]=undefined;
	l_this[@7]=undefined;
	l_this[@5]=array_create(16);
	l_this[@1]=l_actions;
	l_this[@2]=l_offset;
	l_this[@3]=l_args1;
	l_this[@4]=l_locals;
	l_this[@9]=l_program;
	l_this[@6]=[2,l_other1,l_self1];
	l_this[@10]=l_next;
	return l_this;
}

if(live_enabled)
function gml_type_check_init(){
	var l_r={}
	l_r[$"any"]=gml_type_check_any;
	l_r[$"bool"]=gml_type_check_number;
	l_r[$"number"]=gml_type_check_number;
	l_r[$"?number"]=gml_type_check_z_number;
	l_r[$"float"]=gml_type_check_number;
	l_r[$"?float"]=gml_type_check_z_number;
	l_r[$"real"]=gml_type_check_number;
	l_r[$"?real"]=gml_type_check_z_number;
	l_r[$"color"]=gml_type_check_number;
	l_r[$"date"]=gml_type_check_number;
	l_r[$"int"]=gml_type_check_int;
	l_r[$"index"]=gml_type_check_index;
	l_r[$"id"]=gml_type_check_index;
	l_r[$"sprite"]=gml_type_check_index;
	l_r[$"background"]=gml_type_check_index;
	l_r[$"sound"]=gml_type_check_index;
	l_r[$"font"]=gml_type_check_index;
	l_r[$"script"]=gml_type_check_index;
	l_r[$"shader"]=gml_type_check_index;
	l_r[$"timeline"]=gml_type_check_index;
	l_r[$"object"]=gml_type_check_index;
	l_r[$"room"]=gml_type_check_index;
	l_r[$"buffer"]=gml_type_check_index;
	l_r[$"list"]=gml_type_check_index;
	l_r[$"grid"]=gml_type_check_index;
	l_r[$"string"]=gml_type_check_string;
	l_r[$"?string"]=gml_type_check_z_string;
	l_r[$"array"]=gml_type_check_array;
	l_r[$"?array"]=gml_type_check_z_array;
	l_r[$"sprite"]=gml_type_check_index;
	l_r[$"background"]=gml_type_check_index;
	l_r[$"sound"]=gml_type_check_index;
	l_r[$"font"]=gml_type_check_index;
	l_r[$"path"]=gml_type_check_index;
	l_r[$"timeline"]=gml_type_check_index;
	l_r[$"script"]=gml_type_check_index;
	l_r[$"object"]=gml_type_check_index;
	l_r[$"room"]=gml_type_check_index;
	return l_r;
}

if(live_enabled)
function gml_type_check_any(l_v){
	return "";
}

if(live_enabled)
function gml_type_check_number(l_v){
	if(is_numeric(l_v))return "";
	return "Expected a number";
}

if(live_enabled)
function gml_type_check_int(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an integer";
}

if(live_enabled)
function gml_type_check_index(l_v){
	if(is_real(l_v)&&l_v%1==0)return "";
	if(is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected an index";
}

if(live_enabled)
function gml_type_check_string(l_v){
	if(is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string";
}

if(live_enabled)
function gml_type_check_array(l_v){
	if(is_array(l_v))return "";
	return "Expected an array";
}

if(live_enabled)
function gml_type_check_z_number(l_v){
	if(l_v==undefined||is_numeric(l_v))return "";
	if(is_string(l_v))return "";
	return "Expected a number or null";
}

if(live_enabled)
function gml_type_check_z_string(l_v){
	if(l_v==undefined||is_string(l_v))return "";
	if(is_numeric(l_v))return "";
	return "Expected a string or null";
}

if(live_enabled)
function gml_type_check_z_array(l_v){
	if(l_v==undefined||is_array(l_v))return "";
	return "Expected an array or null";
}

if(live_enabled)
function gml_value_list_copy(l_this1){
	var l_n=array_length(l_this1);
	var l_r=array_create(l_n);
	array_copy(l_r,0,l_this1,0,l_n);
	return l_r;
}

if(live_enabled)
function gml_value_list_pad_to_size_with_null(l_this1,l_newSize){
	var l_curSize=array_length(l_this1);
	if(l_curSize<l_newSize){
		array_resize(l_this1,l_newSize);
		while(l_curSize<l_newSize){
			l_this1[@l_curSize]=undefined;
			l_curSize++;
		}
	}
}

if(live_enabled)
function vm__gml_value_map_gml_value_map_impl__print(l_this1){
	var l_r="{";
	var l_keys=ds_map_keys_to_array(l_this1);
	var l_i=0;
	for(var l__g1=array_length(l_keys);l_i<l__g1;l_i++){
		var l_k=l_keys[l_i];
		if(l_i>0)l_r+=", "; else l_r+=" ";
		l_r+=gml_value_print(l_keys[l_i])+": "+gml_std_Std_stringify(ds_map_find_value(l_this1,l_k));
	}
	return l_r+" }";
}

if(live_enabled)
function gml_with_scope(l_data,l_nxt)constructor{
	static h_index=undefined; /// @is {int}
	static h_length=undefined; /// @is {int}
	static h_array=undefined; /// @is {array<any>}
	static h_next=undefined; /// @is {gml_with_scope}
	static h_data=undefined; /// @is {vm_GmlWithData}
	self.h_index=0;
	self.h_data=l_data;
	self.h_length=l_data.length;
	self.h_array=l_data.items;
	self.h_next=l_nxt;
	static __class__=mt_gml_with_scope;
}

if(live_enabled)
function gml_with_scope_copy(l_q){
	if(l_q==undefined)return undefined;
	var l_q_data=l_q.h_data;
	l_q_data.refc++;
	var l_r=new gml_with_scope(l_q_data,gml_with_scope_copy(l_q.h_next));
	l_r.h_index=l_q.h_index;
	return l_r;
}

if(live_enabled)
function gml_with_scope_destroy(l_q){
	while(l_q!=undefined){
		vm__gml_with_data_gml_with_data_impl__destroy(l_q.h_data);
		l_q=l_q.h_next;
	}
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__init(){
	var l_pools=array_create(5,undefined);
	l_pools[@0]=ds_stack_create();
	l_pools[@1]=ds_stack_create();
	l_pools[@2]=ds_stack_create();
	l_pools[@3]=ds_stack_create();
	l_pools[@4]=ds_stack_create();
	return l_pools;
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__alloc(l_size){
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)return array_create(l_size);
	var l_pool=vm__gml_with_data_gml_with_data_impl__pools[l_sln];
	if(ds_stack_empty(l_pool))return array_create((power(10,l_sln)|0)); else return ds_stack_pop(l_pool);
}

if(live_enabled)
function vm__gml_with_data_gml_with_data_impl__destroy(l_this1){
	if(--l_this1.refc!=0)exit;
	var l_size=l_this1.length;
	var l_sln=(l_size>0?(log10(l_size)|0):0);
	if(l_sln>=5)exit;
	ds_stack_push(vm__gml_with_data_gml_with_data_impl__pools[l_sln],l_this1.items);
}

if(live_enabled)
function gml_type_ref(l_name,l_path1)constructor{
	static h_name=undefined; /// @is {string}
	static h_path=undefined; /// @is {string}
	if(l_path1==undefined)l_path1="";
	if(false)show_debug_message(argument[1]);
	self.h_name=l_name;
	self.h_path=l_path1;
	self[$""]=gml_type_ref_root;
	static __class__=mt_gml_type_ref;
}

if(live_enabled)
function gml_type_ref_init(){
	gml_type_ref_root=undefined;
	var l_t=new gml_type_ref("typeref");
	l_t[$""]=l_t;
	return l_t;
}

function vm_v2_GmlStructBase()constructor{
	if(live_enabled){
		
	}
	static __class__=mt_vm_v2_GmlStructBase;
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_init(){
	var l_arr=[];
	var l__=0;
	for(var l__g1=3-(-7)+1;l__<l__g1;l__++){
		array_push(l_arr,vm_v2_gml_thread_group_call_gml23_call_unknown);
	}
	l_arr[@0+7]=vm_v2_gml_thread_group_call_gml23_call_basic;
	l_arr[@3+7]=vm_v2_gml_thread_group_call_gml23_call_self_other_soft;
	l_arr[@2+7]=vm_v2_gml_thread_group_call_gml23_call_self_other_soft;
	l_arr[@1+7]=vm_v2_gml_thread_group_call_gml23_call_self;
	l_arr[@-5+7]=vm_v2_gml_thread_group_call_gml23_call_raw;
	l_arr[@-6+7]=vm_v2_gml_thread_group_call_gml23_call_construct;
	return l_arr;
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_unknown(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	vm_group_call_call_func_result=undefined;
	vm_group_call_call_func_status=l_th.h_proc_error2("Call type not supported",l_act);
	return false;
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_basic(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
	vm_group_call_call_func_status=0;
	return true;
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_self_other_soft(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	var l_inst=l_th.h_scope[6];
	var l__other=l_inst[l_inst[0]-1];
	var l__self=l_inst[l_inst[0]];
	var l_val=l__self;
	if(!(instanceof(l_val)=="instance"||is_struct(l_val)||is_numeric(l_val)||typeof(l_val)=="ref")){
		vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
		vm_group_call_call_func_status=0;
		return true;
	}
	var l_val=l__other;
	if(!(instanceof(l_val)=="instance"||is_struct(l_val)||is_numeric(l_val)||typeof(l_val)=="ref")){
		with (l__self) {
			vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
			vm_group_call_call_func_status=0;
			return true;
		}
		return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
	}
	with (l__other) with (l__self) {
		vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
		vm_group_call_call_func_status=0;
		return true;
	}
	with (l__self) {
		vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
		vm_group_call_call_func_status=0;
		return true;
	}
	return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_self(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	var l_inst=l_th.h_scope[6];
	with (l_inst[l_inst[0]]) {
		vm_group_call_call_func_result=(l_argc<81?vm_gml_thread_exec_slice_funcs[l_argc](l_func,l_array1,l_arrOffset):vm_gml_thread_exec_slice_longcall(l_func,l_array1,l_arrOffset,l_argc));
		vm_group_call_call_func_status=0;
		return true;
	}
	return l_th.h_proc_error("Can't call instance-specific function - instance `"+gml_value_print(l_inst[l_inst[0]])+("` ("+gml_value_get_type(l_inst[l_inst[0]])+") does not exist."),l_act);
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_construct(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	vm_group_call_call_func_status=0;
	var l_inst=l_th.h_scope[6];
	with (l_inst[l_inst[0]]) {
		var l_tmp;
		if(l_argc<81)l_tmp=vm_impl_gml_thread_construct_funcs[l_argc](l_func,l_array1,l_arrOffset); else l_tmp=vm_impl_gml_thread_construct_error();
		vm_group_call_call_func_result=l_tmp;
		return true;
	}
	var l_tmp;
	if(l_argc<81)l_tmp=vm_impl_gml_thread_construct_funcs[l_argc](l_func,l_array1,l_arrOffset); else l_tmp=vm_impl_gml_thread_construct_error();
	vm_group_call_call_func_result=l_tmp;
	return true;
}

if(live_enabled)
function vm_v2_gml_thread_group_call_gml23_call_raw(l_th,l_act,l_func,l_array1,l_arrOffset,l_argc){
	l_th.h_result=undefined;
	vm_group_call_call_func_result=undefined;
	vm_group_call_call_func_status=l_func(l_array1,l_arrOffset,l_argc);
	return true;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local0(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==77)l_act.h_func(l_scope[4][l_act.h_local]);
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local0o(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==78){
		var l_v=l_act.h_func(l_scope[4][l_act.h_local]);
		var l_i=l_st[0]+1;
		if(l_i>=array_length(l_st))l_st[@array_length(l_st)*2]=0;
		l_st[@l_i]=l_v;
		l_st[@0]=l_i;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local1(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==79){
		var l__func=l_act.h_func;
		var l_scope1=l_scope[4][l_act.h_local];
		var l_i=l_st[0];
		var l_r=l_st[l_i];
		l_st[@l_i]=0;
		l_st[@0]=(l_i-1);
		l__func(l_scope1,l_r);
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local1o(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==80){
		var l_z=l_st[0];
		l_st[@l_z]=l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z]);
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local2(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==81){
		var l_z=l_st[0]-1;
		l_st[@0]=(l_z-1);
		l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1]);
		l_st[@l_z]=0;
		l_st[@l_z+1]=0;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local2o(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==82){
		var l_z=l_st[0]-1;
		l_st[@0]=l_z;
		l_st[@l_z]=l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1]);
		l_st[@l_z+1]=0;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local3(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==83){
		var l_z=l_st[0]-2;
		l_st[@0]=(l_z-1);
		l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1],l_st[l_z+2]);
		l_st[@l_z]=0;
		l_st[@l_z+1]=0;
		l_st[@l_z+2]=0;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local3o(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==84){
		var l_z=l_st[0]-2;
		l_st[@0]=l_z;
		l_st[@l_z]=l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1],l_st[l_z+2]);
		l_st[@l_z+1]=0;
		l_st[@l_z+2]=0;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local4(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==85){
		var l_z=l_st[0]-3;
		l_st[@0]=(l_z-1);
		l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1],l_st[l_z+2],l_st[l_z+3]);
		l_st[@l_z]=0;
		l_st[@l_z+1]=0;
		l_st[@l_z+2]=0;
		l_st[@l_z+3]=0;
	}
	return 0;
}

if(live_enabled)
function vm_v2_gml_thread_group_fast_call_with_local_on_call_func_with_local4o(l_th,l_act,l_scope,l_st){
	if(l_act.__enumIndex__==86){
		var l_z=l_st[0]-3;
		l_st[@0]=l_z;
		l_st[@l_z]=l_act.h_func(l_scope[4][l_act.h_local],l_st[l_z],l_st[l_z+1],l_st[l_z+2],l_st[l_z+3]);
		l_st[@l_z+1]=0;
		l_st[@l_z+2]=0;
		l_st[@l_z+3]=0;
	}
	return 0;
}

function live_method(l_newSelf,l_func){
	if(live_enabled){
		if(is_method(l_func)){
			var l_meta=method_get_self(l_func);
			if(is_struct(l_meta)&&variable_struct_exists(l_meta,"live:self")){
				var l_nmeta=haxe__dynamic_access_dynamic_access_impl__copy(l_meta);
				l_nmeta[$"live:self"]=l_newSelf;
				return method(l_nmeta,l_func);
			}
		}
		return method(l_newSelf,l_func);
	}else return undefined;
}

function live_method_get_self(l_func){
	if(live_enabled){
		var l_fnSelf=method_get_self(l_func);
		if(is_struct(l_fnSelf)&&variable_struct_exists(l_fnSelf,"live:self"))return l_fnSelf[$"live:self"];
		return l_fnSelf;
	}else return undefined;
}

function gml_thread_method_script(){
	if(false)show_debug_message(argument[argument_count-1]);
	if(live_enabled){
		var l_argc=argument_count;
		var l_args1=array_create(l_argc);
		var l_i=0;
		for(var l__g1=l_argc;l_i<l__g1;l_i++){
			l_args1[@l_i]=argument[l_i];
		}
		var l_meta=self;
		var l_meta1=l_meta;
		var l_self1=l_meta[$"live:self"];
		var l_result;
		do {
			var l_ctx=l_meta1[$"live:context"];
			var l_pg;
			if(l_ctx!=undefined){
				var l_livedata=live_live_map[$ l_ctx];
				if(l_livedata==undefined)throw gml_std_haxe_Exception_thrown("Trying to call a nonexistent GMLive program: "+gml_std_Std_stringify(l_ctx));
				l_pg=l_livedata[0];
				if(l_pg==undefined){
					live_log("Trying to call a broken GMLive program "+gml_std_Std_stringify(l_ctx)+", returning undefined",2);
					l_result=undefined;
					break;
				}
			} else {
				l_pg=l_meta1[$"live:program"];
				if(l_pg==undefined)throw gml_std_haxe_Exception_thrown("It would appear that you've re-bound a GMLive function to a different scope. Please use live_method() rather than method() to do so.");
			}
			live_custom_self=l_self1;
			live_custom_other=other;
			var l_th=l_pg.h_call_v(l_meta1[$"live:function"],l_args1,false);
			if(l_th==undefined){
				l_result=undefined;
				break;
			}
			if(l_th.h_status==3){
				l_result=l_th.h_result;
			} else if(l_th.h_status==4){
				live_log("Runtime error: "+l_th.h_get_error(),2);
				l_result=undefined;
			} else l_result=undefined;
		} until(true);
		return l_result;
	}else return undefined;
}

if(live_enabled)
function vm_v2_gml_thread_group_func_literal_ctr_impl(){
	show_error("\"live\" constructors should be invoked through live_new",true);
}

if(live_enabled)
function vm_v2_gml_thread_group_func_literal_create_function(l_program,l__name,l__self){
	var l_meta={}
	var l_funcSelf=l__self;
	if(!is_struct(l_funcSelf)&&instanceof(l_funcSelf)=="instance")l_funcSelf=l_funcSelf.id;
	l_meta[$"live:self"]=l_funcSelf;
	var l_th=gml_thread_current;
	if(l_th.h_scope[9].h_live_ident!=undefined)l_meta[$"live:context"]=l_th.h_scope[9].h_live_ident; else l_meta[$"live:program"]=l_th.h_scope[9];
	l_meta[$"live:function"]=l__name;
	var l_isCtr=l_program.h_script_map[$ l__name].h_is_constructor;
	l_meta[$"live:isConstructor"]=l_isCtr;
	if(l_isCtr)return method(l_meta,vm_v2_gml_thread_group_func_literal_ctr_impl); else return method(l_meta,gml_thread_method_script);
}

if(live_enabled)
function vm_v2_gml_thread_group_func_literal_on_func_literal(l_th,l_act,l_scope,l_stack){
	if(l_act.__enumIndex__==89){
		var l__name=l_act.h_name;
		var l_this1=l_scope[6];
		gml_stack_push(l_stack,vm_v2_gml_thread_group_func_literal_create_function(l_scope[9],l__name,l_this1[l_this1[0]]));
	}
	return 0;
}

globalvar gml_builder_build_line_is_stat; /// @is {bool}
globalvar gml_builder_build_line_is_expr; /// @is {bool}
globalvar compile_gml_compile_args_get_simple_val; /// @is {any}
globalvar compile_gml_compile_args_get_simple_kind; /// @is {compile__GmlCompileArgs_GmlArgSimpleKind}
globalvar gml_func_name; /// @is {ds_map<any; string>}
if(live_enabled)gml_func_name=ds_map_create();
globalvar gml_func_script_id; /// @is {tools_Dictionary<script>}
if(live_enabled)gml_func_script_id={}
globalvar gml_const_map; /// @is {tools_Dictionary<bool>}
if(live_enabled)gml_const_map={}
globalvar gml_const_val; /// @is {tools_Dictionary<any>}
if(live_enabled)gml_const_val={}
globalvar gml_asset_index; /// @is {tools_Dictionary<int>}
if(live_enabled)gml_asset_index={}
globalvar gml_enum_map; /// @is {tools_Dictionary<gml_enum>}
if(live_enabled)gml_enum_map={}
globalvar compile_groups_gml_compile_group_static_has_statics; /// @is {bool}
if(live_enabled)compile_groups_gml_compile_group_static_has_statics=compile_groups_gml_compile_group_static_has_statics_init();
globalvar gml_func_map; /// @is {tools_Dictionary<gml_func>}
if(live_enabled)gml_func_map={}
globalvar vm_value_gml_value_printer_print_refs; /// @is {ds_map<any; string>}
if(live_enabled)vm_value_gml_value_printer_print_refs=ds_map_create();
globalvar vm_value_gml_value_printer_print_num; /// @is {int}
if(live_enabled)vm_value_gml_value_printer_print_num=0;
globalvar gml_op_apply_fns; /// @is {array<ast_GmlOpFunc>}
if(live_enabled)gml_op_apply_fns=gml_op_apply_init();
globalvar gml_thread_default_callback; /// @is {function<gml_thread;void>}
if(live_enabled)gml_thread_default_callback=undefined;
globalvar gml_thread_verbose_stack_traces; /// @is {bool}
if(live_enabled)gml_thread_verbose_stack_traces=false;
globalvar gml_thread_allow_exceptions; /// @is {bool}
if(live_enabled)gml_thread_allow_exceptions=false;
globalvar gml_thread_current; /// @is {gml_thread}
if(live_enabled)gml_thread_current=undefined;
globalvar gml_stack_fill_value_arr; /// @is {array<any>}
if(live_enabled)gml_stack_fill_value_arr=array_create(1024,0);
globalvar gml_compile_error_text; /// @is {string}
globalvar gml_compile_error_pos; /// @is {gml_pos}
globalvar gml_compile_curr_script; /// @is {gml_script}
if(live_enabled)gml_compile_curr_script=gml_compile_init();
globalvar gml_compile_curr_program; /// @is {gml_program}
globalvar gml_compile_curr_break; /// @is {int}
if(live_enabled)gml_compile_curr_break=-1;
globalvar gml_compile_curr_continue; /// @is {int}
if(live_enabled)gml_compile_curr_continue=-1;
globalvar gml_compile_const_val_of_val; /// @is {any}
globalvar gml_compile_def_indexes; /// @is {Map<string; int>}
globalvar gml_compile_handlers; /// @is {array<function<q:ast_GmlNode;actions:gml_action_list;out:bool;bool?>>}
globalvar api_api_version_v1; /// @is {api_api_version}
if(live_enabled)api_api_version_v1=api_api_version_create(14);
globalvar api_api_version_v2; /// @is {api_api_version}
if(live_enabled)api_api_version_v2=api_api_version_create(22);
globalvar api_api_version_v23; /// @is {api_api_version}
if(live_enabled)api_api_version_v23=api_api_version_create(23);
globalvar gml_parser_default_version; /// @is {api_api_version}
if(live_enabled)gml_parser_default_version=api_api_version_v23;
globalvar gml_parser_curr_version; /// @is {api_api_version}
if(live_enabled)gml_parser_curr_version=undefined;
globalvar gml_parser_token_acc; /// @is {GmlParserOut}
if(live_enabled)gml_parser_token_acc=ds_list_create();
globalvar gml_parser_fast_buf; /// @is {buffer}
if(live_enabled)gml_parser_fast_buf=buffer_create(1024,buffer_fast,1);
globalvar gml_parser_str_buf; /// @is {buffer}
if(live_enabled)gml_parser_str_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_buf_sub_buf; /// @is {buffer}
if(live_enabled)gml_parser_buf_sub_buf=buffer_create(1024,buffer_grow,1);
globalvar gml_parser_error_text; /// @is {string}
globalvar gml_parser_error_pos; /// @is {gml_pos}
globalvar gml_parser_char_is_space; /// @is {array<bool>}
if(live_enabled)gml_parser_char_is_space=gml_parser_char_is_space_init();
globalvar _gml_parser_gml_parser_string_buf_impl____buf; /// @is {buffer}
if(live_enabled)_gml_parser_gml_parser_string_buf_impl____buf=buffer_create(1024,buffer_grow,1);
globalvar gml_program_seek_inst; /// @is {gml_program}
globalvar gml_program_seek_func; /// @is {function<ast_GmlNode;tools_ArrayList<ast_GmlNode>;bool>}
globalvar gml_program_seek_script; /// @is {gml_script}
globalvar gml_std_StringBuf_buffer; /// @is {buffer}
if(live_enabled)gml_std_StringBuf_buffer=buffer_create(128,buffer_grow,1);
globalvar api_api_fast_field_getters; /// @is {tools_Dictionary<api_ApiFastFieldGetter>}
if(live_enabled)api_api_fast_field_getters={}
globalvar api_api_fast_field_setters; /// @is {tools_Dictionary<api_ApiFastFieldSetter>}
if(live_enabled)api_api_fast_field_setters={}
globalvar api_api_var_map; /// @is {tools_Dictionary<api_api_var>}
if(live_enabled)api_api_var_map={}
globalvar ast_gml_macro_proc_list; /// @is {tools_ArrayList<gml_parser_macro>}
if(live_enabled)ast_gml_macro_proc_list=ds_list_create();
globalvar ast_gml_macro_proc_map; /// @is {tools_Dictionary<gml_parser_macro>}
if(live_enabled)ast_gml_macro_proc_map={}
globalvar ast_gml_macro_proc_exclude_map; /// @is {tools_Dictionary<bool>}
if(live_enabled)ast_gml_macro_proc_exclude_map={}
globalvar ast_gml_macro_proc_next_exclude_list; /// @is {tools_ArrayList<string>}
if(live_enabled)ast_gml_macro_proc_next_exclude_list=ds_list_create();
globalvar ast_gml_macro_proc_next_exclude_map; /// @is {tools_Dictionary<bool>}
if(live_enabled)ast_gml_macro_proc_next_exclude_map={}
globalvar ast_gml_node_def_info_array; /// @is {array<ast_gml_node_def_ctr>}
if(live_enabled)ast_gml_node_def_info_array=[new ast_gml_node_def_ctr("Undefined",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Boolean",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("value",13)]),new ast_gml_node_def_ctr("Number",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("value",13),new ast_gml_node_def_param("src",13)]),new ast_gml_node_def_ctr("CString",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("value",13)]),new ast_gml_node_def_ctr("OtherConst",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("value",13)]),new ast_gml_node_def_ctr("EnumCtr",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("e",6),new ast_gml_node_def_param("ctr",7)]),new ast_gml_node_def_ctr("ArrayDecl",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("values",1)]),new ast_gml_node_def_ctr("ObjectDecl",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("keys",14),new ast_gml_node_def_param("values",1)]),new ast_gml_node_def_ctr("EnsureArrayForLocal",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("EnsureArrayForGlobal",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("EnsureArrayForField",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("fd",13)]),new ast_gml_node_def_ctr("EnsureArrayForIndex",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("ind",0)]),new ast_gml_node_def_ctr("EnsureArrayForIndex2d",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("ind1",0),new ast_gml_node_def_param("ind2",0)]),new ast_gml_node_def_ctr("Ident",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("id",13)]),new ast_gml_node_def_ctr("Self",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Other",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("GlobalRef",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Script",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("ref",5)]),new ast_gml_node_def_ctr("NativeScript",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("id",12)]),new ast_gml_node_def_ctr("Const",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("ArgConst",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("index",13)]),new ast_gml_node_def_ctr("ArgIndex",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("ArgCount",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Call",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallScript",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallScriptAt",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("inst",0),new ast_gml_node_def_param("script",13),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallScriptId",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallScriptWithArray",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("array",0)]),new ast_gml_node_def_ctr("CallField",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("field",13),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallFunc",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("func",11),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("CallFuncAt",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("fname",13),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("Construct",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("ctr",0),new ast_gml_node_def_param("args",1)]),new ast_gml_node_def_ctr("FuncLiteral",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("Prefix",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("inc",13)]),new ast_gml_node_def_ctr("Postfix",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("inc",13)]),new ast_gml_node_def_ctr("UnOp",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("op",8)]),new ast_gml_node_def_ctr("BinOp",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("a",0),new ast_gml_node_def_param("b",0)]),new ast_gml_node_def_ctr("SetOp",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("a",0),new ast_gml_node_def_param("b",0)]),new ast_gml_node_def_ctr("Delete",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0)]),new ast_gml_node_def_ctr("NullCo",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("a",0),new ast_gml_node_def_param("b",0)]),new ast_gml_node_def_ctr("ToBool",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("FromBool",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("In",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("fd",0),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("not",13)]),new ast_gml_node_def_ctr("Local",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("LocalSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("LocalAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Static",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("StaticSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("val",0),new ast_gml_node_def_param("isInit",13)]),new ast_gml_node_def_ctr("StaticAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Global",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("GlobalSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("GlobalAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("ScriptStatic",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("scr",13),new ast_gml_node_def_param("name",13)]),new ast_gml_node_def_ctr("ScriptStaticSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("scr",13),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("ScriptStaticAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("scr",13),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Field",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("field",13)]),new ast_gml_node_def_ctr("FieldSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("field",13),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("FieldAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("field",13),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Env",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10)]),new ast_gml_node_def_ctr("EnvSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("EnvAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("EnvFd",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("v",10)]),new ast_gml_node_def_ctr("EnvFdSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("EnvFdAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Env1d",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("Env1dSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Env1dAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("v",10),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Alarm",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("AlarmSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("AlarmAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Index",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("IndexSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("IndexAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Index2d",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0)]),new ast_gml_node_def_ctr("Index2dSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Index2dAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("RawId",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("RawIdSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("RawIdAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("RawId2d",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0)]),new ast_gml_node_def_ctr("RawId2dSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("RawId2dAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("arr",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsList",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("list",0),new ast_gml_node_def_param("index",0)]),new ast_gml_node_def_ctr("DsListSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("list",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsListAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("list",0),new ast_gml_node_def_param("index",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsMap",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("map",0),new ast_gml_node_def_param("key",0)]),new ast_gml_node_def_ctr("DsMapSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("map",0),new ast_gml_node_def_param("key",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsMapAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("map",0),new ast_gml_node_def_param("key",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsGrid",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("grid",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0)]),new ast_gml_node_def_ctr("DsGridSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("grid",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("DsGridAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("grid",0),new ast_gml_node_def_param("index1",0),new ast_gml_node_def_param("index2",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("KeyId",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("key",0)]),new ast_gml_node_def_ctr("KeyIdSet",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("key",0),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("KeyIdAop",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("obj",0),new ast_gml_node_def_param("key",0),new ast_gml_node_def_param("op",9),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("VarDecl",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("name",13),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Block",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("nodes",1)]),new ast_gml_node_def_ctr("IfThen",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("cond",0),new ast_gml_node_def_param("then",0),new ast_gml_node_def_param("not",0)]),new ast_gml_node_def_ctr("Ternary",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("cond",0),new ast_gml_node_def_param("then",0),new ast_gml_node_def_param("not",0)]),new ast_gml_node_def_ctr("Switch",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("expr",0),new ast_gml_node_def_param("cases",4),new ast_gml_node_def_param("def",0)]),new ast_gml_node_def_ctr("Wait",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("time",0)]),new ast_gml_node_def_ctr("Fork",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("While",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("cond",0),new ast_gml_node_def_param("loop",0)]),new ast_gml_node_def_ctr("DoUntil",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("loop",0),new ast_gml_node_def_param("cond",0)]),new ast_gml_node_def_ctr("DoWhile",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("loop",0),new ast_gml_node_def_param("cond",0)]),new ast_gml_node_def_ctr("Repeat",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("times",0),new ast_gml_node_def_param("loop",0)]),new ast_gml_node_def_ctr("For",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("pre",0),new ast_gml_node_def_param("cond",0),new ast_gml_node_def_param("post",0),new ast_gml_node_def_param("loop",0)]),new ast_gml_node_def_ctr("With",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("ctx",0),new ast_gml_node_def_param("loop",0)]),new ast_gml_node_def_ctr("Once",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("loop",0)]),new ast_gml_node_def_ctr("Return",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("val",0)]),new ast_gml_node_def_ctr("Exit",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Break",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Continue",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("Debugger",[new ast_gml_node_def_param("pos",2)]),new ast_gml_node_def_ctr("TryCatch",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("block",0),new ast_gml_node_def_param("capvar",13),new ast_gml_node_def_param("catcher",0)]),new ast_gml_node_def_ctr("Throw",[new ast_gml_node_def_param("pos",2),new ast_gml_node_def_param("err",0)])];
globalvar ast_gml_node_tools_ni_concat_pos_pos; /// @is {gml_pos}
globalvar gml_script_index_offset; /// @is {int}
if(live_enabled)gml_script_index_offset=0;
globalvar gml_source_unknown; /// @is {gml_source}
if(live_enabled)gml_source_unknown=gml_source_init_unknown();
globalvar gml_source_builtin; /// @is {gml_source}
if(live_enabled)gml_source_builtin=gml_source_init_builtin();
globalvar data_gml_keyword_mapper_map; /// @is {tools_Dictionary<data_GmlKeywordMapperFunc>}
if(live_enabled)data_gml_keyword_mapper_map=data_gml_keyword_mapper_init();
globalvar gml_seek_eval_error_text; /// @is {string}
globalvar gml_seek_eval_error_pos; /// @is {gml_pos}
globalvar gml_seek_eval_eval_rec; /// @is {bool}
globalvar gml_seek_eval_eval_thread; /// @is {gml_thread}
if(live_enabled)gml_seek_eval_eval_thread=undefined;
globalvar gml_seek_eval_eval_actions; /// @is {gml_action_list}
if(live_enabled)gml_seek_eval_eval_actions=ds_list_create();
globalvar gml_seek_eval_invalid_value; /// @is {any}
if(live_enabled)gml_seek_eval_invalid_value=[];
globalvar gml_seek_set_op_resolve_set_op_safe; /// @is {bool}
globalvar gml_seek_set_op_resolve_set_op_xw; /// @is {ast_GmlNode}
globalvar gml_std_gml_internal_ArrayImpl_join_buf; /// @is {buffer}
if(live_enabled)gml_std_gml_internal_ArrayImpl_join_buf=undefined;
globalvar gml_internal_native_function_invoke_funcs; /// @is {array<function<fn:any;args:array<any>;any>>}
if(live_enabled)gml_internal_native_function_invoke_funcs=(function(){
	return [gml_internal_native_function_invoke_funcs_with0,gml_internal_native_function_invoke_funcs_with1,gml_internal_native_function_invoke_funcs_with2,gml_internal_native_function_invoke_funcs_with3,gml_internal_native_function_invoke_funcs_with4,gml_internal_native_function_invoke_funcs_with5,gml_internal_native_function_invoke_funcs_with6,gml_internal_native_function_invoke_funcs_with7,gml_internal_native_function_invoke_funcs_with8];
})();
globalvar gml_std_haxe_boot_isJS; /// @is {bool}
if(live_enabled)gml_std_haxe_boot_isJS=os_browser!=browser_not_a_browser;
globalvar live_live_sprites; /// @is {ds_map<sprite; bool>}
if(live_enabled)live_live_sprites=ds_map_create();
globalvar live_live_sprites_start; /// @is {ds_list<sprite>}
if(live_enabled)live_live_sprites_start=ds_list_create();
globalvar live_live_sprites_stop; /// @is {ds_list<sprite>}
if(live_enabled)live_live_sprites_stop=ds_list_create();
globalvar live_live_point_paths; /// @is {ds_map<path; bool>}
if(live_enabled)live_live_point_paths=ds_map_create();
globalvar live_live_point_paths_start; /// @is {ds_list<path>}
if(live_enabled)live_live_point_paths_start=ds_list_create();
globalvar live_live_point_paths_stop; /// @is {ds_list<path>}
if(live_enabled)live_live_point_paths_stop=ds_list_create();
globalvar live_live_anim_curves; /// @is {ds_map<animcurve; int>}
if(live_enabled)live_live_anim_curves=ds_map_create();
globalvar live_live_anim_curves_start; /// @is {ds_list<animcurve>}
if(live_enabled)live_live_anim_curves_start=ds_list_create();
globalvar live_live_anim_curves_stop; /// @is {ds_list<animcurve>}
if(live_enabled)live_live_anim_curves_stop=ds_list_create();
globalvar live_live_included_files; /// @is {ds_map<string; live_GMLiveIncludedFilePair>}
if(live_enabled)live_live_included_files=ds_map_create();
globalvar live_live_included_files_start; /// @is {ds_list<string>}
if(live_enabled)live_live_included_files_start=ds_list_create();
globalvar live_live_included_files_stop; /// @is {ds_list<string>}
if(live_enabled)live_live_included_files_stop=ds_list_create();
globalvar live_live_room; /// @is {room}
if(live_enabled)live_live_room=-1;
globalvar live_live_room_data; /// @is {ds_map<room; string>}
if(live_enabled)live_live_room_data=ds_map_create();
globalvar live_live_rooms; /// @is {ds_map<room; bool>}
if(live_enabled)live_live_rooms=ds_map_create();
globalvar live_live_rooms_start; /// @is {ds_list<room>}
if(live_enabled)live_live_rooms_start=ds_list_create();
globalvar live_live_rooms_stop; /// @is {ds_list<room>}
if(live_enabled)live_live_rooms_stop=ds_list_create();
globalvar live_blank_object; /// @is {object}
if(live_enabled)live_blank_object=-1;
globalvar live_blank_room; /// @is {room}
if(live_enabled)live_blank_room=-1;
globalvar live_sprite_updated; /// @is {function<sprite;void>}
if(live_enabled)live_sprite_updated=live_default_update;
globalvar live_path_updated; /// @is {function<path;void>}
if(live_enabled)live_path_updated=live_default_update;
globalvar live_animcurve_updated; /// @is {function<animcurve;void>}
if(live_enabled)live_animcurve_updated=live_default_update;
globalvar live_shader_updated; /// @is {function<shader;void>}
if(live_enabled)live_shader_updated=live_default_update;
globalvar live_room_updated; /// @is {function<room;void>}
if(live_enabled)live_room_updated=live_room_updated_impl;
globalvar live_last_warn_at; /// @is {number}
if(live_enabled)live_last_warn_at=0;
globalvar live_auto_call_data; /// @is {live_cache_data}
globalvar live_async_http_1_found; /// @is {tools_Dictionary<bool>}
if(live_enabled)live_async_http_1_found={}
globalvar live_async_http_1_acc; /// @is {sf_ds_ArrayList<gml_source>}
if(live_enabled)live_async_http_1_acc=ds_list_create();
globalvar live_gmlive_patcher_error_text; /// @is {string}
globalvar live_shader_updated; /// @is {function<shader;string;string;void>}
if(live_enabled)live_shader_updated=live_shader_updated_default;
globalvar live_shader_live_shaders; /// @is {ds_map<shader; bool>}
if(live_enabled)live_shader_live_shaders=ds_map_create();
globalvar live_shader_live_shaders_start; /// @is {ds_list<shader>}
if(live_enabled)live_shader_live_shaders_start=ds_list_create();
globalvar live_shader_live_shaders_stop; /// @is {ds_list<shader>}
if(live_enabled)live_shader_live_shaders_stop=ds_list_create();
globalvar vm_v2_gml_thread_v2_handlers; /// @is {array<vm_v2_GmlThreadProc>}
globalvar live_is_ready; /// @is {bool}
if(live_enabled)live_is_ready=false;
globalvar live_request_url; /// @is {string}
if(live_enabled)live_request_url=undefined;
globalvar live_request_guid; /// @is {live_yy_YyGUID}
if(live_enabled)live_request_guid=undefined;
globalvar live_request_id; /// @is {http}
if(live_enabled)live_request_id=undefined;
globalvar live_config; /// @is {string}
if(live_enabled)live_config=undefined;
globalvar live_runtime_version; /// @is {string}
if(live_enabled)live_runtime_version="";
globalvar live_build_date; /// @is {number}
if(live_enabled)live_build_date=0;
globalvar live_request_time; /// @is {number}
if(live_enabled)live_request_time=-100000;
globalvar live_request_rate; /// @is {number}
if(live_enabled)live_request_rate=1;
globalvar live_request_password; /// @is {string}
if(live_enabled)live_request_password="";
globalvar live_result; /// @is {any}
if(live_enabled)live_result="";
globalvar live_allow_trailing_args; /// @is {bool}
if(live_enabled)live_allow_trailing_args=true;
globalvar live_init_timeout; /// @is {int}
if(live_enabled)live_init_timeout=30;
globalvar live_directory; /// @is {string}
globalvar live_live_map; /// @is {tools_Dictionary<live_cache_data>}
if(live_enabled)live_live_map={}
globalvar live_live_enums; /// @is {tools_Dictionary<gml_source>}
if(live_enabled)live_live_enums={}
globalvar live_live_macros; /// @is {tools_Dictionary<gml_source>}
if(live_enabled)live_live_macros={}
globalvar live_live_globals; /// @is {gml_source}
if(live_enabled)live_live_globals=undefined;
globalvar live_temp_path; /// @is {string}
if(live_enabled)live_temp_path=live_temp_path_init();
globalvar live_log_script; /// @is {function<string;live_GMLiveLogLevel;void>}
if(live_enabled)live_log_script=live_log_impl;
globalvar live_update_script; /// @is {function<string;string;string;void>}
if(live_enabled)live_update_script=live_update_script_impl;
globalvar live_name; /// @is {string}
if(live_enabled)live_name=undefined;
globalvar live_custom_self; /// @is {any}
if(live_enabled)live_custom_self=undefined;
globalvar live_custom_other; /// @is {any}
if(live_enabled)live_custom_other=undefined;
globalvar live_last_update_at; /// @is {number}
if(live_enabled)live_last_update_at=0;
globalvar live_warned_about_init_timeout; /// @is {bool}
if(live_enabled)live_warned_about_init_timeout=false;
globalvar live_room_loader_object_cache; /// @is {ds_map<string; object>}
if(live_enabled)live_room_loader_object_cache=ds_map_create();
globalvar live_room_loader_sprite_cache; /// @is {ds_map<string; sprite>}
if(live_enabled)live_room_loader_sprite_cache=ds_map_create();
globalvar live_room_loader_use_physics; /// @is {bool}
if(live_enabled)live_room_loader_use_physics=false;
globalvar live_room_loader_room_x; /// @is {number}
if(live_enabled)live_room_loader_room_x=0;
globalvar live_room_loader_room_y; /// @is {number}
if(live_enabled)live_room_loader_room_y=0;
globalvar live_room_loader_apply_backgrounds; /// @is {bool}
if(live_enabled)live_room_loader_apply_backgrounds=true;
globalvar live_room_loader_apply_instances; /// @is {bool}
if(live_enabled)live_room_loader_apply_instances=true;
globalvar live_room_loader_apply_tiles; /// @is {bool}
if(live_enabled)live_room_loader_apply_tiles=true;
globalvar live_room_loader_apply_views; /// @is {bool}
if(live_enabled)live_room_loader_apply_views=true;
globalvar live_room_loader_apply_settings; /// @is {bool}
if(live_enabled)live_room_loader_apply_settings=true;
globalvar live_room_loader_apply_sprites; /// @is {bool}
if(live_enabled)live_room_loader_apply_sprites=true;
globalvar live_room_loader_apply_filters; /// @is {bool}
if(live_enabled)live_room_loader_apply_filters=true;
globalvar live_room_loader_inst_map_gml; /// @is {ds_map<string; instance>}
if(live_enabled)live_room_loader_inst_map_gml=ds_map_create();
globalvar live_room_loader_inst_map_yy; /// @is {ds_map<string; live_yy_YyRoomInstance>}
if(live_enabled)live_room_loader_inst_map_yy=ds_map_create();
globalvar gml_thread_current_kind; /// @is {vm_GmlThreadKind}
if(live_enabled)gml_thread_current_kind=0;
globalvar vm_gml_thread_exec_slice_funcs; /// @is {array<vm_GmlThreadExecSliceFunc>}
globalvar gml_type_check_map; /// @is {tools_Dictionary<gml_type_check>}
if(live_enabled)gml_type_check_map=gml_type_check_init();
globalvar vm__gml_with_data_gml_with_data_impl__pools; /// @is {array<vm__GmlWithData_GmlWithPool>}
if(live_enabled)vm__gml_with_data_gml_with_data_impl__pools=vm__gml_with_data_gml_with_data_impl__init();
globalvar gml_type_ref_root; /// @is {gml_type_ref}
if(live_enabled)gml_type_ref_root=gml_type_ref_init();
globalvar vm_impl_gml_thread_construct_funcs; /// @is {array<function<any;array<any>;int;any>>}
globalvar vm_group_call_call_func_result; /// @is {any}
globalvar vm_group_call_call_func_status; /// @is {gml_thread_proc_result}
globalvar vm_v2_gml_thread_group_call_gml23_funcs; /// @is {array<vm_v2_GmlThreadGroupCallGML_func>}
if(live_enabled)vm_v2_gml_thread_group_call_gml23_funcs=vm_v2_gml_thread_group_call_gml23_init();
globalvar vm_group_op_funcs; /// @is {array<function<any;any;any>>}

if(live_enabled){
	live_validate_scripts();
	gml_parser_set_version(23);
	live_bits_gmlive_ready_run();
	live_preinit_api();
	live_preinit_project();
}

/// @typedef {function<th:gml_thread;act:gml_action;scope:gml_thread_scope;stack:gml_stack<any>;gml_thread_proc_result>} vm_v2_GmlThreadProc
/// @typedef {int} gml_thread_proc_result
/// @typedef {function<th:gml_thread;act:gml_action;func:any;array:array<any>;arrOffset:int;argc:int;bool>} vm_v2_GmlThreadGroupCallGML_func
/// @typedef {ds_stack<array<any>>} vm__GmlWithData_GmlWithPool
/// @typedef {any} vm_GmlWithData
/// @typedef {ds_map<K; V>} vm_GmlValueMap
/// @typedef {function<any;string>} gml_type_check
/// @typedef {any} vm_GmlThreadTimeTag
/// @typedef {int} gml_thread_status
/// @typedef {function<fn:any;argv:array<any>;offset:int;any>} vm_GmlThreadExecSliceFunc
/// @typedef {int} vm_GmlThreadKind
/// @typedef {ds_list<T>} gml_action_list
/// @typedef {array} gml_stack
/// @typedef {any} tools_Dictionary
/// @typedef {ds_list} tools_ArrayList
/// @typedef {ds_list<T>} sf_ds_ArrayList
/// @typedef {any} live_yy_YyRoomInstance
/// @typedef {string} live_yy_YyGUID
/// @typedef {int} live_GMLiveLogLevel
/// @typedef {any} live_GMLiveIncludedFilePair
/// @typedef {function<pos:gml_pos;gml_token>} data_GmlKeywordMapperFunc
/// @typedef {int} data_GmlFuncFlags
/// @typedef {int} compile__GmlCompileArgs_GmlArgSimpleKind
/// @typedef {int} ast_GmlUnOp
/// @typedef {int} ast_GmlSourceId
/// @typedef {int} ast_GmlPosSource
/// @typedef {function<number;number;number>} ast_GmlOpFunc
/// @typedef {int} gml_op
/// @typedef {int} ast_GmlNodeDefType
/// @typedef {any} ast_GmlNodeCase
/// @typedef {gml_pos} ast_GmlNodeData
/// @typedef {gml_node} ast_GmlNode
/// @typedef {int} ast_GmlKeyword
/// @typedef {function<obj:any;val:any;void>} api_ApiFastFieldSetter
/// @typedef {function<obj:any;any>} api_ApiFastFieldGetter
/// @typedef {ds_list<T>} GmlParserOut