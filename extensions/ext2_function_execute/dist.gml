/* THIS FILE IS AUTO GENERATED */
#define function_execute
var _n = argument[0],
    _i = asset_get_index("__function_execute_1512678626657_" + _n);

if (!script_exists(_i)) {
    show_error("Unsupported function for function_execute: " + string(_n), true);
    return;
}

var _args = array_create(argument_count - 1, undefined);
for(var i = 1;i < argument_count;i ++) {
    _args[i - 1] = argument[i];
}

return script_execute(_i, _args);

#define function_execute_array
var _n = argument[0],
    _i = asset_get_index("__function_execute_1512678626657_" + _n);

if (!script_exists(_i)) {
    show_error("Unsupported function for function_execute_array: " + string(_n), true);
    return;
}

var _args = (argument_count > 1) ? argument[1] : [];

return script_execute(_i, _args);
/* EDIT PAST THIS POINT AT YOUR OWN PERIL */
#define __function_execute_1512678626657_is_real
var _a = argument[0];
return is_real(_a[0]);
#define __function_execute_1512678626657_is_string
var _a = argument[0];
return is_string(_a[0]);
#define __function_execute_1512678626657_is_array
var _a = argument[0];
return is_array(_a[0]);
#define __function_execute_1512678626657_is_undefined
var _a = argument[0];
return is_undefined(_a[0]);
#define __function_execute_1512678626657_is_int32
var _a = argument[0];
return is_int32(_a[0]);
#define __function_execute_1512678626657_is_int64
var _a = argument[0];
return is_int64(_a[0]);
#define __function_execute_1512678626657_is_ptr
var _a = argument[0];
return is_ptr(_a[0]);
#define __function_execute_1512678626657_is_vec3
var _a = argument[0];
return is_vec3(_a[0]);
#define __function_execute_1512678626657_is_vec4
var _a = argument[0];
return is_vec4(_a[0]);
#define __function_execute_1512678626657_is_matrix
var _a = argument[0];
return is_matrix(_a[0]);
#define __function_execute_1512678626657_is_bool
var _a = argument[0];
return is_bool(_a[0]);
#define __function_execute_1512678626657_typeof
var _a = argument[0];
return typeof(_a[0]);
#define __function_execute_1512678626657_variable_global_exists
var _a = argument[0];
return variable_global_exists(_a[0]);
#define __function_execute_1512678626657_variable_global_get
var _a = argument[0];
return variable_global_get(_a[0]);
#define __function_execute_1512678626657_variable_global_set
var _a = argument[0];
return variable_global_set(_a[0],_a[1]);
#define __function_execute_1512678626657_variable_instance_exists
var _a = argument[0];
return variable_instance_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_variable_instance_get
var _a = argument[0];
return variable_instance_get(_a[0],_a[1]);
#define __function_execute_1512678626657_variable_instance_set
var _a = argument[0];
return variable_instance_set(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_variable_instance_get_names
var _a = argument[0];
return variable_instance_get_names(_a[0]);
#define __function_execute_1512678626657_array_length_1d
var _a = argument[0];
return array_length_1d(_a[0]);
#define __function_execute_1512678626657_array_length_2d
var _a = argument[0];
return array_length_2d(_a[0],_a[1]);
#define __function_execute_1512678626657_array_height_2d
var _a = argument[0];
return array_height_2d(_a[0]);
#define __function_execute_1512678626657_array_equals
var _a = argument[0];
return array_equals(_a[0],_a[1]);
#define __function_execute_1512678626657_array_create
var _a = argument[0];
return array_create(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_array_copy
var _a = argument[0];
return array_copy(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_random
var _a = argument[0];
return random(_a[0]);
#define __function_execute_1512678626657_random_range
var _a = argument[0];
return random_range(_a[0],_a[1]);
#define __function_execute_1512678626657_irandom
var _a = argument[0];
return irandom(_a[0]);
#define __function_execute_1512678626657_irandom_range
var _a = argument[0];
return irandom_range(_a[0],_a[1]);
#define __function_execute_1512678626657_random_set_seed
var _a = argument[0];
return random_set_seed(_a[0]);
#define __function_execute_1512678626657_random_get_seed
var _a = argument[0];
return random_get_seed();
#define __function_execute_1512678626657_randomize
var _a = argument[0];
return randomize();
#define __function_execute_1512678626657_randomise
var _a = argument[0];
return randomise();
#define __function_execute_1512678626657_choose
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return choose()
    case 1: return choose(_a[0])
    case 2: return choose(_a[0],_a[1])
    case 3: return choose(_a[0],_a[1],_a[2])
    case 4: return choose(_a[0],_a[1],_a[2],_a[3])
    case 5: return choose(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return choose(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_abs
var _a = argument[0];
return abs(_a[0]);
#define __function_execute_1512678626657_round
var _a = argument[0];
return round(_a[0]);
#define __function_execute_1512678626657_floor
var _a = argument[0];
return floor(_a[0]);
#define __function_execute_1512678626657_ceil
var _a = argument[0];
return ceil(_a[0]);
#define __function_execute_1512678626657_sign
var _a = argument[0];
return sign(_a[0]);
#define __function_execute_1512678626657_frac
var _a = argument[0];
return frac(_a[0]);
#define __function_execute_1512678626657_sqrt
var _a = argument[0];
return sqrt(_a[0]);
#define __function_execute_1512678626657_sqr
var _a = argument[0];
return sqr(_a[0]);
#define __function_execute_1512678626657_exp
var _a = argument[0];
return exp(_a[0]);
#define __function_execute_1512678626657_ln
var _a = argument[0];
return ln(_a[0]);
#define __function_execute_1512678626657_log2
var _a = argument[0];
return log2(_a[0]);
#define __function_execute_1512678626657_log10
var _a = argument[0];
return log10(_a[0]);
#define __function_execute_1512678626657_sin
var _a = argument[0];
return sin(_a[0]);
#define __function_execute_1512678626657_cos
var _a = argument[0];
return cos(_a[0]);
#define __function_execute_1512678626657_tan
var _a = argument[0];
return tan(_a[0]);
#define __function_execute_1512678626657_arcsin
var _a = argument[0];
return arcsin(_a[0]);
#define __function_execute_1512678626657_arccos
var _a = argument[0];
return arccos(_a[0]);
#define __function_execute_1512678626657_arctan
var _a = argument[0];
return arctan(_a[0]);
#define __function_execute_1512678626657_arctan2
var _a = argument[0];
return arctan2(_a[0],_a[1]);
#define __function_execute_1512678626657_dsin
var _a = argument[0];
return dsin(_a[0]);
#define __function_execute_1512678626657_dcos
var _a = argument[0];
return dcos(_a[0]);
#define __function_execute_1512678626657_dtan
var _a = argument[0];
return dtan(_a[0]);
#define __function_execute_1512678626657_darcsin
var _a = argument[0];
return darcsin(_a[0]);
#define __function_execute_1512678626657_darccos
var _a = argument[0];
return darccos(_a[0]);
#define __function_execute_1512678626657_darctan
var _a = argument[0];
return darctan(_a[0]);
#define __function_execute_1512678626657_darctan2
var _a = argument[0];
return darctan2(_a[0],_a[1]);
#define __function_execute_1512678626657_degtorad
var _a = argument[0];
return degtorad(_a[0]);
#define __function_execute_1512678626657_radtodeg
var _a = argument[0];
return radtodeg(_a[0]);
#define __function_execute_1512678626657_power
var _a = argument[0];
return power(_a[0],_a[1]);
#define __function_execute_1512678626657_logn
var _a = argument[0];
return logn(_a[0],_a[1]);
#define __function_execute_1512678626657_min
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return min()
    case 1: return min(_a[0])
    case 2: return min(_a[0],_a[1])
    case 3: return min(_a[0],_a[1],_a[2])
    case 4: return min(_a[0],_a[1],_a[2],_a[3])
    case 5: return min(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return min(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_max
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return max()
    case 1: return max(_a[0])
    case 2: return max(_a[0],_a[1])
    case 3: return max(_a[0],_a[1],_a[2])
    case 4: return max(_a[0],_a[1],_a[2],_a[3])
    case 5: return max(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return max(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_mean
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return mean()
    case 1: return mean(_a[0])
    case 2: return mean(_a[0],_a[1])
    case 3: return mean(_a[0],_a[1],_a[2])
    case 4: return mean(_a[0],_a[1],_a[2],_a[3])
    case 5: return mean(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return mean(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_median
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return median()
    case 1: return median(_a[0])
    case 2: return median(_a[0],_a[1])
    case 3: return median(_a[0],_a[1],_a[2])
    case 4: return median(_a[0],_a[1],_a[2],_a[3])
    case 5: return median(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return median(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_clamp
var _a = argument[0];
return clamp(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_lerp
var _a = argument[0];
return lerp(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_dot_product
var _a = argument[0];
return dot_product(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_dot_product_3d
var _a = argument[0];
return dot_product_3d(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_dot_product_normalised
var _a = argument[0];
return dot_product_normalised(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_dot_product_3d_normalised
var _a = argument[0];
return dot_product_3d_normalised(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_dot_product_normalized
var _a = argument[0];
return dot_product_normalized(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_dot_product_3d_normalized
var _a = argument[0];
return dot_product_3d_normalized(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_math_set_epsilon
var _a = argument[0];
return math_set_epsilon(_a[0]);
#define __function_execute_1512678626657_math_get_epsilon
var _a = argument[0];
return math_get_epsilon();
#define __function_execute_1512678626657_angle_difference
var _a = argument[0];
return angle_difference(_a[0],_a[1]);
#define __function_execute_1512678626657_point_distance_3d
var _a = argument[0];
return point_distance_3d(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_point_distance
var _a = argument[0];
return point_distance(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_point_direction
var _a = argument[0];
return point_direction(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_lengthdir_x
var _a = argument[0];
return lengthdir_x(_a[0],_a[1]);
#define __function_execute_1512678626657_lengthdir_y
var _a = argument[0];
return lengthdir_y(_a[0],_a[1]);
#define __function_execute_1512678626657_real
var _a = argument[0];
return real(_a[0]);
#define __function_execute_1512678626657_string
var _a = argument[0];
return string(_a[0]);
#define __function_execute_1512678626657_int64
var _a = argument[0];
return int64(_a[0]);
#define __function_execute_1512678626657_ptr
var _a = argument[0];
return ptr(_a[0]);
#define __function_execute_1512678626657_string_format
var _a = argument[0];
return string_format(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_chr
var _a = argument[0];
return chr(_a[0]);
#define __function_execute_1512678626657_ansi_char
var _a = argument[0];
return ansi_char(_a[0]);
#define __function_execute_1512678626657_ord
var _a = argument[0];
return ord(_a[0]);
#define __function_execute_1512678626657_string_length
var _a = argument[0];
return string_length(_a[0]);
#define __function_execute_1512678626657_string_byte_length
var _a = argument[0];
return string_byte_length(_a[0]);
#define __function_execute_1512678626657_string_pos
var _a = argument[0];
return string_pos(_a[0],_a[1]);
#define __function_execute_1512678626657_string_copy
var _a = argument[0];
return string_copy(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_char_at
var _a = argument[0];
return string_char_at(_a[0],_a[1]);
#define __function_execute_1512678626657_string_ord_at
var _a = argument[0];
return string_ord_at(_a[0],_a[1]);
#define __function_execute_1512678626657_string_byte_at
var _a = argument[0];
return string_byte_at(_a[0],_a[1]);
#define __function_execute_1512678626657_string_set_byte_at
var _a = argument[0];
return string_set_byte_at(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_delete
var _a = argument[0];
return string_delete(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_insert
var _a = argument[0];
return string_insert(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_lower
var _a = argument[0];
return string_lower(_a[0]);
#define __function_execute_1512678626657_string_upper
var _a = argument[0];
return string_upper(_a[0]);
#define __function_execute_1512678626657_string_repeat
var _a = argument[0];
return string_repeat(_a[0],_a[1]);
#define __function_execute_1512678626657_string_letters
var _a = argument[0];
return string_letters(_a[0]);
#define __function_execute_1512678626657_string_digits
var _a = argument[0];
return string_digits(_a[0]);
#define __function_execute_1512678626657_string_lettersdigits
var _a = argument[0];
return string_lettersdigits(_a[0]);
#define __function_execute_1512678626657_string_replace
var _a = argument[0];
return string_replace(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_replace_all
var _a = argument[0];
return string_replace_all(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_count
var _a = argument[0];
return string_count(_a[0],_a[1]);
#define __function_execute_1512678626657_string_hash_to_newline
var _a = argument[0];
return string_hash_to_newline(_a[0]);
#define __function_execute_1512678626657_clipboard_has_text
var _a = argument[0];
return clipboard_has_text();
#define __function_execute_1512678626657_clipboard_set_text
var _a = argument[0];
return clipboard_set_text(_a[0]);
#define __function_execute_1512678626657_clipboard_get_text
var _a = argument[0];
return clipboard_get_text();
#define __function_execute_1512678626657_date_current_datetime
var _a = argument[0];
return date_current_datetime();
#define __function_execute_1512678626657_date_create_datetime
var _a = argument[0];
return date_create_datetime(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_date_valid_datetime
var _a = argument[0];
return date_valid_datetime(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_date_inc_year
var _a = argument[0];
return date_inc_year(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_month
var _a = argument[0];
return date_inc_month(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_week
var _a = argument[0];
return date_inc_week(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_day
var _a = argument[0];
return date_inc_day(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_hour
var _a = argument[0];
return date_inc_hour(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_minute
var _a = argument[0];
return date_inc_minute(_a[0],_a[1]);
#define __function_execute_1512678626657_date_inc_second
var _a = argument[0];
return date_inc_second(_a[0],_a[1]);
#define __function_execute_1512678626657_date_get_year
var _a = argument[0];
return date_get_year(_a[0]);
#define __function_execute_1512678626657_date_get_month
var _a = argument[0];
return date_get_month(_a[0]);
#define __function_execute_1512678626657_date_get_week
var _a = argument[0];
return date_get_week(_a[0]);
#define __function_execute_1512678626657_date_get_day
var _a = argument[0];
return date_get_day(_a[0]);
#define __function_execute_1512678626657_date_get_hour
var _a = argument[0];
return date_get_hour(_a[0]);
#define __function_execute_1512678626657_date_get_minute
var _a = argument[0];
return date_get_minute(_a[0]);
#define __function_execute_1512678626657_date_get_second
var _a = argument[0];
return date_get_second(_a[0]);
#define __function_execute_1512678626657_date_get_weekday
var _a = argument[0];
return date_get_weekday(_a[0]);
#define __function_execute_1512678626657_date_get_day_of_year
var _a = argument[0];
return date_get_day_of_year(_a[0]);
#define __function_execute_1512678626657_date_get_hour_of_year
var _a = argument[0];
return date_get_hour_of_year(_a[0]);
#define __function_execute_1512678626657_date_get_minute_of_year
var _a = argument[0];
return date_get_minute_of_year(_a[0]);
#define __function_execute_1512678626657_date_get_second_of_year
var _a = argument[0];
return date_get_second_of_year(_a[0]);
#define __function_execute_1512678626657_date_year_span
var _a = argument[0];
return date_year_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_month_span
var _a = argument[0];
return date_month_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_week_span
var _a = argument[0];
return date_week_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_day_span
var _a = argument[0];
return date_day_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_hour_span
var _a = argument[0];
return date_hour_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_minute_span
var _a = argument[0];
return date_minute_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_second_span
var _a = argument[0];
return date_second_span(_a[0],_a[1]);
#define __function_execute_1512678626657_date_compare_datetime
var _a = argument[0];
return date_compare_datetime(_a[0],_a[1]);
#define __function_execute_1512678626657_date_compare_date
var _a = argument[0];
return date_compare_date(_a[0],_a[1]);
#define __function_execute_1512678626657_date_compare_time
var _a = argument[0];
return date_compare_time(_a[0],_a[1]);
#define __function_execute_1512678626657_date_date_of
var _a = argument[0];
return date_date_of(_a[0]);
#define __function_execute_1512678626657_date_time_of
var _a = argument[0];
return date_time_of(_a[0]);
#define __function_execute_1512678626657_date_datetime_string
var _a = argument[0];
return date_datetime_string(_a[0]);
#define __function_execute_1512678626657_date_date_string
var _a = argument[0];
return date_date_string(_a[0]);
#define __function_execute_1512678626657_date_time_string
var _a = argument[0];
return date_time_string(_a[0]);
#define __function_execute_1512678626657_date_days_in_month
var _a = argument[0];
return date_days_in_month(_a[0]);
#define __function_execute_1512678626657_date_days_in_year
var _a = argument[0];
return date_days_in_year(_a[0]);
#define __function_execute_1512678626657_date_leap_year
var _a = argument[0];
return date_leap_year(_a[0]);
#define __function_execute_1512678626657_date_is_today
var _a = argument[0];
return date_is_today(_a[0]);
#define __function_execute_1512678626657_date_set_timezone
var _a = argument[0];
return date_set_timezone(_a[0]);
#define __function_execute_1512678626657_date_get_timezone
var _a = argument[0];
return date_get_timezone();
#define __function_execute_1512678626657_game_set_speed
var _a = argument[0];
return game_set_speed(_a[0],_a[1]);
#define __function_execute_1512678626657_game_get_speed
var _a = argument[0];
return game_get_speed(_a[0]);
#define __function_execute_1512678626657_motion_set
var _a = argument[0];
return motion_set(_a[0],_a[1]);
#define __function_execute_1512678626657_motion_add
var _a = argument[0];
return motion_add(_a[0],_a[1]);
#define __function_execute_1512678626657_place_free
var _a = argument[0];
return place_free(_a[0],_a[1]);
#define __function_execute_1512678626657_place_empty
var _a = argument[0];
return place_empty(_a[0],_a[1]);
#define __function_execute_1512678626657_place_meeting
var _a = argument[0];
return place_meeting(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_place_snapped
var _a = argument[0];
return place_snapped(_a[0],_a[1]);
#define __function_execute_1512678626657_move_random
var _a = argument[0];
return move_random(_a[0],_a[1]);
#define __function_execute_1512678626657_move_snap
var _a = argument[0];
return move_snap(_a[0],_a[1]);
#define __function_execute_1512678626657_move_towards_point
var _a = argument[0];
return move_towards_point(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_move_contact_solid
var _a = argument[0];
return move_contact_solid(_a[0],_a[1]);
#define __function_execute_1512678626657_move_contact_all
var _a = argument[0];
return move_contact_all(_a[0],_a[1]);
#define __function_execute_1512678626657_move_outside_solid
var _a = argument[0];
return move_outside_solid(_a[0],_a[1]);
#define __function_execute_1512678626657_move_outside_all
var _a = argument[0];
return move_outside_all(_a[0],_a[1]);
#define __function_execute_1512678626657_move_bounce_solid
var _a = argument[0];
return move_bounce_solid(_a[0]);
#define __function_execute_1512678626657_move_bounce_all
var _a = argument[0];
return move_bounce_all(_a[0]);
#define __function_execute_1512678626657_move_wrap
var _a = argument[0];
return move_wrap(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_distance_to_point
var _a = argument[0];
return distance_to_point(_a[0],_a[1]);
#define __function_execute_1512678626657_distance_to_object
var _a = argument[0];
return distance_to_object(_a[0]);
#define __function_execute_1512678626657_position_empty
var _a = argument[0];
return position_empty(_a[0],_a[1]);
#define __function_execute_1512678626657_position_meeting
var _a = argument[0];
return position_meeting(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_path_start
var _a = argument[0];
return path_start(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_path_end
var _a = argument[0];
return path_end();
#define __function_execute_1512678626657_mp_linear_step
var _a = argument[0];
return mp_linear_step(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_mp_potential_step
var _a = argument[0];
return mp_potential_step(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_mp_linear_step_object
var _a = argument[0];
return mp_linear_step_object(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_mp_potential_step_object
var _a = argument[0];
return mp_potential_step_object(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_mp_potential_settings
var _a = argument[0];
return mp_potential_settings(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_mp_linear_path
var _a = argument[0];
return mp_linear_path(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_mp_potential_path
var _a = argument[0];
return mp_potential_path(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_mp_linear_path_object
var _a = argument[0];
return mp_linear_path_object(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_mp_potential_path_object
var _a = argument[0];
return mp_potential_path_object(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_mp_grid_create
var _a = argument[0];
return mp_grid_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_mp_grid_destroy
var _a = argument[0];
return mp_grid_destroy(_a[0]);
#define __function_execute_1512678626657_mp_grid_clear_all
var _a = argument[0];
return mp_grid_clear_all(_a[0]);
#define __function_execute_1512678626657_mp_grid_clear_cell
var _a = argument[0];
return mp_grid_clear_cell(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_mp_grid_clear_rectangle
var _a = argument[0];
return mp_grid_clear_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_mp_grid_add_cell
var _a = argument[0];
return mp_grid_add_cell(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_mp_grid_get_cell
var _a = argument[0];
return mp_grid_get_cell(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_mp_grid_add_rectangle
var _a = argument[0];
return mp_grid_add_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_mp_grid_add_instances
var _a = argument[0];
return mp_grid_add_instances(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_mp_grid_path
var _a = argument[0];
return mp_grid_path(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_mp_grid_draw
var _a = argument[0];
return mp_grid_draw(_a[0]);
#define __function_execute_1512678626657_mp_grid_to_ds_grid
var _a = argument[0];
return mp_grid_to_ds_grid(_a[0],_a[1]);
#define __function_execute_1512678626657_collision_point
var _a = argument[0];
return collision_point(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_collision_rectangle
var _a = argument[0];
return collision_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_collision_circle
var _a = argument[0];
return collision_circle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_collision_ellipse
var _a = argument[0];
return collision_ellipse(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_collision_line
var _a = argument[0];
return collision_line(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_point_in_rectangle
var _a = argument[0];
return point_in_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_point_in_triangle
var _a = argument[0];
return point_in_triangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_point_in_circle
var _a = argument[0];
return point_in_circle(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_rectangle_in_rectangle
var _a = argument[0];
return rectangle_in_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_rectangle_in_triangle
var _a = argument[0];
return rectangle_in_triangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_rectangle_in_circle
var _a = argument[0];
return rectangle_in_circle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_instance_find
var _a = argument[0];
return instance_find(_a[0],_a[1]);
#define __function_execute_1512678626657_instance_exists
var _a = argument[0];
return instance_exists(_a[0]);
#define __function_execute_1512678626657_instance_number
var _a = argument[0];
return instance_number(_a[0]);
#define __function_execute_1512678626657_instance_position
var _a = argument[0];
return instance_position(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_instance_nearest
var _a = argument[0];
return instance_nearest(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_instance_furthest
var _a = argument[0];
return instance_furthest(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_instance_place
var _a = argument[0];
return instance_place(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_instance_create_depth
var _a = argument[0];
return instance_create_depth(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_instance_create_layer
var _a = argument[0];
return instance_create_layer(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_instance_copy
var _a = argument[0];
return instance_copy(_a[0]);
#define __function_execute_1512678626657_instance_change
var _a = argument[0];
return instance_change(_a[0],_a[1]);
#define __function_execute_1512678626657_instance_destroy
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return instance_destroy()
    case 1: return instance_destroy(_a[0])
    case 2: return instance_destroy(_a[0],_a[1])
    case 3: return instance_destroy(_a[0],_a[1],_a[2])
    case 4: return instance_destroy(_a[0],_a[1],_a[2],_a[3])
    case 5: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return instance_destroy(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_position_destroy
var _a = argument[0];
return position_destroy(_a[0],_a[1]);
#define __function_execute_1512678626657_position_change
var _a = argument[0];
return position_change(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_instance_id_get
var _a = argument[0];
return instance_id_get(_a[0]);
#define __function_execute_1512678626657_instance_deactivate_all
var _a = argument[0];
return instance_deactivate_all(_a[0]);
#define __function_execute_1512678626657_instance_deactivate_object
var _a = argument[0];
return instance_deactivate_object(_a[0]);
#define __function_execute_1512678626657_instance_deactivate_region
var _a = argument[0];
return instance_deactivate_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_instance_activate_all
var _a = argument[0];
return instance_activate_all();
#define __function_execute_1512678626657_instance_activate_object
var _a = argument[0];
return instance_activate_object(_a[0]);
#define __function_execute_1512678626657_instance_activate_region
var _a = argument[0];
return instance_activate_region(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_room_goto
var _a = argument[0];
return room_goto(_a[0]);
#define __function_execute_1512678626657_room_goto_previous
var _a = argument[0];
return room_goto_previous();
#define __function_execute_1512678626657_room_goto_next
var _a = argument[0];
return room_goto_next();
#define __function_execute_1512678626657_room_previous
var _a = argument[0];
return room_previous(_a[0]);
#define __function_execute_1512678626657_room_next
var _a = argument[0];
return room_next(_a[0]);
#define __function_execute_1512678626657_room_restart
var _a = argument[0];
return room_restart();
#define __function_execute_1512678626657_game_end
var _a = argument[0];
return game_end();
#define __function_execute_1512678626657_game_restart
var _a = argument[0];
return game_restart();
#define __function_execute_1512678626657_game_load
var _a = argument[0];
return game_load(_a[0]);
#define __function_execute_1512678626657_game_save
var _a = argument[0];
return game_save(_a[0]);
#define __function_execute_1512678626657_game_save_buffer
var _a = argument[0];
return game_save_buffer(_a[0]);
#define __function_execute_1512678626657_game_load_buffer
var _a = argument[0];
return game_load_buffer(_a[0]);
#define __function_execute_1512678626657_event_perform
var _a = argument[0];
return event_perform(_a[0],_a[1]);
#define __function_execute_1512678626657_event_user
var _a = argument[0];
return event_user(_a[0]);
#define __function_execute_1512678626657_event_perform_object
var _a = argument[0];
return event_perform_object(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_event_inherited
var _a = argument[0];
return event_inherited();
#define __function_execute_1512678626657_show_debug_message
var _a = argument[0];
return show_debug_message(_a[0]);
#define __function_execute_1512678626657_show_debug_overlay
var _a = argument[0];
return show_debug_overlay(_a[0]);
#define __function_execute_1512678626657_debug_event
var _a = argument[0];
return debug_event(_a[0]);
#define __function_execute_1512678626657_debug_get_callstack
var _a = argument[0];
return debug_get_callstack();
#define __function_execute_1512678626657_alarm_get
var _a = argument[0];
return alarm_get(_a[0]);
#define __function_execute_1512678626657_alarm_set
var _a = argument[0];
return alarm_set(_a[0],_a[1]);
#define __function_execute_1512678626657_keyboard_set_map
var _a = argument[0];
return keyboard_set_map(_a[0],_a[1]);
#define __function_execute_1512678626657_keyboard_get_map
var _a = argument[0];
return keyboard_get_map(_a[0]);
#define __function_execute_1512678626657_keyboard_unset_map
var _a = argument[0];
return keyboard_unset_map();
#define __function_execute_1512678626657_keyboard_check
var _a = argument[0];
return keyboard_check(_a[0]);
#define __function_execute_1512678626657_keyboard_check_pressed
var _a = argument[0];
return keyboard_check_pressed(_a[0]);
#define __function_execute_1512678626657_keyboard_check_released
var _a = argument[0];
return keyboard_check_released(_a[0]);
#define __function_execute_1512678626657_keyboard_check_direct
var _a = argument[0];
return keyboard_check_direct(_a[0]);
#define __function_execute_1512678626657_keyboard_get_numlock
var _a = argument[0];
return keyboard_get_numlock();
#define __function_execute_1512678626657_keyboard_set_numlock
var _a = argument[0];
return keyboard_set_numlock(_a[0]);
#define __function_execute_1512678626657_keyboard_key_press
var _a = argument[0];
return keyboard_key_press(_a[0]);
#define __function_execute_1512678626657_keyboard_key_release
var _a = argument[0];
return keyboard_key_release(_a[0]);
#define __function_execute_1512678626657_keyboard_clear
var _a = argument[0];
return keyboard_clear(_a[0]);
#define __function_execute_1512678626657_io_clear
var _a = argument[0];
return io_clear();
#define __function_execute_1512678626657_mouse_check_button
var _a = argument[0];
return mouse_check_button(_a[0]);
#define __function_execute_1512678626657_mouse_check_button_pressed
var _a = argument[0];
return mouse_check_button_pressed(_a[0]);
#define __function_execute_1512678626657_mouse_check_button_released
var _a = argument[0];
return mouse_check_button_released(_a[0]);
#define __function_execute_1512678626657_mouse_wheel_up
var _a = argument[0];
return mouse_wheel_up();
#define __function_execute_1512678626657_mouse_wheel_down
var _a = argument[0];
return mouse_wheel_down();
#define __function_execute_1512678626657_mouse_clear
var _a = argument[0];
return mouse_clear(_a[0]);
#define __function_execute_1512678626657_draw_self
var _a = argument[0];
return draw_self();
#define __function_execute_1512678626657_draw_sprite
var _a = argument[0];
return draw_sprite(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_sprite_pos
var _a = argument[0];
return draw_sprite_pos(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_sprite_ext
var _a = argument[0];
return draw_sprite_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_draw_sprite_stretched
var _a = argument[0];
return draw_sprite_stretched(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_sprite_stretched_ext
var _a = argument[0];
return draw_sprite_stretched_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_sprite_tiled
var _a = argument[0];
return draw_sprite_tiled(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_sprite_tiled_ext
var _a = argument[0];
return draw_sprite_tiled_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_sprite_part
var _a = argument[0];
return draw_sprite_part(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_sprite_part_ext
var _a = argument[0];
return draw_sprite_part_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11]);
#define __function_execute_1512678626657_draw_sprite_general
var _a = argument[0];
return draw_sprite_general(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15]);
#define __function_execute_1512678626657_draw_clear
var _a = argument[0];
return draw_clear(_a[0]);
#define __function_execute_1512678626657_draw_clear_alpha
var _a = argument[0];
return draw_clear_alpha(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_point
var _a = argument[0];
return draw_point(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_line
var _a = argument[0];
return draw_line(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_line_width
var _a = argument[0];
return draw_line_width(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_rectangle
var _a = argument[0];
return draw_rectangle(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_roundrect
var _a = argument[0];
return draw_roundrect(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_roundrect_ext
var _a = argument[0];
return draw_roundrect_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_triangle
var _a = argument[0];
return draw_triangle(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_circle
var _a = argument[0];
return draw_circle(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_ellipse
var _a = argument[0];
return draw_ellipse(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_set_circle_precision
var _a = argument[0];
return draw_set_circle_precision(_a[0]);
#define __function_execute_1512678626657_draw_arrow
var _a = argument[0];
return draw_arrow(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_button
var _a = argument[0];
return draw_button(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_path
var _a = argument[0];
return draw_path(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_healthbar
var _a = argument[0];
return draw_healthbar(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_getpixel
var _a = argument[0];
return draw_getpixel(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_getpixel_ext
var _a = argument[0];
return draw_getpixel_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_set_colour
var _a = argument[0];
return draw_set_colour(_a[0]);
#define __function_execute_1512678626657_draw_set_color
var _a = argument[0];
return draw_set_color(_a[0]);
#define __function_execute_1512678626657_draw_set_alpha
var _a = argument[0];
return draw_set_alpha(_a[0]);
#define __function_execute_1512678626657_draw_get_colour
var _a = argument[0];
return draw_get_colour();
#define __function_execute_1512678626657_draw_get_color
var _a = argument[0];
return draw_get_color();
#define __function_execute_1512678626657_draw_get_alpha
var _a = argument[0];
return draw_get_alpha();
#define __function_execute_1512678626657_merge_colour
var _a = argument[0];
return merge_colour(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_make_colour_rgb
var _a = argument[0];
return make_colour_rgb(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_make_colour_hsv
var _a = argument[0];
return make_colour_hsv(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_colour_get_red
var _a = argument[0];
return colour_get_red(_a[0]);
#define __function_execute_1512678626657_colour_get_green
var _a = argument[0];
return colour_get_green(_a[0]);
#define __function_execute_1512678626657_colour_get_blue
var _a = argument[0];
return colour_get_blue(_a[0]);
#define __function_execute_1512678626657_colour_get_hue
var _a = argument[0];
return colour_get_hue(_a[0]);
#define __function_execute_1512678626657_colour_get_saturation
var _a = argument[0];
return colour_get_saturation(_a[0]);
#define __function_execute_1512678626657_colour_get_value
var _a = argument[0];
return colour_get_value(_a[0]);
#define __function_execute_1512678626657_merge_color
var _a = argument[0];
return merge_color(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_make_color_rgb
var _a = argument[0];
return make_color_rgb(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_make_color_hsv
var _a = argument[0];
return make_color_hsv(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_color_get_red
var _a = argument[0];
return color_get_red(_a[0]);
#define __function_execute_1512678626657_color_get_green
var _a = argument[0];
return color_get_green(_a[0]);
#define __function_execute_1512678626657_color_get_blue
var _a = argument[0];
return color_get_blue(_a[0]);
#define __function_execute_1512678626657_color_get_hue
var _a = argument[0];
return color_get_hue(_a[0]);
#define __function_execute_1512678626657_color_get_saturation
var _a = argument[0];
return color_get_saturation(_a[0]);
#define __function_execute_1512678626657_color_get_value
var _a = argument[0];
return color_get_value(_a[0]);
#define __function_execute_1512678626657_screen_save
var _a = argument[0];
return screen_save(_a[0]);
#define __function_execute_1512678626657_screen_save_part
var _a = argument[0];
return screen_save_part(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_set_font
var _a = argument[0];
return draw_set_font(_a[0]);
#define __function_execute_1512678626657_draw_set_halign
var _a = argument[0];
return draw_set_halign(_a[0]);
#define __function_execute_1512678626657_draw_set_valign
var _a = argument[0];
return draw_set_valign(_a[0]);
#define __function_execute_1512678626657_draw_text
var _a = argument[0];
return draw_text(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_text_ext
var _a = argument[0];
return draw_text_ext(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_string_width
var _a = argument[0];
return string_width(_a[0]);
#define __function_execute_1512678626657_string_height
var _a = argument[0];
return string_height(_a[0]);
#define __function_execute_1512678626657_string_width_ext
var _a = argument[0];
return string_width_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_string_height_ext
var _a = argument[0];
return string_height_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_text_transformed
var _a = argument[0];
return draw_text_transformed(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_text_ext_transformed
var _a = argument[0];
return draw_text_ext_transformed(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_text_colour
var _a = argument[0];
return draw_text_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_text_ext_colour
var _a = argument[0];
return draw_text_ext_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_draw_text_transformed_colour
var _a = argument[0];
return draw_text_transformed_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_text_ext_transformed_colour
var _a = argument[0];
return draw_text_ext_transformed_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12]);
#define __function_execute_1512678626657_draw_text_color
var _a = argument[0];
return draw_text_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_text_ext_color
var _a = argument[0];
return draw_text_ext_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_draw_text_transformed_color
var _a = argument[0];
return draw_text_transformed_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_text_ext_transformed_color
var _a = argument[0];
return draw_text_ext_transformed_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12]);
#define __function_execute_1512678626657_draw_point_colour
var _a = argument[0];
return draw_point_colour(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_line_colour
var _a = argument[0];
return draw_line_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_line_width_colour
var _a = argument[0];
return draw_line_width_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_rectangle_colour
var _a = argument[0];
return draw_rectangle_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_draw_roundrect_colour
var _a = argument[0];
return draw_roundrect_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_roundrect_colour_ext
var _a = argument[0];
return draw_roundrect_colour_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_draw_triangle_colour
var _a = argument[0];
return draw_triangle_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_draw_circle_colour
var _a = argument[0];
return draw_circle_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_ellipse_colour
var _a = argument[0];
return draw_ellipse_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_point_color
var _a = argument[0];
return draw_point_color(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_line_color
var _a = argument[0];
return draw_line_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_line_width_color
var _a = argument[0];
return draw_line_width_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_rectangle_color
var _a = argument[0];
return draw_rectangle_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_draw_roundrect_color
var _a = argument[0];
return draw_roundrect_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_roundrect_color_ext
var _a = argument[0];
return draw_roundrect_color_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_draw_triangle_color
var _a = argument[0];
return draw_triangle_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_draw_circle_color
var _a = argument[0];
return draw_circle_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_ellipse_color
var _a = argument[0];
return draw_ellipse_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_primitive_begin
var _a = argument[0];
return draw_primitive_begin(_a[0]);
#define __function_execute_1512678626657_draw_vertex
var _a = argument[0];
return draw_vertex(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_vertex_colour
var _a = argument[0];
return draw_vertex_colour(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_vertex_color
var _a = argument[0];
return draw_vertex_color(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_primitive_end
var _a = argument[0];
return draw_primitive_end();
#define __function_execute_1512678626657_sprite_get_uvs
var _a = argument[0];
return sprite_get_uvs(_a[0],_a[1]);
#define __function_execute_1512678626657_font_get_uvs
var _a = argument[0];
return font_get_uvs(_a[0]);
#define __function_execute_1512678626657_sprite_get_texture
var _a = argument[0];
return sprite_get_texture(_a[0],_a[1]);
#define __function_execute_1512678626657_font_get_texture
var _a = argument[0];
return font_get_texture(_a[0]);
#define __function_execute_1512678626657_texture_get_width
var _a = argument[0];
return texture_get_width(_a[0]);
#define __function_execute_1512678626657_texture_get_height
var _a = argument[0];
return texture_get_height(_a[0]);
#define __function_execute_1512678626657_texture_get_uvs
var _a = argument[0];
return texture_get_uvs(_a[0]);
#define __function_execute_1512678626657_draw_primitive_begin_texture
var _a = argument[0];
return draw_primitive_begin_texture(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_vertex_texture
var _a = argument[0];
return draw_vertex_texture(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_draw_vertex_texture_colour
var _a = argument[0];
return draw_vertex_texture_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_vertex_texture_color
var _a = argument[0];
return draw_vertex_texture_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_texture_global_scale
var _a = argument[0];
return texture_global_scale(_a[0]);
#define __function_execute_1512678626657_surface_create
var _a = argument[0];
return surface_create(_a[0],_a[1]);
#define __function_execute_1512678626657_surface_create_ext
var _a = argument[0];
return surface_create_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_surface_resize
var _a = argument[0];
return surface_resize(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_surface_free
var _a = argument[0];
return surface_free(_a[0]);
#define __function_execute_1512678626657_surface_exists
var _a = argument[0];
return surface_exists(_a[0]);
#define __function_execute_1512678626657_surface_get_width
var _a = argument[0];
return surface_get_width(_a[0]);
#define __function_execute_1512678626657_surface_get_height
var _a = argument[0];
return surface_get_height(_a[0]);
#define __function_execute_1512678626657_surface_get_texture
var _a = argument[0];
return surface_get_texture(_a[0]);
#define __function_execute_1512678626657_surface_set_target
var _a = argument[0];
return surface_set_target(_a[0]);
#define __function_execute_1512678626657_surface_set_target_ext
var _a = argument[0];
return surface_set_target_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_surface_reset_target
var _a = argument[0];
return surface_reset_target();
#define __function_execute_1512678626657_surface_depth_disable
var _a = argument[0];
return surface_depth_disable(_a[0]);
#define __function_execute_1512678626657_surface_get_depth_disable
var _a = argument[0];
return surface_get_depth_disable();
#define __function_execute_1512678626657_draw_surface
var _a = argument[0];
return draw_surface(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_surface_stretched
var _a = argument[0];
return draw_surface_stretched(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_surface_tiled
var _a = argument[0];
return draw_surface_tiled(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_surface_part
var _a = argument[0];
return draw_surface_part(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_surface_ext
var _a = argument[0];
return draw_surface_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_draw_surface_stretched_ext
var _a = argument[0];
return draw_surface_stretched_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_surface_tiled_ext
var _a = argument[0];
return draw_surface_tiled_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_draw_surface_part_ext
var _a = argument[0];
return draw_surface_part_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_surface_general
var _a = argument[0];
return draw_surface_general(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14]);
#define __function_execute_1512678626657_surface_getpixel
var _a = argument[0];
return surface_getpixel(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_surface_getpixel_ext
var _a = argument[0];
return surface_getpixel_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_surface_save
var _a = argument[0];
return surface_save(_a[0],_a[1]);
#define __function_execute_1512678626657_surface_save_part
var _a = argument[0];
return surface_save_part(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_surface_copy
var _a = argument[0];
return surface_copy(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_surface_copy_part
var _a = argument[0];
return surface_copy_part(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_application_surface_draw_enable
var _a = argument[0];
return application_surface_draw_enable(_a[0]);
#define __function_execute_1512678626657_application_get_position
var _a = argument[0];
return application_get_position();
#define __function_execute_1512678626657_application_surface_enable
var _a = argument[0];
return application_surface_enable(_a[0]);
#define __function_execute_1512678626657_application_surface_is_enabled
var _a = argument[0];
return application_surface_is_enabled();
#define __function_execute_1512678626657_display_get_width
var _a = argument[0];
return display_get_width();
#define __function_execute_1512678626657_display_get_height
var _a = argument[0];
return display_get_height();
#define __function_execute_1512678626657_display_get_orientation
var _a = argument[0];
return display_get_orientation();
#define __function_execute_1512678626657_display_get_gui_width
var _a = argument[0];
return display_get_gui_width();
#define __function_execute_1512678626657_display_get_gui_height
var _a = argument[0];
return display_get_gui_height();
#define __function_execute_1512678626657_display_reset
var _a = argument[0];
return display_reset(_a[0],_a[1]);
#define __function_execute_1512678626657_display_mouse_get_x
var _a = argument[0];
return display_mouse_get_x();
#define __function_execute_1512678626657_display_mouse_get_y
var _a = argument[0];
return display_mouse_get_y();
#define __function_execute_1512678626657_display_mouse_set
var _a = argument[0];
return display_mouse_set(_a[0],_a[1]);
#define __function_execute_1512678626657_window_set_fullscreen
var _a = argument[0];
return window_set_fullscreen(_a[0]);
#define __function_execute_1512678626657_window_get_fullscreen
var _a = argument[0];
return window_get_fullscreen();
#define __function_execute_1512678626657_window_set_caption
var _a = argument[0];
return window_set_caption(_a[0]);
#define __function_execute_1512678626657_window_set_min_width
var _a = argument[0];
return window_set_min_width(_a[0]);
#define __function_execute_1512678626657_window_set_max_width
var _a = argument[0];
return window_set_max_width(_a[0]);
#define __function_execute_1512678626657_window_set_min_height
var _a = argument[0];
return window_set_min_height(_a[0]);
#define __function_execute_1512678626657_window_set_max_height
var _a = argument[0];
return window_set_max_height(_a[0]);
#define __function_execute_1512678626657_window_get_visible_rects
var _a = argument[0];
return window_get_visible_rects(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_window_get_caption
var _a = argument[0];
return window_get_caption();
#define __function_execute_1512678626657_window_set_cursor
var _a = argument[0];
return window_set_cursor(_a[0]);
#define __function_execute_1512678626657_window_get_cursor
var _a = argument[0];
return window_get_cursor();
#define __function_execute_1512678626657_window_set_colour
var _a = argument[0];
return window_set_colour(_a[0]);
#define __function_execute_1512678626657_window_get_colour
var _a = argument[0];
return window_get_colour();
#define __function_execute_1512678626657_window_set_color
var _a = argument[0];
return window_set_color(_a[0]);
#define __function_execute_1512678626657_window_get_color
var _a = argument[0];
return window_get_color();
#define __function_execute_1512678626657_window_set_position
var _a = argument[0];
return window_set_position(_a[0],_a[1]);
#define __function_execute_1512678626657_window_set_size
var _a = argument[0];
return window_set_size(_a[0],_a[1]);
#define __function_execute_1512678626657_window_set_rectangle
var _a = argument[0];
return window_set_rectangle(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_window_center
var _a = argument[0];
return window_center();
#define __function_execute_1512678626657_window_get_x
var _a = argument[0];
return window_get_x();
#define __function_execute_1512678626657_window_get_y
var _a = argument[0];
return window_get_y();
#define __function_execute_1512678626657_window_get_width
var _a = argument[0];
return window_get_width();
#define __function_execute_1512678626657_window_get_height
var _a = argument[0];
return window_get_height();
#define __function_execute_1512678626657_window_mouse_get_x
var _a = argument[0];
return window_mouse_get_x();
#define __function_execute_1512678626657_window_mouse_get_y
var _a = argument[0];
return window_mouse_get_y();
#define __function_execute_1512678626657_window_mouse_set
var _a = argument[0];
return window_mouse_set(_a[0],_a[1]);
#define __function_execute_1512678626657_window_view_mouse_get_x
var _a = argument[0];
return window_view_mouse_get_x(_a[0]);
#define __function_execute_1512678626657_window_view_mouse_get_y
var _a = argument[0];
return window_view_mouse_get_y(_a[0]);
#define __function_execute_1512678626657_window_views_mouse_get_x
var _a = argument[0];
return window_views_mouse_get_x();
#define __function_execute_1512678626657_window_views_mouse_get_y
var _a = argument[0];
return window_views_mouse_get_y();
#define __function_execute_1512678626657_audio_listener_position
var _a = argument[0];
return audio_listener_position(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_listener_velocity
var _a = argument[0];
return audio_listener_velocity(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_listener_orientation
var _a = argument[0];
return audio_listener_orientation(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_audio_emitter_position
var _a = argument[0];
return audio_emitter_position(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_emitter_create
var _a = argument[0];
return audio_emitter_create();
#define __function_execute_1512678626657_audio_emitter_free
var _a = argument[0];
return audio_emitter_free(_a[0]);
#define __function_execute_1512678626657_audio_emitter_exists
var _a = argument[0];
return audio_emitter_exists(_a[0]);
#define __function_execute_1512678626657_audio_emitter_pitch
var _a = argument[0];
return audio_emitter_pitch(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_emitter_velocity
var _a = argument[0];
return audio_emitter_velocity(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_emitter_falloff
var _a = argument[0];
return audio_emitter_falloff(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_emitter_gain
var _a = argument[0];
return audio_emitter_gain(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_play_sound
var _a = argument[0];
return audio_play_sound(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_play_sound_on
var _a = argument[0];
return audio_play_sound_on(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_play_sound_at
var _a = argument[0];
return audio_play_sound_at(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_audio_stop_sound
var _a = argument[0];
return audio_stop_sound(_a[0]);
#define __function_execute_1512678626657_audio_resume_music
var _a = argument[0];
return audio_resume_music();
#define __function_execute_1512678626657_audio_music_is_playing
var _a = argument[0];
return audio_music_is_playing();
#define __function_execute_1512678626657_audio_resume_sound
var _a = argument[0];
return audio_resume_sound(_a[0]);
#define __function_execute_1512678626657_audio_pause_sound
var _a = argument[0];
return audio_pause_sound(_a[0]);
#define __function_execute_1512678626657_audio_pause_music
var _a = argument[0];
return audio_pause_music();
#define __function_execute_1512678626657_audio_channel_num
var _a = argument[0];
return audio_channel_num(_a[0]);
#define __function_execute_1512678626657_audio_sound_length
var _a = argument[0];
return audio_sound_length(_a[0]);
#define __function_execute_1512678626657_audio_get_type
var _a = argument[0];
return audio_get_type(_a[0]);
#define __function_execute_1512678626657_audio_falloff_set_model
var _a = argument[0];
return audio_falloff_set_model(_a[0]);
#define __function_execute_1512678626657_audio_play_music
var _a = argument[0];
return audio_play_music(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_stop_music
var _a = argument[0];
return audio_stop_music();
#define __function_execute_1512678626657_audio_master_gain
var _a = argument[0];
return audio_master_gain(_a[0]);
#define __function_execute_1512678626657_audio_music_gain
var _a = argument[0];
return audio_music_gain(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_sound_gain
var _a = argument[0];
return audio_sound_gain(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_sound_pitch
var _a = argument[0];
return audio_sound_pitch(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_stop_all
var _a = argument[0];
return audio_stop_all();
#define __function_execute_1512678626657_audio_resume_all
var _a = argument[0];
return audio_resume_all();
#define __function_execute_1512678626657_audio_pause_all
var _a = argument[0];
return audio_pause_all();
#define __function_execute_1512678626657_audio_is_playing
var _a = argument[0];
return audio_is_playing(_a[0]);
#define __function_execute_1512678626657_audio_is_paused
var _a = argument[0];
return audio_is_paused(_a[0]);
#define __function_execute_1512678626657_audio_exists
var _a = argument[0];
return audio_exists(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_gain
var _a = argument[0];
return audio_emitter_get_gain(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_pitch
var _a = argument[0];
return audio_emitter_get_pitch(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_x
var _a = argument[0];
return audio_emitter_get_x(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_y
var _a = argument[0];
return audio_emitter_get_y(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_z
var _a = argument[0];
return audio_emitter_get_z(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_vx
var _a = argument[0];
return audio_emitter_get_vx(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_vy
var _a = argument[0];
return audio_emitter_get_vy(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_vz
var _a = argument[0];
return audio_emitter_get_vz(_a[0]);
#define __function_execute_1512678626657_audio_listener_set_position
var _a = argument[0];
return audio_listener_set_position(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_listener_set_velocity
var _a = argument[0];
return audio_listener_set_velocity(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_listener_set_orientation
var _a = argument[0];
return audio_listener_set_orientation(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_audio_listener_get_data
var _a = argument[0];
return audio_listener_get_data(_a[0]);
#define __function_execute_1512678626657_audio_set_master_gain
var _a = argument[0];
return audio_set_master_gain(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_get_master_gain
var _a = argument[0];
return audio_get_master_gain(_a[0]);
#define __function_execute_1512678626657_audio_sound_get_gain
var _a = argument[0];
return audio_sound_get_gain(_a[0]);
#define __function_execute_1512678626657_audio_sound_get_pitch
var _a = argument[0];
return audio_sound_get_pitch(_a[0]);
#define __function_execute_1512678626657_audio_get_name
var _a = argument[0];
return audio_get_name(_a[0]);
#define __function_execute_1512678626657_audio_sound_set_track_position
var _a = argument[0];
return audio_sound_set_track_position(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_sound_get_track_position
var _a = argument[0];
return audio_sound_get_track_position(_a[0]);
#define __function_execute_1512678626657_audio_create_stream
var _a = argument[0];
return audio_create_stream(_a[0]);
#define __function_execute_1512678626657_audio_destroy_stream
var _a = argument[0];
return audio_destroy_stream(_a[0]);
#define __function_execute_1512678626657_audio_create_sync_group
var _a = argument[0];
return audio_create_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_destroy_sync_group
var _a = argument[0];
return audio_destroy_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_play_in_sync_group
var _a = argument[0];
return audio_play_in_sync_group(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_start_sync_group
var _a = argument[0];
return audio_start_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_stop_sync_group
var _a = argument[0];
return audio_stop_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_pause_sync_group
var _a = argument[0];
return audio_pause_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_resume_sync_group
var _a = argument[0];
return audio_resume_sync_group(_a[0]);
#define __function_execute_1512678626657_audio_sync_group_get_track_pos
var _a = argument[0];
return audio_sync_group_get_track_pos(_a[0]);
#define __function_execute_1512678626657_audio_sync_group_debug
var _a = argument[0];
return audio_sync_group_debug(_a[0]);
#define __function_execute_1512678626657_audio_sync_group_is_playing
var _a = argument[0];
return audio_sync_group_is_playing(_a[0]);
#define __function_execute_1512678626657_audio_debug
var _a = argument[0];
return audio_debug(_a[0]);
#define __function_execute_1512678626657_audio_group_load
var _a = argument[0];
return audio_group_load(_a[0]);
#define __function_execute_1512678626657_audio_group_unload
var _a = argument[0];
return audio_group_unload(_a[0]);
#define __function_execute_1512678626657_audio_group_is_loaded
var _a = argument[0];
return audio_group_is_loaded(_a[0]);
#define __function_execute_1512678626657_audio_group_load_progress
var _a = argument[0];
return audio_group_load_progress(_a[0]);
#define __function_execute_1512678626657_audio_group_name
var _a = argument[0];
return audio_group_name(_a[0]);
#define __function_execute_1512678626657_audio_group_stop_all
var _a = argument[0];
return audio_group_stop_all(_a[0]);
#define __function_execute_1512678626657_audio_group_set_gain
var _a = argument[0];
return audio_group_set_gain(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_create_buffer_sound
var _a = argument[0];
return audio_create_buffer_sound(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_audio_free_buffer_sound
var _a = argument[0];
return audio_free_buffer_sound(_a[0]);
#define __function_execute_1512678626657_audio_create_play_queue
var _a = argument[0];
return audio_create_play_queue(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_audio_free_play_queue
var _a = argument[0];
return audio_free_play_queue(_a[0]);
#define __function_execute_1512678626657_audio_queue_sound
var _a = argument[0];
return audio_queue_sound(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_audio_get_recorder_count
var _a = argument[0];
return audio_get_recorder_count();
#define __function_execute_1512678626657_audio_get_recorder_info
var _a = argument[0];
return audio_get_recorder_info(_a[0]);
#define __function_execute_1512678626657_audio_start_recording
var _a = argument[0];
return audio_start_recording(_a[0]);
#define __function_execute_1512678626657_audio_stop_recording
var _a = argument[0];
return audio_stop_recording(_a[0]);
#define __function_execute_1512678626657_audio_sound_get_listener_mask
var _a = argument[0];
return audio_sound_get_listener_mask(_a[0]);
#define __function_execute_1512678626657_audio_emitter_get_listener_mask
var _a = argument[0];
return audio_emitter_get_listener_mask(_a[0]);
#define __function_execute_1512678626657_audio_get_listener_mask
var _a = argument[0];
return audio_get_listener_mask();
#define __function_execute_1512678626657_audio_sound_set_listener_mask
var _a = argument[0];
return audio_sound_set_listener_mask(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_emitter_set_listener_mask
var _a = argument[0];
return audio_emitter_set_listener_mask(_a[0],_a[1]);
#define __function_execute_1512678626657_audio_set_listener_mask
var _a = argument[0];
return audio_set_listener_mask(_a[0]);
#define __function_execute_1512678626657_audio_get_listener_count
var _a = argument[0];
return audio_get_listener_count();
#define __function_execute_1512678626657_audio_get_listener_info
var _a = argument[0];
return audio_get_listener_info(_a[0]);
#define __function_execute_1512678626657_audio_system
var _a = argument[0];
return audio_system();
#define __function_execute_1512678626657_show_message
var _a = argument[0];
return show_message(_a[0]);
#define __function_execute_1512678626657_show_message_async
var _a = argument[0];
return show_message_async(_a[0]);
#define __function_execute_1512678626657_clickable_add
var _a = argument[0];
return clickable_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_clickable_add_ext
var _a = argument[0];
return clickable_add_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_clickable_change
var _a = argument[0];
return clickable_change(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_clickable_change_ext
var _a = argument[0];
return clickable_change_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_clickable_delete
var _a = argument[0];
return clickable_delete(_a[0]);
#define __function_execute_1512678626657_clickable_exists
var _a = argument[0];
return clickable_exists(_a[0]);
#define __function_execute_1512678626657_clickable_set_style
var _a = argument[0];
return clickable_set_style(_a[0],_a[1]);
#define __function_execute_1512678626657_show_question
var _a = argument[0];
return show_question(_a[0]);
#define __function_execute_1512678626657_show_question_async
var _a = argument[0];
return show_question_async(_a[0]);
#define __function_execute_1512678626657_get_integer
var _a = argument[0];
return get_integer(_a[0],_a[1]);
#define __function_execute_1512678626657_get_string
var _a = argument[0];
return get_string(_a[0],_a[1]);
#define __function_execute_1512678626657_get_integer_async
var _a = argument[0];
return get_integer_async(_a[0],_a[1]);
#define __function_execute_1512678626657_get_string_async
var _a = argument[0];
return get_string_async(_a[0],_a[1]);
#define __function_execute_1512678626657_get_login_async
var _a = argument[0];
return get_login_async(_a[0],_a[1]);
#define __function_execute_1512678626657_get_open_filename
var _a = argument[0];
return get_open_filename(_a[0],_a[1]);
#define __function_execute_1512678626657_get_save_filename
var _a = argument[0];
return get_save_filename(_a[0],_a[1]);
#define __function_execute_1512678626657_get_open_filename_ext
var _a = argument[0];
return get_open_filename_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_get_save_filename_ext
var _a = argument[0];
return get_save_filename_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_show_error
var _a = argument[0];
return show_error(_a[0],_a[1]);
#define __function_execute_1512678626657_highscore_clear
var _a = argument[0];
return highscore_clear();
#define __function_execute_1512678626657_highscore_add
var _a = argument[0];
return highscore_add(_a[0],_a[1]);
#define __function_execute_1512678626657_highscore_value
var _a = argument[0];
return highscore_value(_a[0]);
#define __function_execute_1512678626657_highscore_name
var _a = argument[0];
return highscore_name(_a[0]);
#define __function_execute_1512678626657_draw_highscore
var _a = argument[0];
return draw_highscore(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_sprite_exists
var _a = argument[0];
return sprite_exists(_a[0]);
#define __function_execute_1512678626657_sprite_get_name
var _a = argument[0];
return sprite_get_name(_a[0]);
#define __function_execute_1512678626657_sprite_get_number
var _a = argument[0];
return sprite_get_number(_a[0]);
#define __function_execute_1512678626657_sprite_get_width
var _a = argument[0];
return sprite_get_width(_a[0]);
#define __function_execute_1512678626657_sprite_get_height
var _a = argument[0];
return sprite_get_height(_a[0]);
#define __function_execute_1512678626657_sprite_get_xoffset
var _a = argument[0];
return sprite_get_xoffset(_a[0]);
#define __function_execute_1512678626657_sprite_get_yoffset
var _a = argument[0];
return sprite_get_yoffset(_a[0]);
#define __function_execute_1512678626657_sprite_get_bbox_left
var _a = argument[0];
return sprite_get_bbox_left(_a[0]);
#define __function_execute_1512678626657_sprite_get_bbox_right
var _a = argument[0];
return sprite_get_bbox_right(_a[0]);
#define __function_execute_1512678626657_sprite_get_bbox_top
var _a = argument[0];
return sprite_get_bbox_top(_a[0]);
#define __function_execute_1512678626657_sprite_get_bbox_bottom
var _a = argument[0];
return sprite_get_bbox_bottom(_a[0]);
#define __function_execute_1512678626657_sprite_save
var _a = argument[0];
return sprite_save(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_sprite_save_strip
var _a = argument[0];
return sprite_save_strip(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_set_cache_size
var _a = argument[0];
return sprite_set_cache_size(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_set_cache_size_ext
var _a = argument[0];
return sprite_set_cache_size_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_sprite_get_tpe
var _a = argument[0];
return sprite_get_tpe(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_prefetch
var _a = argument[0];
return sprite_prefetch(_a[0]);
#define __function_execute_1512678626657_sprite_prefetch_multi
var _a = argument[0];
return sprite_prefetch_multi(_a[0]);
#define __function_execute_1512678626657_sprite_flush
var _a = argument[0];
return sprite_flush(_a[0]);
#define __function_execute_1512678626657_sprite_flush_multi
var _a = argument[0];
return sprite_flush_multi(_a[0]);
#define __function_execute_1512678626657_sprite_set_speed
var _a = argument[0];
return sprite_set_speed(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_sprite_get_speed_type
var _a = argument[0];
return sprite_get_speed_type(_a[0]);
#define __function_execute_1512678626657_sprite_get_speed
var _a = argument[0];
return sprite_get_speed(_a[0]);
#define __function_execute_1512678626657_font_exists
var _a = argument[0];
return font_exists(_a[0]);
#define __function_execute_1512678626657_font_get_name
var _a = argument[0];
return font_get_name(_a[0]);
#define __function_execute_1512678626657_font_get_fontname
var _a = argument[0];
return font_get_fontname(_a[0]);
#define __function_execute_1512678626657_font_get_bold
var _a = argument[0];
return font_get_bold(_a[0]);
#define __function_execute_1512678626657_font_get_italic
var _a = argument[0];
return font_get_italic(_a[0]);
#define __function_execute_1512678626657_font_get_first
var _a = argument[0];
return font_get_first(_a[0]);
#define __function_execute_1512678626657_font_get_last
var _a = argument[0];
return font_get_last(_a[0]);
#define __function_execute_1512678626657_font_get_size
var _a = argument[0];
return font_get_size(_a[0]);
#define __function_execute_1512678626657_font_set_cache_size
var _a = argument[0];
return font_set_cache_size(_a[0],_a[1]);
#define __function_execute_1512678626657_path_exists
var _a = argument[0];
return path_exists(_a[0]);
#define __function_execute_1512678626657_path_get_name
var _a = argument[0];
return path_get_name(_a[0]);
#define __function_execute_1512678626657_path_get_length
var _a = argument[0];
return path_get_length(_a[0]);
#define __function_execute_1512678626657_path_get_time
var _a = argument[0];
return path_get_time(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_kind
var _a = argument[0];
return path_get_kind(_a[0]);
#define __function_execute_1512678626657_path_get_closed
var _a = argument[0];
return path_get_closed(_a[0]);
#define __function_execute_1512678626657_path_get_precision
var _a = argument[0];
return path_get_precision(_a[0]);
#define __function_execute_1512678626657_path_get_number
var _a = argument[0];
return path_get_number(_a[0]);
#define __function_execute_1512678626657_path_get_point_x
var _a = argument[0];
return path_get_point_x(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_point_y
var _a = argument[0];
return path_get_point_y(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_point_speed
var _a = argument[0];
return path_get_point_speed(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_x
var _a = argument[0];
return path_get_x(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_y
var _a = argument[0];
return path_get_y(_a[0],_a[1]);
#define __function_execute_1512678626657_path_get_speed
var _a = argument[0];
return path_get_speed(_a[0],_a[1]);
#define __function_execute_1512678626657_script_exists
var _a = argument[0];
return script_exists(_a[0]);
#define __function_execute_1512678626657_script_get_name
var _a = argument[0];
return script_get_name(_a[0]);
#define __function_execute_1512678626657_timeline_add
var _a = argument[0];
return timeline_add();
#define __function_execute_1512678626657_timeline_delete
var _a = argument[0];
return timeline_delete(_a[0]);
#define __function_execute_1512678626657_timeline_clear
var _a = argument[0];
return timeline_clear(_a[0]);
#define __function_execute_1512678626657_timeline_exists
var _a = argument[0];
return timeline_exists(_a[0]);
#define __function_execute_1512678626657_timeline_get_name
var _a = argument[0];
return timeline_get_name(_a[0]);
#define __function_execute_1512678626657_timeline_moment_clear
var _a = argument[0];
return timeline_moment_clear(_a[0],_a[1]);
#define __function_execute_1512678626657_timeline_moment_add_script
var _a = argument[0];
return timeline_moment_add_script(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_timeline_size
var _a = argument[0];
return timeline_size(_a[0]);
#define __function_execute_1512678626657_timeline_max_moment
var _a = argument[0];
return timeline_max_moment(_a[0]);
#define __function_execute_1512678626657_object_exists
var _a = argument[0];
return object_exists(_a[0]);
#define __function_execute_1512678626657_object_get_name
var _a = argument[0];
return object_get_name(_a[0]);
#define __function_execute_1512678626657_object_get_sprite
var _a = argument[0];
return object_get_sprite(_a[0]);
#define __function_execute_1512678626657_object_get_solid
var _a = argument[0];
return object_get_solid(_a[0]);
#define __function_execute_1512678626657_object_get_visible
var _a = argument[0];
return object_get_visible(_a[0]);
#define __function_execute_1512678626657_object_get_persistent
var _a = argument[0];
return object_get_persistent(_a[0]);
#define __function_execute_1512678626657_object_get_mask
var _a = argument[0];
return object_get_mask(_a[0]);
#define __function_execute_1512678626657_object_get_parent
var _a = argument[0];
return object_get_parent(_a[0]);
#define __function_execute_1512678626657_object_get_physics
var _a = argument[0];
return object_get_physics(_a[0]);
#define __function_execute_1512678626657_object_is_ancestor
var _a = argument[0];
return object_is_ancestor(_a[0],_a[1]);
#define __function_execute_1512678626657_room_exists
var _a = argument[0];
return room_exists(_a[0]);
#define __function_execute_1512678626657_room_get_name
var _a = argument[0];
return room_get_name(_a[0]);
#define __function_execute_1512678626657_sprite_set_offset
var _a = argument[0];
return sprite_set_offset(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_sprite_duplicate
var _a = argument[0];
return sprite_duplicate(_a[0]);
#define __function_execute_1512678626657_sprite_assign
var _a = argument[0];
return sprite_assign(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_merge
var _a = argument[0];
return sprite_merge(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_add
var _a = argument[0];
return sprite_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_sprite_replace
var _a = argument[0];
return sprite_replace(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_sprite_create_from_surface
var _a = argument[0];
return sprite_create_from_surface(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_sprite_add_from_surface
var _a = argument[0];
return sprite_add_from_surface(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_sprite_delete
var _a = argument[0];
return sprite_delete(_a[0]);
#define __function_execute_1512678626657_sprite_set_alpha_from_sprite
var _a = argument[0];
return sprite_set_alpha_from_sprite(_a[0],_a[1]);
#define __function_execute_1512678626657_sprite_collision_mask
var _a = argument[0];
return sprite_collision_mask(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_font_add_enable_aa
var _a = argument[0];
return font_add_enable_aa(_a[0]);
#define __function_execute_1512678626657_font_add_get_enable_aa
var _a = argument[0];
return font_add_get_enable_aa();
#define __function_execute_1512678626657_font_add
var _a = argument[0];
return font_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_font_add_sprite
var _a = argument[0];
return font_add_sprite(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_font_add_sprite_ext
var _a = argument[0];
return font_add_sprite_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_font_replace_sprite
var _a = argument[0];
return font_replace_sprite(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_font_replace_sprite_ext
var _a = argument[0];
return font_replace_sprite_ext(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_font_delete
var _a = argument[0];
return font_delete(_a[0]);
#define __function_execute_1512678626657_path_set_kind
var _a = argument[0];
return path_set_kind(_a[0],_a[1]);
#define __function_execute_1512678626657_path_set_closed
var _a = argument[0];
return path_set_closed(_a[0],_a[1]);
#define __function_execute_1512678626657_path_set_precision
var _a = argument[0];
return path_set_precision(_a[0],_a[1]);
#define __function_execute_1512678626657_path_add
var _a = argument[0];
return path_add();
#define __function_execute_1512678626657_path_assign
var _a = argument[0];
return path_assign(_a[0],_a[1]);
#define __function_execute_1512678626657_path_duplicate
var _a = argument[0];
return path_duplicate(_a[0]);
#define __function_execute_1512678626657_path_append
var _a = argument[0];
return path_append(_a[0],_a[1]);
#define __function_execute_1512678626657_path_delete
var _a = argument[0];
return path_delete(_a[0]);
#define __function_execute_1512678626657_path_add_point
var _a = argument[0];
return path_add_point(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_path_insert_point
var _a = argument[0];
return path_insert_point(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_path_change_point
var _a = argument[0];
return path_change_point(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_path_delete_point
var _a = argument[0];
return path_delete_point(_a[0],_a[1]);
#define __function_execute_1512678626657_path_clear_points
var _a = argument[0];
return path_clear_points(_a[0]);
#define __function_execute_1512678626657_path_reverse
var _a = argument[0];
return path_reverse(_a[0]);
#define __function_execute_1512678626657_path_mirror
var _a = argument[0];
return path_mirror(_a[0]);
#define __function_execute_1512678626657_path_flip
var _a = argument[0];
return path_flip(_a[0]);
#define __function_execute_1512678626657_path_rotate
var _a = argument[0];
return path_rotate(_a[0],_a[1]);
#define __function_execute_1512678626657_path_rescale
var _a = argument[0];
return path_rescale(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_path_shift
var _a = argument[0];
return path_shift(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_script_execute
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return script_execute()
    case 1: return script_execute(_a[0])
    case 2: return script_execute(_a[0],_a[1])
    case 3: return script_execute(_a[0],_a[1],_a[2])
    case 4: return script_execute(_a[0],_a[1],_a[2],_a[3])
    case 5: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return script_execute(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_object_set_sprite
var _a = argument[0];
return object_set_sprite(_a[0],_a[1]);
#define __function_execute_1512678626657_object_set_solid
var _a = argument[0];
return object_set_solid(_a[0],_a[1]);
#define __function_execute_1512678626657_object_set_visible
var _a = argument[0];
return object_set_visible(_a[0],_a[1]);
#define __function_execute_1512678626657_object_set_persistent
var _a = argument[0];
return object_set_persistent(_a[0],_a[1]);
#define __function_execute_1512678626657_object_set_mask
var _a = argument[0];
return object_set_mask(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_width
var _a = argument[0];
return room_set_width(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_height
var _a = argument[0];
return room_set_height(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_persistent
var _a = argument[0];
return room_set_persistent(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_background_colour
var _a = argument[0];
return room_set_background_colour(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_room_set_background_color
var _a = argument[0];
return room_set_background_color(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_room_set_viewport
var _a = argument[0];
return room_set_viewport(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_room_get_viewport
var _a = argument[0];
return room_get_viewport(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_view_enabled
var _a = argument[0];
return room_set_view_enabled(_a[0],_a[1]);
#define __function_execute_1512678626657_room_add
var _a = argument[0];
return room_add();
#define __function_execute_1512678626657_room_duplicate
var _a = argument[0];
return room_duplicate(_a[0]);
#define __function_execute_1512678626657_room_assign
var _a = argument[0];
return room_assign(_a[0],_a[1]);
#define __function_execute_1512678626657_room_instance_add
var _a = argument[0];
return room_instance_add(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_room_instance_clear
var _a = argument[0];
return room_instance_clear(_a[0]);
#define __function_execute_1512678626657_room_get_camera
var _a = argument[0];
return room_get_camera(_a[0],_a[1]);
#define __function_execute_1512678626657_room_set_camera
var _a = argument[0];
return room_set_camera(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_asset_get_index
var _a = argument[0];
return asset_get_index(_a[0]);
#define __function_execute_1512678626657_asset_get_type
var _a = argument[0];
return asset_get_type(_a[0]);
#define __function_execute_1512678626657_file_text_open_from_string
var _a = argument[0];
return file_text_open_from_string(_a[0]);
#define __function_execute_1512678626657_file_text_open_read
var _a = argument[0];
return file_text_open_read(_a[0]);
#define __function_execute_1512678626657_file_text_open_write
var _a = argument[0];
return file_text_open_write(_a[0]);
#define __function_execute_1512678626657_file_text_open_append
var _a = argument[0];
return file_text_open_append(_a[0]);
#define __function_execute_1512678626657_file_text_close
var _a = argument[0];
return file_text_close(_a[0]);
#define __function_execute_1512678626657_file_text_write_string
var _a = argument[0];
return file_text_write_string(_a[0],_a[1]);
#define __function_execute_1512678626657_file_text_write_real
var _a = argument[0];
return file_text_write_real(_a[0],_a[1]);
#define __function_execute_1512678626657_file_text_writeln
var _a = argument[0];
return file_text_writeln(_a[0]);
#define __function_execute_1512678626657_file_text_read_string
var _a = argument[0];
return file_text_read_string(_a[0]);
#define __function_execute_1512678626657_file_text_read_real
var _a = argument[0];
return file_text_read_real(_a[0]);
#define __function_execute_1512678626657_file_text_readln
var _a = argument[0];
return file_text_readln(_a[0]);
#define __function_execute_1512678626657_file_text_eof
var _a = argument[0];
return file_text_eof(_a[0]);
#define __function_execute_1512678626657_file_text_eoln
var _a = argument[0];
return file_text_eoln(_a[0]);
#define __function_execute_1512678626657_file_exists
var _a = argument[0];
return file_exists(_a[0]);
#define __function_execute_1512678626657_file_delete
var _a = argument[0];
return file_delete(_a[0]);
#define __function_execute_1512678626657_file_rename
var _a = argument[0];
return file_rename(_a[0],_a[1]);
#define __function_execute_1512678626657_file_copy
var _a = argument[0];
return file_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_directory_exists
var _a = argument[0];
return directory_exists(_a[0]);
#define __function_execute_1512678626657_directory_create
var _a = argument[0];
return directory_create(_a[0]);
#define __function_execute_1512678626657_directory_destroy
var _a = argument[0];
return directory_destroy(_a[0]);
#define __function_execute_1512678626657_file_find_first
var _a = argument[0];
return file_find_first(_a[0],_a[1]);
#define __function_execute_1512678626657_file_find_next
var _a = argument[0];
return file_find_next();
#define __function_execute_1512678626657_file_find_close
var _a = argument[0];
return file_find_close();
#define __function_execute_1512678626657_file_attributes
var _a = argument[0];
return file_attributes(_a[0],_a[1]);
#define __function_execute_1512678626657_filename_name
var _a = argument[0];
return filename_name(_a[0]);
#define __function_execute_1512678626657_filename_path
var _a = argument[0];
return filename_path(_a[0]);
#define __function_execute_1512678626657_filename_dir
var _a = argument[0];
return filename_dir(_a[0]);
#define __function_execute_1512678626657_filename_drive
var _a = argument[0];
return filename_drive(_a[0]);
#define __function_execute_1512678626657_filename_ext
var _a = argument[0];
return filename_ext(_a[0]);
#define __function_execute_1512678626657_filename_change_ext
var _a = argument[0];
return filename_change_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_file_bin_open
var _a = argument[0];
return file_bin_open(_a[0],_a[1]);
#define __function_execute_1512678626657_file_bin_rewrite
var _a = argument[0];
return file_bin_rewrite(_a[0]);
#define __function_execute_1512678626657_file_bin_close
var _a = argument[0];
return file_bin_close(_a[0]);
#define __function_execute_1512678626657_file_bin_position
var _a = argument[0];
return file_bin_position(_a[0]);
#define __function_execute_1512678626657_file_bin_size
var _a = argument[0];
return file_bin_size(_a[0]);
#define __function_execute_1512678626657_file_bin_seek
var _a = argument[0];
return file_bin_seek(_a[0],_a[1]);
#define __function_execute_1512678626657_file_bin_write_byte
var _a = argument[0];
return file_bin_write_byte(_a[0],_a[1]);
#define __function_execute_1512678626657_file_bin_read_byte
var _a = argument[0];
return file_bin_read_byte(_a[0]);
#define __function_execute_1512678626657_parameter_count
var _a = argument[0];
return parameter_count();
#define __function_execute_1512678626657_parameter_string
var _a = argument[0];
return parameter_string(_a[0]);
#define __function_execute_1512678626657_environment_get_variable
var _a = argument[0];
return environment_get_variable(_a[0]);
#define __function_execute_1512678626657_ini_open_from_string
var _a = argument[0];
return ini_open_from_string(_a[0]);
#define __function_execute_1512678626657_ini_open
var _a = argument[0];
return ini_open(_a[0]);
#define __function_execute_1512678626657_ini_close
var _a = argument[0];
return ini_close();
#define __function_execute_1512678626657_ini_read_string
var _a = argument[0];
return ini_read_string(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ini_read_real
var _a = argument[0];
return ini_read_real(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ini_write_string
var _a = argument[0];
return ini_write_string(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ini_write_real
var _a = argument[0];
return ini_write_real(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ini_key_exists
var _a = argument[0];
return ini_key_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_ini_section_exists
var _a = argument[0];
return ini_section_exists(_a[0]);
#define __function_execute_1512678626657_ini_key_delete
var _a = argument[0];
return ini_key_delete(_a[0],_a[1]);
#define __function_execute_1512678626657_ini_section_delete
var _a = argument[0];
return ini_section_delete(_a[0]);
#define __function_execute_1512678626657_ds_set_precision
var _a = argument[0];
return ds_set_precision(_a[0]);
#define __function_execute_1512678626657_ds_exists
var _a = argument[0];
return ds_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_stack_create
var _a = argument[0];
return ds_stack_create();
#define __function_execute_1512678626657_ds_stack_destroy
var _a = argument[0];
return ds_stack_destroy(_a[0]);
#define __function_execute_1512678626657_ds_stack_clear
var _a = argument[0];
return ds_stack_clear(_a[0]);
#define __function_execute_1512678626657_ds_stack_copy
var _a = argument[0];
return ds_stack_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_stack_size
var _a = argument[0];
return ds_stack_size(_a[0]);
#define __function_execute_1512678626657_ds_stack_empty
var _a = argument[0];
return ds_stack_empty(_a[0]);
#define __function_execute_1512678626657_ds_stack_push
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_stack_push()
    case 1: return ds_stack_push(_a[0])
    case 2: return ds_stack_push(_a[0],_a[1])
    case 3: return ds_stack_push(_a[0],_a[1],_a[2])
    case 4: return ds_stack_push(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_stack_pop
var _a = argument[0];
return ds_stack_pop(_a[0]);
#define __function_execute_1512678626657_ds_stack_top
var _a = argument[0];
return ds_stack_top(_a[0]);
#define __function_execute_1512678626657_ds_stack_write
var _a = argument[0];
return ds_stack_write(_a[0]);
#define __function_execute_1512678626657_ds_stack_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_stack_read()
    case 1: return ds_stack_read(_a[0])
    case 2: return ds_stack_read(_a[0],_a[1])
    case 3: return ds_stack_read(_a[0],_a[1],_a[2])
    case 4: return ds_stack_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_stack_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_queue_create
var _a = argument[0];
return ds_queue_create();
#define __function_execute_1512678626657_ds_queue_destroy
var _a = argument[0];
return ds_queue_destroy(_a[0]);
#define __function_execute_1512678626657_ds_queue_clear
var _a = argument[0];
return ds_queue_clear(_a[0]);
#define __function_execute_1512678626657_ds_queue_copy
var _a = argument[0];
return ds_queue_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_queue_size
var _a = argument[0];
return ds_queue_size(_a[0]);
#define __function_execute_1512678626657_ds_queue_empty
var _a = argument[0];
return ds_queue_empty(_a[0]);
#define __function_execute_1512678626657_ds_queue_enqueue
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_queue_enqueue()
    case 1: return ds_queue_enqueue(_a[0])
    case 2: return ds_queue_enqueue(_a[0],_a[1])
    case 3: return ds_queue_enqueue(_a[0],_a[1],_a[2])
    case 4: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_queue_enqueue(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_queue_dequeue
var _a = argument[0];
return ds_queue_dequeue(_a[0]);
#define __function_execute_1512678626657_ds_queue_head
var _a = argument[0];
return ds_queue_head(_a[0]);
#define __function_execute_1512678626657_ds_queue_tail
var _a = argument[0];
return ds_queue_tail(_a[0]);
#define __function_execute_1512678626657_ds_queue_write
var _a = argument[0];
return ds_queue_write(_a[0]);
#define __function_execute_1512678626657_ds_queue_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_queue_read()
    case 1: return ds_queue_read(_a[0])
    case 2: return ds_queue_read(_a[0],_a[1])
    case 3: return ds_queue_read(_a[0],_a[1],_a[2])
    case 4: return ds_queue_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_queue_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_list_create
var _a = argument[0];
return ds_list_create();
#define __function_execute_1512678626657_ds_list_destroy
var _a = argument[0];
return ds_list_destroy(_a[0]);
#define __function_execute_1512678626657_ds_list_clear
var _a = argument[0];
return ds_list_clear(_a[0]);
#define __function_execute_1512678626657_ds_list_copy
var _a = argument[0];
return ds_list_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_size
var _a = argument[0];
return ds_list_size(_a[0]);
#define __function_execute_1512678626657_ds_list_empty
var _a = argument[0];
return ds_list_empty(_a[0]);
#define __function_execute_1512678626657_ds_list_add
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_list_add()
    case 1: return ds_list_add(_a[0])
    case 2: return ds_list_add(_a[0],_a[1])
    case 3: return ds_list_add(_a[0],_a[1],_a[2])
    case 4: return ds_list_add(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_list_add(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_list_insert
var _a = argument[0];
return ds_list_insert(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_list_replace
var _a = argument[0];
return ds_list_replace(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_list_delete
var _a = argument[0];
return ds_list_delete(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_find_index
var _a = argument[0];
return ds_list_find_index(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_find_value
var _a = argument[0];
return ds_list_find_value(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_mark_as_list
var _a = argument[0];
return ds_list_mark_as_list(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_mark_as_map
var _a = argument[0];
return ds_list_mark_as_map(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_sort
var _a = argument[0];
return ds_list_sort(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_list_shuffle
var _a = argument[0];
return ds_list_shuffle(_a[0]);
#define __function_execute_1512678626657_ds_list_write
var _a = argument[0];
return ds_list_write(_a[0]);
#define __function_execute_1512678626657_ds_list_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_list_read()
    case 1: return ds_list_read(_a[0])
    case 2: return ds_list_read(_a[0],_a[1])
    case 3: return ds_list_read(_a[0],_a[1],_a[2])
    case 4: return ds_list_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_list_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_list_set
var _a = argument[0];
return ds_list_set(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_create
var _a = argument[0];
return ds_map_create();
#define __function_execute_1512678626657_ds_map_destroy
var _a = argument[0];
return ds_map_destroy(_a[0]);
#define __function_execute_1512678626657_ds_map_clear
var _a = argument[0];
return ds_map_clear(_a[0]);
#define __function_execute_1512678626657_ds_map_copy
var _a = argument[0];
return ds_map_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_size
var _a = argument[0];
return ds_map_size(_a[0]);
#define __function_execute_1512678626657_ds_map_empty
var _a = argument[0];
return ds_map_empty(_a[0]);
#define __function_execute_1512678626657_ds_map_add
var _a = argument[0];
return ds_map_add(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_add_list
var _a = argument[0];
return ds_map_add_list(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_add_map
var _a = argument[0];
return ds_map_add_map(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_replace
var _a = argument[0];
return ds_map_replace(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_replace_map
var _a = argument[0];
return ds_map_replace_map(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_replace_list
var _a = argument[0];
return ds_map_replace_list(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_map_delete
var _a = argument[0];
return ds_map_delete(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_exists
var _a = argument[0];
return ds_map_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_find_value
var _a = argument[0];
return ds_map_find_value(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_find_previous
var _a = argument[0];
return ds_map_find_previous(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_find_next
var _a = argument[0];
return ds_map_find_next(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_find_first
var _a = argument[0];
return ds_map_find_first(_a[0]);
#define __function_execute_1512678626657_ds_map_find_last
var _a = argument[0];
return ds_map_find_last(_a[0]);
#define __function_execute_1512678626657_ds_map_write
var _a = argument[0];
return ds_map_write(_a[0]);
#define __function_execute_1512678626657_ds_map_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_map_read()
    case 1: return ds_map_read(_a[0])
    case 2: return ds_map_read(_a[0],_a[1])
    case 3: return ds_map_read(_a[0],_a[1],_a[2])
    case 4: return ds_map_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_map_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_map_secure_save
var _a = argument[0];
return ds_map_secure_save(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_secure_load
var _a = argument[0];
return ds_map_secure_load(_a[0]);
#define __function_execute_1512678626657_ds_map_secure_load_buffer
var _a = argument[0];
return ds_map_secure_load_buffer(_a[0]);
#define __function_execute_1512678626657_ds_map_secure_save_buffer
var _a = argument[0];
return ds_map_secure_save_buffer(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_map_set
var _a = argument[0];
return ds_map_set(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_priority_create
var _a = argument[0];
return ds_priority_create();
#define __function_execute_1512678626657_ds_priority_destroy
var _a = argument[0];
return ds_priority_destroy(_a[0]);
#define __function_execute_1512678626657_ds_priority_clear
var _a = argument[0];
return ds_priority_clear(_a[0]);
#define __function_execute_1512678626657_ds_priority_copy
var _a = argument[0];
return ds_priority_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_priority_size
var _a = argument[0];
return ds_priority_size(_a[0]);
#define __function_execute_1512678626657_ds_priority_empty
var _a = argument[0];
return ds_priority_empty(_a[0]);
#define __function_execute_1512678626657_ds_priority_add
var _a = argument[0];
return ds_priority_add(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_priority_change_priority
var _a = argument[0];
return ds_priority_change_priority(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_priority_find_priority
var _a = argument[0];
return ds_priority_find_priority(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_priority_delete_value
var _a = argument[0];
return ds_priority_delete_value(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_priority_delete_min
var _a = argument[0];
return ds_priority_delete_min(_a[0]);
#define __function_execute_1512678626657_ds_priority_find_min
var _a = argument[0];
return ds_priority_find_min(_a[0]);
#define __function_execute_1512678626657_ds_priority_delete_max
var _a = argument[0];
return ds_priority_delete_max(_a[0]);
#define __function_execute_1512678626657_ds_priority_find_max
var _a = argument[0];
return ds_priority_find_max(_a[0]);
#define __function_execute_1512678626657_ds_priority_write
var _a = argument[0];
return ds_priority_write(_a[0]);
#define __function_execute_1512678626657_ds_priority_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_priority_read()
    case 1: return ds_priority_read(_a[0])
    case 2: return ds_priority_read(_a[0],_a[1])
    case 3: return ds_priority_read(_a[0],_a[1],_a[2])
    case 4: return ds_priority_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_priority_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_grid_create
var _a = argument[0];
return ds_grid_create(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_grid_destroy
var _a = argument[0];
return ds_grid_destroy(_a[0]);
#define __function_execute_1512678626657_ds_grid_copy
var _a = argument[0];
return ds_grid_copy(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_grid_resize
var _a = argument[0];
return ds_grid_resize(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_grid_width
var _a = argument[0];
return ds_grid_width(_a[0]);
#define __function_execute_1512678626657_ds_grid_height
var _a = argument[0];
return ds_grid_height(_a[0]);
#define __function_execute_1512678626657_ds_grid_clear
var _a = argument[0];
return ds_grid_clear(_a[0],_a[1]);
#define __function_execute_1512678626657_ds_grid_set
var _a = argument[0];
return ds_grid_set(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_add
var _a = argument[0];
return ds_grid_add(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_multiply
var _a = argument[0];
return ds_grid_multiply(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_set_region
var _a = argument[0];
return ds_grid_set_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_add_region
var _a = argument[0];
return ds_grid_add_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_multiply_region
var _a = argument[0];
return ds_grid_multiply_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_set_disk
var _a = argument[0];
return ds_grid_set_disk(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_add_disk
var _a = argument[0];
return ds_grid_add_disk(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_multiply_disk
var _a = argument[0];
return ds_grid_multiply_disk(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_set_grid_region
var _a = argument[0];
return ds_grid_set_grid_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_ds_grid_add_grid_region
var _a = argument[0];
return ds_grid_add_grid_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_ds_grid_multiply_grid_region
var _a = argument[0];
return ds_grid_multiply_grid_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_ds_grid_get
var _a = argument[0];
return ds_grid_get(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ds_grid_get_sum
var _a = argument[0];
return ds_grid_get_sum(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_get_max
var _a = argument[0];
return ds_grid_get_max(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_get_min
var _a = argument[0];
return ds_grid_get_min(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_get_mean
var _a = argument[0];
return ds_grid_get_mean(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_get_disk_sum
var _a = argument[0];
return ds_grid_get_disk_sum(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_get_disk_min
var _a = argument[0];
return ds_grid_get_disk_min(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_get_disk_max
var _a = argument[0];
return ds_grid_get_disk_max(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_get_disk_mean
var _a = argument[0];
return ds_grid_get_disk_mean(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_ds_grid_value_exists
var _a = argument[0];
return ds_grid_value_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_value_x
var _a = argument[0];
return ds_grid_value_x(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_value_y
var _a = argument[0];
return ds_grid_value_y(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_ds_grid_value_disk_exists
var _a = argument[0];
return ds_grid_value_disk_exists(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_value_disk_x
var _a = argument[0];
return ds_grid_value_disk_x(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_value_disk_y
var _a = argument[0];
return ds_grid_value_disk_y(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_ds_grid_shuffle
var _a = argument[0];
return ds_grid_shuffle(_a[0]);
#define __function_execute_1512678626657_ds_grid_write
var _a = argument[0];
return ds_grid_write(_a[0]);
#define __function_execute_1512678626657_ds_grid_read
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return ds_grid_read()
    case 1: return ds_grid_read(_a[0])
    case 2: return ds_grid_read(_a[0],_a[1])
    case 3: return ds_grid_read(_a[0],_a[1],_a[2])
    case 4: return ds_grid_read(_a[0],_a[1],_a[2],_a[3])
    case 5: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return ds_grid_read(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_ds_grid_sort
var _a = argument[0];
return ds_grid_sort(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_effect_create_below
var _a = argument[0];
return effect_create_below(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_effect_create_above
var _a = argument[0];
return effect_create_above(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_effect_clear
var _a = argument[0];
return effect_clear();
#define __function_execute_1512678626657_part_type_create
var _a = argument[0];
return part_type_create();
#define __function_execute_1512678626657_part_type_destroy
var _a = argument[0];
return part_type_destroy(_a[0]);
#define __function_execute_1512678626657_part_type_exists
var _a = argument[0];
return part_type_exists(_a[0]);
#define __function_execute_1512678626657_part_type_clear
var _a = argument[0];
return part_type_clear(_a[0]);
#define __function_execute_1512678626657_part_type_shape
var _a = argument[0];
return part_type_shape(_a[0],_a[1]);
#define __function_execute_1512678626657_part_type_sprite
var _a = argument[0];
return part_type_sprite(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_part_type_size
var _a = argument[0];
return part_type_size(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_part_type_scale
var _a = argument[0];
return part_type_scale(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_orientation
var _a = argument[0];
return part_type_orientation(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_part_type_life
var _a = argument[0];
return part_type_life(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_step
var _a = argument[0];
return part_type_step(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_death
var _a = argument[0];
return part_type_death(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_speed
var _a = argument[0];
return part_type_speed(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_part_type_direction
var _a = argument[0];
return part_type_direction(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_part_type_gravity
var _a = argument[0];
return part_type_gravity(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_colour1
var _a = argument[0];
return part_type_colour1(_a[0],_a[1]);
#define __function_execute_1512678626657_part_type_colour2
var _a = argument[0];
return part_type_colour2(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_colour3
var _a = argument[0];
return part_type_colour3(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_part_type_colour_mix
var _a = argument[0];
return part_type_colour_mix(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_colour_rgb
var _a = argument[0];
return part_type_colour_rgb(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_part_type_colour_hsv
var _a = argument[0];
return part_type_colour_hsv(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_part_type_color1
var _a = argument[0];
return part_type_color1(_a[0],_a[1]);
#define __function_execute_1512678626657_part_type_color2
var _a = argument[0];
return part_type_color2(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_color3
var _a = argument[0];
return part_type_color3(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_part_type_color_mix
var _a = argument[0];
return part_type_color_mix(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_color_rgb
var _a = argument[0];
return part_type_color_rgb(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_part_type_color_hsv
var _a = argument[0];
return part_type_color_hsv(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_part_type_alpha1
var _a = argument[0];
return part_type_alpha1(_a[0],_a[1]);
#define __function_execute_1512678626657_part_type_alpha2
var _a = argument[0];
return part_type_alpha2(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_type_alpha3
var _a = argument[0];
return part_type_alpha3(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_part_type_blend
var _a = argument[0];
return part_type_blend(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_create
var _a = argument[0];
return part_system_create();
#define __function_execute_1512678626657_part_system_create_layer
var _a = argument[0];
return part_system_create_layer(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_destroy
var _a = argument[0];
return part_system_destroy(_a[0]);
#define __function_execute_1512678626657_part_system_exists
var _a = argument[0];
return part_system_exists(_a[0]);
#define __function_execute_1512678626657_part_system_clear
var _a = argument[0];
return part_system_clear(_a[0]);
#define __function_execute_1512678626657_part_system_draw_order
var _a = argument[0];
return part_system_draw_order(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_depth
var _a = argument[0];
return part_system_depth(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_position
var _a = argument[0];
return part_system_position(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_part_system_automatic_update
var _a = argument[0];
return part_system_automatic_update(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_automatic_draw
var _a = argument[0];
return part_system_automatic_draw(_a[0],_a[1]);
#define __function_execute_1512678626657_part_system_update
var _a = argument[0];
return part_system_update(_a[0]);
#define __function_execute_1512678626657_part_system_drawit
var _a = argument[0];
return part_system_drawit(_a[0]);
#define __function_execute_1512678626657_part_system_get_layer
var _a = argument[0];
return part_system_get_layer(_a[0]);
#define __function_execute_1512678626657_part_system_layer
var _a = argument[0];
return part_system_layer(_a[0],_a[1]);
#define __function_execute_1512678626657_part_particles_create
var _a = argument[0];
return part_particles_create(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_part_particles_create_colour
var _a = argument[0];
return part_particles_create_colour(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_part_particles_create_color
var _a = argument[0];
return part_particles_create_color(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_part_particles_clear
var _a = argument[0];
return part_particles_clear(_a[0]);
#define __function_execute_1512678626657_part_particles_count
var _a = argument[0];
return part_particles_count(_a[0]);
#define __function_execute_1512678626657_part_emitter_create
var _a = argument[0];
return part_emitter_create(_a[0]);
#define __function_execute_1512678626657_part_emitter_destroy
var _a = argument[0];
return part_emitter_destroy(_a[0],_a[1]);
#define __function_execute_1512678626657_part_emitter_destroy_all
var _a = argument[0];
return part_emitter_destroy_all(_a[0]);
#define __function_execute_1512678626657_part_emitter_exists
var _a = argument[0];
return part_emitter_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_part_emitter_clear
var _a = argument[0];
return part_emitter_clear(_a[0],_a[1]);
#define __function_execute_1512678626657_part_emitter_region
var _a = argument[0];
return part_emitter_region(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_part_emitter_burst
var _a = argument[0];
return part_emitter_burst(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_part_emitter_stream
var _a = argument[0];
return part_emitter_stream(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_external_call
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return external_call()
    case 1: return external_call(_a[0])
    case 2: return external_call(_a[0],_a[1])
    case 3: return external_call(_a[0],_a[1],_a[2])
    case 4: return external_call(_a[0],_a[1],_a[2],_a[3])
    case 5: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return external_call(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_external_define
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return external_define()
    case 1: return external_define(_a[0])
    case 2: return external_define(_a[0],_a[1])
    case 3: return external_define(_a[0],_a[1],_a[2])
    case 4: return external_define(_a[0],_a[1],_a[2],_a[3])
    case 5: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return external_define(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_external_free
var _a = argument[0];
return external_free(_a[0]);
#define __function_execute_1512678626657_window_handle
var _a = argument[0];
return window_handle();
#define __function_execute_1512678626657_window_device
var _a = argument[0];
return window_device();
#define __function_execute_1512678626657_matrix_get
var _a = argument[0];
return matrix_get(_a[0]);
#define __function_execute_1512678626657_matrix_set
var _a = argument[0];
return matrix_set(_a[0],_a[1]);
#define __function_execute_1512678626657_matrix_build_identity
var _a = argument[0];
return matrix_build_identity();
#define __function_execute_1512678626657_matrix_build
var _a = argument[0];
return matrix_build(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_matrix_build_lookat
var _a = argument[0];
return matrix_build_lookat(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_matrix_build_projection_ortho
var _a = argument[0];
return matrix_build_projection_ortho(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_matrix_build_projection_perspective
var _a = argument[0];
return matrix_build_projection_perspective(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_matrix_build_projection_perspective_fov
var _a = argument[0];
return matrix_build_projection_perspective_fov(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_matrix_multiply
var _a = argument[0];
return matrix_multiply(_a[0],_a[1]);
#define __function_execute_1512678626657_matrix_transform_vertex
var _a = argument[0];
return matrix_transform_vertex(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_matrix_stack_push
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return matrix_stack_push()
    case 1: return matrix_stack_push(_a[0])
    case 2: return matrix_stack_push(_a[0],_a[1])
    case 3: return matrix_stack_push(_a[0],_a[1],_a[2])
    case 4: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3])
    case 5: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return matrix_stack_push(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_matrix_stack_pop
var _a = argument[0];
return matrix_stack_pop();
#define __function_execute_1512678626657_matrix_stack_set
var _a = argument[0];
return matrix_stack_set(_a[0]);
#define __function_execute_1512678626657_matrix_stack_clear
var _a = argument[0];
return matrix_stack_clear();
#define __function_execute_1512678626657_matrix_stack_top
var _a = argument[0];
return matrix_stack_top();
#define __function_execute_1512678626657_matrix_stack_is_empty
var _a = argument[0];
return matrix_stack_is_empty();
#define __function_execute_1512678626657_browser_input_capture
var _a = argument[0];
return browser_input_capture(_a[0]);
#define __function_execute_1512678626657_os_get_config
var _a = argument[0];
return os_get_config();
#define __function_execute_1512678626657_os_get_info
var _a = argument[0];
return os_get_info();
#define __function_execute_1512678626657_os_get_language
var _a = argument[0];
return os_get_language();
#define __function_execute_1512678626657_os_get_region
var _a = argument[0];
return os_get_region();
#define __function_execute_1512678626657_os_lock_orientation
var _a = argument[0];
return os_lock_orientation(_a[0]);
#define __function_execute_1512678626657_display_get_dpi_x
var _a = argument[0];
return display_get_dpi_x();
#define __function_execute_1512678626657_display_get_dpi_y
var _a = argument[0];
return display_get_dpi_y();
#define __function_execute_1512678626657_display_set_gui_size
var _a = argument[0];
return display_set_gui_size(_a[0],_a[1]);
#define __function_execute_1512678626657_display_set_gui_maximise
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return display_set_gui_maximise()
    case 1: return display_set_gui_maximise(_a[0])
    case 2: return display_set_gui_maximise(_a[0],_a[1])
    case 3: return display_set_gui_maximise(_a[0],_a[1],_a[2])
    case 4: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3])
    case 5: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return display_set_gui_maximise(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_device_mouse_dbclick_enable
var _a = argument[0];
return device_mouse_dbclick_enable(_a[0]);
#define __function_execute_1512678626657_virtual_key_add
var _a = argument[0];
return virtual_key_add(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_virtual_key_hide
var _a = argument[0];
return virtual_key_hide(_a[0]);
#define __function_execute_1512678626657_virtual_key_delete
var _a = argument[0];
return virtual_key_delete(_a[0]);
#define __function_execute_1512678626657_virtual_key_show
var _a = argument[0];
return virtual_key_show(_a[0]);
#define __function_execute_1512678626657_draw_enable_drawevent
var _a = argument[0];
return draw_enable_drawevent(_a[0]);
#define __function_execute_1512678626657_draw_enable_swf_aa
var _a = argument[0];
return draw_enable_swf_aa(_a[0]);
#define __function_execute_1512678626657_draw_set_swf_aa_level
var _a = argument[0];
return draw_set_swf_aa_level(_a[0]);
#define __function_execute_1512678626657_draw_get_swf_aa_level
var _a = argument[0];
return draw_get_swf_aa_level();
#define __function_execute_1512678626657_draw_texture_flush
var _a = argument[0];
return draw_texture_flush();
#define __function_execute_1512678626657_draw_flush
var _a = argument[0];
return draw_flush();
#define __function_execute_1512678626657_gpu_set_blendenable
var _a = argument[0];
return gpu_set_blendenable(_a[0]);
#define __function_execute_1512678626657_gpu_set_ztestenable
var _a = argument[0];
return gpu_set_ztestenable(_a[0]);
#define __function_execute_1512678626657_gpu_set_zfunc
var _a = argument[0];
return gpu_set_zfunc(_a[0]);
#define __function_execute_1512678626657_gpu_set_zwriteenable
var _a = argument[0];
return gpu_set_zwriteenable(_a[0]);
#define __function_execute_1512678626657_gpu_set_fog
var _a = argument[0];
return gpu_set_fog(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_gpu_set_cullmode
var _a = argument[0];
return gpu_set_cullmode(_a[0]);
#define __function_execute_1512678626657_gpu_set_blendmode
var _a = argument[0];
return gpu_set_blendmode(_a[0]);
#define __function_execute_1512678626657_gpu_set_blendmode_ext
var _a = argument[0];
return gpu_set_blendmode_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_blendmode_ext_sepalpha
var _a = argument[0];
return gpu_set_blendmode_ext_sepalpha(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_gpu_set_colorwriteenable
var _a = argument[0];
return gpu_set_colorwriteenable(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_gpu_set_colourwriteenable
var _a = argument[0];
return gpu_set_colourwriteenable(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_gpu_set_alphatestenable
var _a = argument[0];
return gpu_set_alphatestenable(_a[0]);
#define __function_execute_1512678626657_gpu_set_alphatestref
var _a = argument[0];
return gpu_set_alphatestref(_a[0]);
#define __function_execute_1512678626657_gpu_set_alphatestfunc
var _a = argument[0];
return gpu_set_alphatestfunc(_a[0]);
#define __function_execute_1512678626657_gpu_set_texfilter
var _a = argument[0];
return gpu_set_texfilter(_a[0]);
#define __function_execute_1512678626657_gpu_set_texfilter_ext
var _a = argument[0];
return gpu_set_texfilter_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_texrepeat
var _a = argument[0];
return gpu_set_texrepeat(_a[0]);
#define __function_execute_1512678626657_gpu_set_texrepeat_ext
var _a = argument[0];
return gpu_set_texrepeat_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_filter
var _a = argument[0];
return gpu_set_tex_filter(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_filter_ext
var _a = argument[0];
return gpu_set_tex_filter_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_repeat
var _a = argument[0];
return gpu_set_tex_repeat(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_repeat_ext
var _a = argument[0];
return gpu_set_tex_repeat_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_mip_filter
var _a = argument[0];
return gpu_set_tex_mip_filter(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_mip_filter_ext
var _a = argument[0];
return gpu_set_tex_mip_filter_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_mip_bias
var _a = argument[0];
return gpu_set_tex_mip_bias(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_mip_bias_ext
var _a = argument[0];
return gpu_set_tex_mip_bias_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_min_mip
var _a = argument[0];
return gpu_set_tex_min_mip(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_min_mip_ext
var _a = argument[0];
return gpu_set_tex_min_mip_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_max_mip
var _a = argument[0];
return gpu_set_tex_max_mip(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_max_mip_ext
var _a = argument[0];
return gpu_set_tex_max_mip_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_max_aniso
var _a = argument[0];
return gpu_set_tex_max_aniso(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_max_aniso_ext
var _a = argument[0];
return gpu_set_tex_max_aniso_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_set_tex_mip_enable
var _a = argument[0];
return gpu_set_tex_mip_enable(_a[0]);
#define __function_execute_1512678626657_gpu_set_tex_mip_enable_ext
var _a = argument[0];
return gpu_set_tex_mip_enable_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_gpu_get_blendenable
var _a = argument[0];
return gpu_get_blendenable();
#define __function_execute_1512678626657_gpu_get_ztestenable
var _a = argument[0];
return gpu_get_ztestenable();
#define __function_execute_1512678626657_gpu_get_zfunc
var _a = argument[0];
return gpu_get_zfunc();
#define __function_execute_1512678626657_gpu_get_zwriteenable
var _a = argument[0];
return gpu_get_zwriteenable();
#define __function_execute_1512678626657_gpu_get_fog
var _a = argument[0];
return gpu_get_fog();
#define __function_execute_1512678626657_gpu_get_cullmode
var _a = argument[0];
return gpu_get_cullmode();
#define __function_execute_1512678626657_gpu_get_blendmode
var _a = argument[0];
return gpu_get_blendmode();
#define __function_execute_1512678626657_gpu_get_blendmode_ext
var _a = argument[0];
return gpu_get_blendmode_ext();
#define __function_execute_1512678626657_gpu_get_blendmode_ext_sepalpha
var _a = argument[0];
return gpu_get_blendmode_ext_sepalpha();
#define __function_execute_1512678626657_gpu_get_blendmode_src
var _a = argument[0];
return gpu_get_blendmode_src();
#define __function_execute_1512678626657_gpu_get_blendmode_dest
var _a = argument[0];
return gpu_get_blendmode_dest();
#define __function_execute_1512678626657_gpu_get_blendmode_srcalpha
var _a = argument[0];
return gpu_get_blendmode_srcalpha();
#define __function_execute_1512678626657_gpu_get_blendmode_destalpha
var _a = argument[0];
return gpu_get_blendmode_destalpha();
#define __function_execute_1512678626657_gpu_get_colorwriteenable
var _a = argument[0];
return gpu_get_colorwriteenable();
#define __function_execute_1512678626657_gpu_get_colourwriteenable
var _a = argument[0];
return gpu_get_colourwriteenable();
#define __function_execute_1512678626657_gpu_get_alphatestenable
var _a = argument[0];
return gpu_get_alphatestenable();
#define __function_execute_1512678626657_gpu_get_alphatestref
var _a = argument[0];
return gpu_get_alphatestref();
#define __function_execute_1512678626657_gpu_get_alphatestfunc
var _a = argument[0];
return gpu_get_alphatestfunc();
#define __function_execute_1512678626657_gpu_get_texfilter
var _a = argument[0];
return gpu_get_texfilter();
#define __function_execute_1512678626657_gpu_get_texfilter_ext
var _a = argument[0];
return gpu_get_texfilter_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_texrepeat
var _a = argument[0];
return gpu_get_texrepeat();
#define __function_execute_1512678626657_gpu_get_texrepeat_ext
var _a = argument[0];
return gpu_get_texrepeat_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_filter
var _a = argument[0];
return gpu_get_tex_filter();
#define __function_execute_1512678626657_gpu_get_tex_filter_ext
var _a = argument[0];
return gpu_get_tex_filter_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_repeat
var _a = argument[0];
return gpu_get_tex_repeat();
#define __function_execute_1512678626657_gpu_get_tex_repeat_ext
var _a = argument[0];
return gpu_get_tex_repeat_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_mip_filter
var _a = argument[0];
return gpu_get_tex_mip_filter();
#define __function_execute_1512678626657_gpu_get_tex_mip_filter_ext
var _a = argument[0];
return gpu_get_tex_mip_filter_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_mip_bias
var _a = argument[0];
return gpu_get_tex_mip_bias();
#define __function_execute_1512678626657_gpu_get_tex_mip_bias_ext
var _a = argument[0];
return gpu_get_tex_mip_bias_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_min_mip
var _a = argument[0];
return gpu_get_tex_min_mip();
#define __function_execute_1512678626657_gpu_get_tex_min_mip_ext
var _a = argument[0];
return gpu_get_tex_min_mip_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_max_mip
var _a = argument[0];
return gpu_get_tex_max_mip();
#define __function_execute_1512678626657_gpu_get_tex_max_mip_ext
var _a = argument[0];
return gpu_get_tex_max_mip_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_max_aniso
var _a = argument[0];
return gpu_get_tex_max_aniso();
#define __function_execute_1512678626657_gpu_get_tex_max_aniso_ext
var _a = argument[0];
return gpu_get_tex_max_aniso_ext(_a[0]);
#define __function_execute_1512678626657_gpu_get_tex_mip_enable
var _a = argument[0];
return gpu_get_tex_mip_enable();
#define __function_execute_1512678626657_gpu_get_tex_mip_enable_ext
var _a = argument[0];
return gpu_get_tex_mip_enable_ext(_a[0]);
#define __function_execute_1512678626657_gpu_push_state
var _a = argument[0];
return gpu_push_state();
#define __function_execute_1512678626657_gpu_pop_state
var _a = argument[0];
return gpu_pop_state();
#define __function_execute_1512678626657_gpu_get_state
var _a = argument[0];
return gpu_get_state();
#define __function_execute_1512678626657_gpu_set_state
var _a = argument[0];
return gpu_set_state(_a[0]);
#define __function_execute_1512678626657_draw_light_define_ambient
var _a = argument[0];
return draw_light_define_ambient(_a[0]);
#define __function_execute_1512678626657_draw_light_define_direction
var _a = argument[0];
return draw_light_define_direction(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_draw_light_define_point
var _a = argument[0];
return draw_light_define_point(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_draw_light_enable
var _a = argument[0];
return draw_light_enable(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_set_lighting
var _a = argument[0];
return draw_set_lighting(_a[0]);
#define __function_execute_1512678626657_draw_light_get_ambient
var _a = argument[0];
return draw_light_get_ambient();
#define __function_execute_1512678626657_draw_light_get
var _a = argument[0];
return draw_light_get(_a[0]);
#define __function_execute_1512678626657_draw_get_lighting
var _a = argument[0];
return draw_get_lighting();
#define __function_execute_1512678626657_shop_leave_rating
var _a = argument[0];
return shop_leave_rating(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_url_get_domain
var _a = argument[0];
return url_get_domain();
#define __function_execute_1512678626657_url_open
var _a = argument[0];
return url_open(_a[0]);
#define __function_execute_1512678626657_url_open_ext
var _a = argument[0];
return url_open_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_url_open_full
var _a = argument[0];
return url_open_full(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_get_timer
var _a = argument[0];
return get_timer();
#define __function_execute_1512678626657_achievement_login
var _a = argument[0];
return achievement_login();
#define __function_execute_1512678626657_achievement_logout
var _a = argument[0];
return achievement_logout();
#define __function_execute_1512678626657_achievement_post
var _a = argument[0];
return achievement_post(_a[0],_a[1]);
#define __function_execute_1512678626657_achievement_increment
var _a = argument[0];
return achievement_increment(_a[0],_a[1]);
#define __function_execute_1512678626657_achievement_post_score
var _a = argument[0];
return achievement_post_score(_a[0],_a[1]);
#define __function_execute_1512678626657_achievement_available
var _a = argument[0];
return achievement_available();
#define __function_execute_1512678626657_achievement_show_achievements
var _a = argument[0];
return achievement_show_achievements();
#define __function_execute_1512678626657_achievement_show_leaderboards
var _a = argument[0];
return achievement_show_leaderboards();
#define __function_execute_1512678626657_achievement_load_friends
var _a = argument[0];
return achievement_load_friends();
#define __function_execute_1512678626657_achievement_load_leaderboard
var _a = argument[0];
return achievement_load_leaderboard(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_achievement_send_challenge
var _a = argument[0];
return achievement_send_challenge(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_achievement_load_progress
var _a = argument[0];
return achievement_load_progress();
#define __function_execute_1512678626657_achievement_reset
var _a = argument[0];
return achievement_reset();
#define __function_execute_1512678626657_achievement_login_status
var _a = argument[0];
return achievement_login_status();
#define __function_execute_1512678626657_achievement_get_pic
var _a = argument[0];
return achievement_get_pic(_a[0]);
#define __function_execute_1512678626657_achievement_show_challenge_notifications
var _a = argument[0];
return achievement_show_challenge_notifications(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_achievement_get_challenges
var _a = argument[0];
return achievement_get_challenges();
#define __function_execute_1512678626657_achievement_event
var _a = argument[0];
return achievement_event(_a[0]);
#define __function_execute_1512678626657_achievement_show
var _a = argument[0];
return achievement_show(_a[0],_a[1]);
#define __function_execute_1512678626657_achievement_get_info
var _a = argument[0];
return achievement_get_info(_a[0]);
#define __function_execute_1512678626657_cloud_file_save
var _a = argument[0];
return cloud_file_save(_a[0],_a[1]);
#define __function_execute_1512678626657_cloud_string_save
var _a = argument[0];
return cloud_string_save(_a[0],_a[1]);
#define __function_execute_1512678626657_cloud_synchronise
var _a = argument[0];
return cloud_synchronise();
#define __function_execute_1512678626657_ads_enable
var _a = argument[0];
return ads_enable(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ads_disable
var _a = argument[0];
return ads_disable(_a[0]);
#define __function_execute_1512678626657_ads_setup
var _a = argument[0];
return ads_setup(_a[0],_a[1]);
#define __function_execute_1512678626657_ads_engagement_launch
var _a = argument[0];
return ads_engagement_launch();
#define __function_execute_1512678626657_ads_engagement_available
var _a = argument[0];
return ads_engagement_available();
#define __function_execute_1512678626657_ads_engagement_active
var _a = argument[0];
return ads_engagement_active();
#define __function_execute_1512678626657_ads_event
var _a = argument[0];
return ads_event(_a[0]);
#define __function_execute_1512678626657_ads_event_preload
var _a = argument[0];
return ads_event_preload(_a[0]);
#define __function_execute_1512678626657_ads_set_reward_callback
var _a = argument[0];
return ads_set_reward_callback(_a[0]);
#define __function_execute_1512678626657_ads_get_display_height
var _a = argument[0];
return ads_get_display_height(_a[0]);
#define __function_execute_1512678626657_ads_get_display_width
var _a = argument[0];
return ads_get_display_width(_a[0]);
#define __function_execute_1512678626657_ads_move
var _a = argument[0];
return ads_move(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_ads_interstitial_available
var _a = argument[0];
return ads_interstitial_available();
#define __function_execute_1512678626657_ads_interstitial_display
var _a = argument[0];
return ads_interstitial_display();
#define __function_execute_1512678626657_device_get_tilt_x
var _a = argument[0];
return device_get_tilt_x();
#define __function_execute_1512678626657_device_get_tilt_y
var _a = argument[0];
return device_get_tilt_y();
#define __function_execute_1512678626657_device_get_tilt_z
var _a = argument[0];
return device_get_tilt_z();
#define __function_execute_1512678626657_device_is_keypad_open
var _a = argument[0];
return device_is_keypad_open();
#define __function_execute_1512678626657_device_mouse_check_button
var _a = argument[0];
return device_mouse_check_button(_a[0],_a[1]);
#define __function_execute_1512678626657_device_mouse_check_button_pressed
var _a = argument[0];
return device_mouse_check_button_pressed(_a[0],_a[1]);
#define __function_execute_1512678626657_device_mouse_check_button_released
var _a = argument[0];
return device_mouse_check_button_released(_a[0],_a[1]);
#define __function_execute_1512678626657_device_mouse_x
var _a = argument[0];
return device_mouse_x(_a[0]);
#define __function_execute_1512678626657_device_mouse_y
var _a = argument[0];
return device_mouse_y(_a[0]);
#define __function_execute_1512678626657_device_mouse_raw_x
var _a = argument[0];
return device_mouse_raw_x(_a[0]);
#define __function_execute_1512678626657_device_mouse_raw_y
var _a = argument[0];
return device_mouse_raw_y(_a[0]);
#define __function_execute_1512678626657_device_mouse_x_to_gui
var _a = argument[0];
return device_mouse_x_to_gui(_a[0]);
#define __function_execute_1512678626657_device_mouse_y_to_gui
var _a = argument[0];
return device_mouse_y_to_gui(_a[0]);
#define __function_execute_1512678626657_iap_activate
var _a = argument[0];
return iap_activate(_a[0]);
#define __function_execute_1512678626657_iap_status
var _a = argument[0];
return iap_status();
#define __function_execute_1512678626657_iap_enumerate_products
var _a = argument[0];
return iap_enumerate_products(_a[0]);
#define __function_execute_1512678626657_iap_restore_all
var _a = argument[0];
return iap_restore_all();
#define __function_execute_1512678626657_iap_acquire
var _a = argument[0];
return iap_acquire(_a[0],_a[1]);
#define __function_execute_1512678626657_iap_consume
var _a = argument[0];
return iap_consume(_a[0]);
#define __function_execute_1512678626657_iap_product_details
var _a = argument[0];
return iap_product_details(_a[0],_a[1]);
#define __function_execute_1512678626657_iap_purchase_details
var _a = argument[0];
return iap_purchase_details(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_is_supported
var _a = argument[0];
return gamepad_is_supported();
#define __function_execute_1512678626657_gamepad_get_device_count
var _a = argument[0];
return gamepad_get_device_count();
#define __function_execute_1512678626657_gamepad_is_connected
var _a = argument[0];
return gamepad_is_connected(_a[0]);
#define __function_execute_1512678626657_gamepad_get_description
var _a = argument[0];
return gamepad_get_description(_a[0]);
#define __function_execute_1512678626657_gamepad_get_button_threshold
var _a = argument[0];
return gamepad_get_button_threshold(_a[0]);
#define __function_execute_1512678626657_gamepad_set_button_threshold
var _a = argument[0];
return gamepad_set_button_threshold(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_get_axis_deadzone
var _a = argument[0];
return gamepad_get_axis_deadzone(_a[0]);
#define __function_execute_1512678626657_gamepad_set_axis_deadzone
var _a = argument[0];
return gamepad_set_axis_deadzone(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_button_count
var _a = argument[0];
return gamepad_button_count(_a[0]);
#define __function_execute_1512678626657_gamepad_button_check
var _a = argument[0];
return gamepad_button_check(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_button_check_pressed
var _a = argument[0];
return gamepad_button_check_pressed(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_button_check_released
var _a = argument[0];
return gamepad_button_check_released(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_button_value
var _a = argument[0];
return gamepad_button_value(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_axis_count
var _a = argument[0];
return gamepad_axis_count(_a[0]);
#define __function_execute_1512678626657_gamepad_axis_value
var _a = argument[0];
return gamepad_axis_value(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_set_vibration
var _a = argument[0];
return gamepad_set_vibration(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_gamepad_set_colour
var _a = argument[0];
return gamepad_set_colour(_a[0],_a[1]);
#define __function_execute_1512678626657_gamepad_set_color
var _a = argument[0];
return gamepad_set_color(_a[0],_a[1]);
#define __function_execute_1512678626657_os_is_paused
var _a = argument[0];
return os_is_paused();
#define __function_execute_1512678626657_window_has_focus
var _a = argument[0];
return window_has_focus();
#define __function_execute_1512678626657_code_is_compiled
var _a = argument[0];
return code_is_compiled();
#define __function_execute_1512678626657_http_get
var _a = argument[0];
return http_get(_a[0]);
#define __function_execute_1512678626657_http_get_file
var _a = argument[0];
return http_get_file(_a[0],_a[1]);
#define __function_execute_1512678626657_http_post_string
var _a = argument[0];
return http_post_string(_a[0],_a[1]);
#define __function_execute_1512678626657_http_request
var _a = argument[0];
return http_request(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_json_encode
var _a = argument[0];
return json_encode(_a[0]);
#define __function_execute_1512678626657_json_decode
var _a = argument[0];
return json_decode(_a[0]);
#define __function_execute_1512678626657_zip_unzip
var _a = argument[0];
return zip_unzip(_a[0],_a[1]);
#define __function_execute_1512678626657_load_csv
var _a = argument[0];
return load_csv(_a[0]);
#define __function_execute_1512678626657_base64_encode
var _a = argument[0];
return base64_encode(_a[0]);
#define __function_execute_1512678626657_base64_decode
var _a = argument[0];
return base64_decode(_a[0]);
#define __function_execute_1512678626657_md5_string_unicode
var _a = argument[0];
return md5_string_unicode(_a[0]);
#define __function_execute_1512678626657_md5_string_utf8
var _a = argument[0];
return md5_string_utf8(_a[0]);
#define __function_execute_1512678626657_md5_file
var _a = argument[0];
return md5_file(_a[0]);
#define __function_execute_1512678626657_os_is_network_connected
var _a = argument[0];
return os_is_network_connected();
#define __function_execute_1512678626657_sha1_string_unicode
var _a = argument[0];
return sha1_string_unicode(_a[0]);
#define __function_execute_1512678626657_sha1_string_utf8
var _a = argument[0];
return sha1_string_utf8(_a[0]);
#define __function_execute_1512678626657_sha1_file
var _a = argument[0];
return sha1_file(_a[0]);
#define __function_execute_1512678626657_os_powersave_enable
var _a = argument[0];
return os_powersave_enable(_a[0]);
#define __function_execute_1512678626657_analytics_event
var _a = argument[0];
return analytics_event(_a[0]);
#define __function_execute_1512678626657_analytics_event_ext
var _a = argument[0];
return analytics_event_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_livetile_tile_notification
var _a = argument[0];
return win8_livetile_tile_notification(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_livetile_tile_clear
var _a = argument[0];
return win8_livetile_tile_clear();
#define __function_execute_1512678626657_win8_livetile_badge_notification
var _a = argument[0];
return win8_livetile_badge_notification(_a[0]);
#define __function_execute_1512678626657_win8_livetile_badge_clear
var _a = argument[0];
return win8_livetile_badge_clear();
#define __function_execute_1512678626657_win8_livetile_queue_enable
var _a = argument[0];
return win8_livetile_queue_enable(_a[0]);
#define __function_execute_1512678626657_win8_secondarytile_pin
var _a = argument[0];
return win8_secondarytile_pin(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_win8_secondarytile_badge_notification
var _a = argument[0];
return win8_secondarytile_badge_notification(_a[0],_a[1]);
#define __function_execute_1512678626657_win8_secondarytile_delete
var _a = argument[0];
return win8_secondarytile_delete(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_begin
var _a = argument[0];
return win8_livetile_notification_begin(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_secondary_begin
var _a = argument[0];
return win8_livetile_notification_secondary_begin(_a[0],_a[1]);
#define __function_execute_1512678626657_win8_livetile_notification_expiry
var _a = argument[0];
return win8_livetile_notification_expiry(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_tag
var _a = argument[0];
return win8_livetile_notification_tag(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_text_add
var _a = argument[0];
return win8_livetile_notification_text_add(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_image_add
var _a = argument[0];
return win8_livetile_notification_image_add(_a[0]);
#define __function_execute_1512678626657_win8_livetile_notification_end
var _a = argument[0];
return win8_livetile_notification_end();
#define __function_execute_1512678626657_win8_appbar_enable
var _a = argument[0];
return win8_appbar_enable(_a[0]);
#define __function_execute_1512678626657_win8_appbar_add_element
var _a = argument[0];
return win8_appbar_add_element(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_win8_appbar_remove_element
var _a = argument[0];
return win8_appbar_remove_element(_a[0]);
#define __function_execute_1512678626657_win8_settingscharm_add_entry
var _a = argument[0];
return win8_settingscharm_add_entry(_a[0],_a[1]);
#define __function_execute_1512678626657_win8_settingscharm_add_html_entry
var _a = argument[0];
return win8_settingscharm_add_html_entry(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_win8_settingscharm_add_xaml_entry
var _a = argument[0];
return win8_settingscharm_add_xaml_entry(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_win8_settingscharm_set_xaml_property
var _a = argument[0];
return win8_settingscharm_set_xaml_property(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_settingscharm_get_xaml_property
var _a = argument[0];
return win8_settingscharm_get_xaml_property(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_win8_settingscharm_remove_entry
var _a = argument[0];
return win8_settingscharm_remove_entry(_a[0]);
#define __function_execute_1512678626657_win8_share_image
var _a = argument[0];
return win8_share_image(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_share_screenshot
var _a = argument[0];
return win8_share_screenshot(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_win8_share_file
var _a = argument[0];
return win8_share_file(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_share_url
var _a = argument[0];
return win8_share_url(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_share_text
var _a = argument[0];
return win8_share_text(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_win8_search_enable
var _a = argument[0];
return win8_search_enable(_a[0]);
#define __function_execute_1512678626657_win8_search_disable
var _a = argument[0];
return win8_search_disable();
#define __function_execute_1512678626657_win8_search_add_suggestions
var _a = argument[0];
return win8_search_add_suggestions(_a[0]);
#define __function_execute_1512678626657_win8_device_touchscreen_available
var _a = argument[0];
return win8_device_touchscreen_available();
#define __function_execute_1512678626657_win8_license_initialize_sandbox
var _a = argument[0];
return win8_license_initialize_sandbox(_a[0]);
#define __function_execute_1512678626657_win8_license_trial_version
var _a = argument[0];
return win8_license_trial_version();
#define __function_execute_1512678626657_winphone_license_trial_version
var _a = argument[0];
return winphone_license_trial_version();
#define __function_execute_1512678626657_winphone_tile_title
var _a = argument[0];
return winphone_tile_title(_a[0]);
#define __function_execute_1512678626657_winphone_tile_count
var _a = argument[0];
return winphone_tile_count(_a[0]);
#define __function_execute_1512678626657_winphone_tile_back_title
var _a = argument[0];
return winphone_tile_back_title(_a[0]);
#define __function_execute_1512678626657_winphone_tile_back_content
var _a = argument[0];
return winphone_tile_back_content(_a[0]);
#define __function_execute_1512678626657_winphone_tile_back_content_wide
var _a = argument[0];
return winphone_tile_back_content_wide(_a[0]);
#define __function_execute_1512678626657_winphone_tile_front_image
var _a = argument[0];
return winphone_tile_front_image(_a[0]);
#define __function_execute_1512678626657_winphone_tile_front_image_small
var _a = argument[0];
return winphone_tile_front_image_small(_a[0]);
#define __function_execute_1512678626657_winphone_tile_front_image_wide
var _a = argument[0];
return winphone_tile_front_image_wide(_a[0]);
#define __function_execute_1512678626657_winphone_tile_back_image
var _a = argument[0];
return winphone_tile_back_image(_a[0]);
#define __function_execute_1512678626657_winphone_tile_back_image_wide
var _a = argument[0];
return winphone_tile_back_image_wide(_a[0]);
#define __function_execute_1512678626657_winphone_tile_background_colour
var _a = argument[0];
return winphone_tile_background_colour(_a[0]);
#define __function_execute_1512678626657_winphone_tile_background_color
var _a = argument[0];
return winphone_tile_background_color(_a[0]);
#define __function_execute_1512678626657_winphone_tile_icon_image
var _a = argument[0];
return winphone_tile_icon_image(_a[0]);
#define __function_execute_1512678626657_winphone_tile_small_icon_image
var _a = argument[0];
return winphone_tile_small_icon_image(_a[0]);
#define __function_execute_1512678626657_winphone_tile_wide_content
var _a = argument[0];
return winphone_tile_wide_content(_a[0],_a[1]);
#define __function_execute_1512678626657_winphone_tile_cycle_images
var _a = argument[0];
return winphone_tile_cycle_images(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_winphone_tile_small_background_image
var _a = argument[0];
return winphone_tile_small_background_image(_a[0]);
#define __function_execute_1512678626657_physics_world_create
var _a = argument[0];
return physics_world_create(_a[0]);
#define __function_execute_1512678626657_physics_world_gravity
var _a = argument[0];
return physics_world_gravity(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_world_update_speed
var _a = argument[0];
return physics_world_update_speed(_a[0]);
#define __function_execute_1512678626657_physics_world_update_iterations
var _a = argument[0];
return physics_world_update_iterations(_a[0]);
#define __function_execute_1512678626657_physics_world_draw_debug
var _a = argument[0];
return physics_world_draw_debug(_a[0]);
#define __function_execute_1512678626657_physics_pause_enable
var _a = argument[0];
return physics_pause_enable(_a[0]);
#define __function_execute_1512678626657_physics_fixture_create
var _a = argument[0];
return physics_fixture_create();
#define __function_execute_1512678626657_physics_fixture_set_kinematic
var _a = argument[0];
return physics_fixture_set_kinematic(_a[0]);
#define __function_execute_1512678626657_physics_fixture_set_density
var _a = argument[0];
return physics_fixture_set_density(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_awake
var _a = argument[0];
return physics_fixture_set_awake(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_restitution
var _a = argument[0];
return physics_fixture_set_restitution(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_friction
var _a = argument[0];
return physics_fixture_set_friction(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_collision_group
var _a = argument[0];
return physics_fixture_set_collision_group(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_sensor
var _a = argument[0];
return physics_fixture_set_sensor(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_linear_damping
var _a = argument[0];
return physics_fixture_set_linear_damping(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_angular_damping
var _a = argument[0];
return physics_fixture_set_angular_damping(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_circle_shape
var _a = argument[0];
return physics_fixture_set_circle_shape(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_set_box_shape
var _a = argument[0];
return physics_fixture_set_box_shape(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_fixture_set_edge_shape
var _a = argument[0];
return physics_fixture_set_edge_shape(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_physics_fixture_set_polygon_shape
var _a = argument[0];
return physics_fixture_set_polygon_shape(_a[0]);
#define __function_execute_1512678626657_physics_fixture_set_chain_shape
var _a = argument[0];
return physics_fixture_set_chain_shape(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_add_point
var _a = argument[0];
return physics_fixture_add_point(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_fixture_bind
var _a = argument[0];
return physics_fixture_bind(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_fixture_bind_ext
var _a = argument[0];
return physics_fixture_bind_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_fixture_delete
var _a = argument[0];
return physics_fixture_delete(_a[0]);
#define __function_execute_1512678626657_physics_apply_force
var _a = argument[0];
return physics_apply_force(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_apply_impulse
var _a = argument[0];
return physics_apply_impulse(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_apply_angular_impulse
var _a = argument[0];
return physics_apply_angular_impulse(_a[0]);
#define __function_execute_1512678626657_physics_apply_local_force
var _a = argument[0];
return physics_apply_local_force(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_apply_local_impulse
var _a = argument[0];
return physics_apply_local_impulse(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_apply_torque
var _a = argument[0];
return physics_apply_torque(_a[0]);
#define __function_execute_1512678626657_physics_mass_properties
var _a = argument[0];
return physics_mass_properties(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_draw_debug
var _a = argument[0];
return physics_draw_debug();
#define __function_execute_1512678626657_physics_test_overlap
var _a = argument[0];
return physics_test_overlap(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_remove_fixture
var _a = argument[0];
return physics_remove_fixture(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_set_friction
var _a = argument[0];
return physics_set_friction(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_set_density
var _a = argument[0];
return physics_set_density(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_set_restitution
var _a = argument[0];
return physics_set_restitution(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_get_friction
var _a = argument[0];
return physics_get_friction(_a[0]);
#define __function_execute_1512678626657_physics_get_density
var _a = argument[0];
return physics_get_density(_a[0]);
#define __function_execute_1512678626657_physics_get_restitution
var _a = argument[0];
return physics_get_restitution(_a[0]);
#define __function_execute_1512678626657_physics_joint_distance_create
var _a = argument[0];
return physics_joint_distance_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_physics_joint_rope_create
var _a = argument[0];
return physics_joint_rope_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_physics_joint_revolute_create
var _a = argument[0];
return physics_joint_revolute_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_physics_joint_prismatic_create
var _a = argument[0];
return physics_joint_prismatic_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12]);
#define __function_execute_1512678626657_physics_joint_pulley_create
var _a = argument[0];
return physics_joint_pulley_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11]);
#define __function_execute_1512678626657_physics_joint_wheel_create
var _a = argument[0];
return physics_joint_wheel_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11]);
#define __function_execute_1512678626657_physics_joint_weld_create
var _a = argument[0];
return physics_joint_weld_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_physics_joint_friction_create
var _a = argument[0];
return physics_joint_friction_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_physics_joint_gear_create
var _a = argument[0];
return physics_joint_gear_create(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_physics_joint_enable_motor
var _a = argument[0];
return physics_joint_enable_motor(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_joint_get_value
var _a = argument[0];
return physics_joint_get_value(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_joint_set_value
var _a = argument[0];
return physics_joint_set_value(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_joint_delete
var _a = argument[0];
return physics_joint_delete(_a[0]);
#define __function_execute_1512678626657_physics_particle_create
var _a = argument[0];
return physics_particle_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_physics_particle_delete
var _a = argument[0];
return physics_particle_delete(_a[0]);
#define __function_execute_1512678626657_physics_particle_delete_region_circle
var _a = argument[0];
return physics_particle_delete_region_circle(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_particle_delete_region_box
var _a = argument[0];
return physics_particle_delete_region_box(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_particle_delete_region_poly
var _a = argument[0];
return physics_particle_delete_region_poly(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_flags
var _a = argument[0];
return physics_particle_set_flags(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_set_category_flags
var _a = argument[0];
return physics_particle_set_category_flags(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_draw
var _a = argument[0];
return physics_particle_draw(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_physics_particle_draw_ext
var _a = argument[0];
return physics_particle_draw_ext(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_physics_particle_count
var _a = argument[0];
return physics_particle_count();
#define __function_execute_1512678626657_physics_particle_get_data
var _a = argument[0];
return physics_particle_get_data(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_get_data_particle
var _a = argument[0];
return physics_particle_get_data_particle(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_particle_group_begin
var _a = argument[0];
return physics_particle_group_begin(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11]);
#define __function_execute_1512678626657_physics_particle_group_circle
var _a = argument[0];
return physics_particle_group_circle(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_box
var _a = argument[0];
return physics_particle_group_box(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_group_polygon
var _a = argument[0];
return physics_particle_group_polygon();
#define __function_execute_1512678626657_physics_particle_group_add_point
var _a = argument[0];
return physics_particle_group_add_point(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_group_end
var _a = argument[0];
return physics_particle_group_end();
#define __function_execute_1512678626657_physics_particle_group_join
var _a = argument[0];
return physics_particle_group_join(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_group_delete
var _a = argument[0];
return physics_particle_group_delete(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_count
var _a = argument[0];
return physics_particle_group_count(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_data
var _a = argument[0];
return physics_particle_group_get_data(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_physics_particle_group_get_mass
var _a = argument[0];
return physics_particle_group_get_mass(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_inertia
var _a = argument[0];
return physics_particle_group_get_inertia(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_centre_x
var _a = argument[0];
return physics_particle_group_get_centre_x(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_centre_y
var _a = argument[0];
return physics_particle_group_get_centre_y(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_vel_x
var _a = argument[0];
return physics_particle_group_get_vel_x(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_vel_y
var _a = argument[0];
return physics_particle_group_get_vel_y(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_ang_vel
var _a = argument[0];
return physics_particle_group_get_ang_vel(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_x
var _a = argument[0];
return physics_particle_group_get_x(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_y
var _a = argument[0];
return physics_particle_group_get_y(_a[0]);
#define __function_execute_1512678626657_physics_particle_group_get_angle
var _a = argument[0];
return physics_particle_group_get_angle(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_group_flags
var _a = argument[0];
return physics_particle_set_group_flags(_a[0],_a[1]);
#define __function_execute_1512678626657_physics_particle_get_group_flags
var _a = argument[0];
return physics_particle_get_group_flags(_a[0]);
#define __function_execute_1512678626657_physics_particle_get_max_count
var _a = argument[0];
return physics_particle_get_max_count();
#define __function_execute_1512678626657_physics_particle_get_radius
var _a = argument[0];
return physics_particle_get_radius();
#define __function_execute_1512678626657_physics_particle_get_density
var _a = argument[0];
return physics_particle_get_density();
#define __function_execute_1512678626657_physics_particle_get_damping
var _a = argument[0];
return physics_particle_get_damping();
#define __function_execute_1512678626657_physics_particle_get_gravity_scale
var _a = argument[0];
return physics_particle_get_gravity_scale();
#define __function_execute_1512678626657_physics_particle_set_max_count
var _a = argument[0];
return physics_particle_set_max_count(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_radius
var _a = argument[0];
return physics_particle_set_radius(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_density
var _a = argument[0];
return physics_particle_set_density(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_damping
var _a = argument[0];
return physics_particle_set_damping(_a[0]);
#define __function_execute_1512678626657_physics_particle_set_gravity_scale
var _a = argument[0];
return physics_particle_set_gravity_scale(_a[0]);
#define __function_execute_1512678626657_network_create_socket
var _a = argument[0];
return network_create_socket(_a[0]);
#define __function_execute_1512678626657_network_create_socket_ext
var _a = argument[0];
return network_create_socket_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_network_create_server
var _a = argument[0];
return network_create_server(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_create_server_raw
var _a = argument[0];
return network_create_server_raw(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_connect
var _a = argument[0];
return network_connect(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_connect_raw
var _a = argument[0];
return network_connect_raw(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_send_packet
var _a = argument[0];
return network_send_packet(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_send_raw
var _a = argument[0];
return network_send_raw(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_send_broadcast
var _a = argument[0];
return network_send_broadcast(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_network_send_udp
var _a = argument[0];
return network_send_udp(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_network_send_udp_raw
var _a = argument[0];
return network_send_udp_raw(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_network_set_timeout
var _a = argument[0];
return network_set_timeout(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_network_set_config
var _a = argument[0];
return network_set_config(_a[0],_a[1]);
#define __function_execute_1512678626657_network_resolve
var _a = argument[0];
return network_resolve(_a[0]);
#define __function_execute_1512678626657_network_destroy
var _a = argument[0];
return network_destroy(_a[0]);
#define __function_execute_1512678626657_buffer_create
var _a = argument[0];
return buffer_create(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_write
var _a = argument[0];
return buffer_write(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_read
var _a = argument[0];
return buffer_read(_a[0],_a[1]);
#define __function_execute_1512678626657_buffer_seek
var _a = argument[0];
return buffer_seek(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_get_surface
var _a = argument[0];
return buffer_get_surface(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_set_surface
var _a = argument[0];
return buffer_set_surface(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_delete
var _a = argument[0];
return buffer_delete(_a[0]);
#define __function_execute_1512678626657_buffer_exists
var _a = argument[0];
return buffer_exists(_a[0]);
#define __function_execute_1512678626657_buffer_get_type
var _a = argument[0];
return buffer_get_type(_a[0]);
#define __function_execute_1512678626657_buffer_get_alignment
var _a = argument[0];
return buffer_get_alignment(_a[0]);
#define __function_execute_1512678626657_buffer_poke
var _a = argument[0];
return buffer_poke(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_buffer_peek
var _a = argument[0];
return buffer_peek(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_save
var _a = argument[0];
return buffer_save(_a[0],_a[1]);
#define __function_execute_1512678626657_buffer_save_ext
var _a = argument[0];
return buffer_save_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_buffer_load
var _a = argument[0];
return buffer_load(_a[0]);
#define __function_execute_1512678626657_buffer_load_ext
var _a = argument[0];
return buffer_load_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_load_partial
var _a = argument[0];
return buffer_load_partial(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_buffer_copy
var _a = argument[0];
return buffer_copy(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_buffer_fill
var _a = argument[0];
return buffer_fill(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_buffer_get_size
var _a = argument[0];
return buffer_get_size(_a[0]);
#define __function_execute_1512678626657_buffer_tell
var _a = argument[0];
return buffer_tell(_a[0]);
#define __function_execute_1512678626657_buffer_resize
var _a = argument[0];
return buffer_resize(_a[0],_a[1]);
#define __function_execute_1512678626657_buffer_md5
var _a = argument[0];
return buffer_md5(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_sha1
var _a = argument[0];
return buffer_sha1(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_base64_encode
var _a = argument[0];
return buffer_base64_encode(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_base64_decode
var _a = argument[0];
return buffer_base64_decode(_a[0]);
#define __function_execute_1512678626657_buffer_base64_decode_ext
var _a = argument[0];
return buffer_base64_decode_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_sizeof
var _a = argument[0];
return buffer_sizeof(_a[0]);
#define __function_execute_1512678626657_buffer_get_address
var _a = argument[0];
return buffer_get_address(_a[0]);
#define __function_execute_1512678626657_buffer_create_from_vertex_buffer
var _a = argument[0];
return buffer_create_from_vertex_buffer(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_buffer_create_from_vertex_buffer_ext
var _a = argument[0];
return buffer_create_from_vertex_buffer_ext(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_buffer_copy_from_vertex_buffer
var _a = argument[0];
return buffer_copy_from_vertex_buffer(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_buffer_async_group_begin
var _a = argument[0];
return buffer_async_group_begin(_a[0]);
#define __function_execute_1512678626657_buffer_async_group_option
var _a = argument[0];
return buffer_async_group_option(_a[0],_a[1]);
#define __function_execute_1512678626657_buffer_async_group_end
var _a = argument[0];
return buffer_async_group_end();
#define __function_execute_1512678626657_buffer_load_async
var _a = argument[0];
return buffer_load_async(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_buffer_save_async
var _a = argument[0];
return buffer_save_async(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_gml_release_mode
var _a = argument[0];
return gml_release_mode(_a[0]);
#define __function_execute_1512678626657_steam_activate_overlay
var _a = argument[0];
return steam_activate_overlay(_a[0]);
#define __function_execute_1512678626657_steam_is_overlay_enabled
var _a = argument[0];
return steam_is_overlay_enabled();
#define __function_execute_1512678626657_steam_is_overlay_activated
var _a = argument[0];
return steam_is_overlay_activated();
#define __function_execute_1512678626657_steam_get_persona_name
var _a = argument[0];
return steam_get_persona_name();
#define __function_execute_1512678626657_steam_initialised
var _a = argument[0];
return steam_initialised();
#define __function_execute_1512678626657_steam_is_cloud_enabled_for_app
var _a = argument[0];
return steam_is_cloud_enabled_for_app();
#define __function_execute_1512678626657_steam_is_cloud_enabled_for_account
var _a = argument[0];
return steam_is_cloud_enabled_for_account();
#define __function_execute_1512678626657_steam_file_persisted
var _a = argument[0];
return steam_file_persisted(_a[0]);
#define __function_execute_1512678626657_steam_get_quota_total
var _a = argument[0];
return steam_get_quota_total();
#define __function_execute_1512678626657_steam_get_quota_free
var _a = argument[0];
return steam_get_quota_free();
#define __function_execute_1512678626657_steam_file_write
var _a = argument[0];
return steam_file_write(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_file_write_file
var _a = argument[0];
return steam_file_write_file(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_file_read
var _a = argument[0];
return steam_file_read(_a[0]);
#define __function_execute_1512678626657_steam_file_delete
var _a = argument[0];
return steam_file_delete(_a[0]);
#define __function_execute_1512678626657_steam_file_exists
var _a = argument[0];
return steam_file_exists(_a[0]);
#define __function_execute_1512678626657_steam_file_size
var _a = argument[0];
return steam_file_size(_a[0]);
#define __function_execute_1512678626657_steam_file_share
var _a = argument[0];
return steam_file_share(_a[0]);
#define __function_execute_1512678626657_steam_is_screenshot_requested
var _a = argument[0];
return steam_is_screenshot_requested();
#define __function_execute_1512678626657_steam_send_screenshot
var _a = argument[0];
return steam_send_screenshot(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_is_user_logged_on
var _a = argument[0];
return steam_is_user_logged_on();
#define __function_execute_1512678626657_steam_get_user_steam_id
var _a = argument[0];
return steam_get_user_steam_id();
#define __function_execute_1512678626657_steam_user_owns_dlc
var _a = argument[0];
return steam_user_owns_dlc(_a[0]);
#define __function_execute_1512678626657_steam_user_installed_dlc
var _a = argument[0];
return steam_user_installed_dlc(_a[0]);
#define __function_execute_1512678626657_steam_set_achievement
var _a = argument[0];
return steam_set_achievement(_a[0]);
#define __function_execute_1512678626657_steam_get_achievement
var _a = argument[0];
return steam_get_achievement(_a[0]);
#define __function_execute_1512678626657_steam_clear_achievement
var _a = argument[0];
return steam_clear_achievement(_a[0]);
#define __function_execute_1512678626657_steam_set_stat_int
var _a = argument[0];
return steam_set_stat_int(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_set_stat_float
var _a = argument[0];
return steam_set_stat_float(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_set_stat_avg_rate
var _a = argument[0];
return steam_set_stat_avg_rate(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_get_stat_int
var _a = argument[0];
return steam_get_stat_int(_a[0]);
#define __function_execute_1512678626657_steam_get_stat_float
var _a = argument[0];
return steam_get_stat_float(_a[0]);
#define __function_execute_1512678626657_steam_get_stat_avg_rate
var _a = argument[0];
return steam_get_stat_avg_rate(_a[0]);
#define __function_execute_1512678626657_steam_reset_all_stats
var _a = argument[0];
return steam_reset_all_stats();
#define __function_execute_1512678626657_steam_reset_all_stats_achievements
var _a = argument[0];
return steam_reset_all_stats_achievements();
#define __function_execute_1512678626657_steam_stats_ready
var _a = argument[0];
return steam_stats_ready();
#define __function_execute_1512678626657_steam_create_leaderboard
var _a = argument[0];
return steam_create_leaderboard(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_upload_score
var _a = argument[0];
return steam_upload_score(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_upload_score_ext
var _a = argument[0];
return steam_upload_score_ext(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_download_scores_around_user
var _a = argument[0];
return steam_download_scores_around_user(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_download_scores
var _a = argument[0];
return steam_download_scores(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_download_friends_scores
var _a = argument[0];
return steam_download_friends_scores(_a[0]);
#define __function_execute_1512678626657_steam_upload_score_buffer
var _a = argument[0];
return steam_upload_score_buffer(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_upload_score_buffer_ext
var _a = argument[0];
return steam_upload_score_buffer_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_steam_current_game_language
var _a = argument[0];
return steam_current_game_language();
#define __function_execute_1512678626657_steam_available_languages
var _a = argument[0];
return steam_available_languages();
#define __function_execute_1512678626657_steam_activate_overlay_browser
var _a = argument[0];
return steam_activate_overlay_browser(_a[0]);
#define __function_execute_1512678626657_steam_activate_overlay_user
var _a = argument[0];
return steam_activate_overlay_user(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_activate_overlay_store
var _a = argument[0];
return steam_activate_overlay_store(_a[0]);
#define __function_execute_1512678626657_steam_get_user_persona_name
var _a = argument[0];
return steam_get_user_persona_name(_a[0]);
#define __function_execute_1512678626657_steam_get_app_id
var _a = argument[0];
return steam_get_app_id();
#define __function_execute_1512678626657_steam_get_user_account_id
var _a = argument[0];
return steam_get_user_account_id();
#define __function_execute_1512678626657_steam_ugc_download
var _a = argument[0];
return steam_ugc_download(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_create_item
var _a = argument[0];
return steam_ugc_create_item(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_start_item_update
var _a = argument[0];
return steam_ugc_start_item_update(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_title
var _a = argument[0];
return steam_ugc_set_item_title(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_description
var _a = argument[0];
return steam_ugc_set_item_description(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_visibility
var _a = argument[0];
return steam_ugc_set_item_visibility(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_tags
var _a = argument[0];
return steam_ugc_set_item_tags(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_content
var _a = argument[0];
return steam_ugc_set_item_content(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_set_item_preview
var _a = argument[0];
return steam_ugc_set_item_preview(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_submit_item_update
var _a = argument[0];
return steam_ugc_submit_item_update(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_get_item_update_progress
var _a = argument[0];
return steam_ugc_get_item_update_progress(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_subscribe_item
var _a = argument[0];
return steam_ugc_subscribe_item(_a[0]);
#define __function_execute_1512678626657_steam_ugc_unsubscribe_item
var _a = argument[0];
return steam_ugc_unsubscribe_item(_a[0]);
#define __function_execute_1512678626657_steam_ugc_num_subscribed_items
var _a = argument[0];
return steam_ugc_num_subscribed_items();
#define __function_execute_1512678626657_steam_ugc_get_subscribed_items
var _a = argument[0];
return steam_ugc_get_subscribed_items(_a[0]);
#define __function_execute_1512678626657_steam_ugc_get_item_install_info
var _a = argument[0];
return steam_ugc_get_item_install_info(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_get_item_update_info
var _a = argument[0];
return steam_ugc_get_item_update_info(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_request_item_details
var _a = argument[0];
return steam_ugc_request_item_details(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_create_query_user
var _a = argument[0];
return steam_ugc_create_query_user(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_steam_ugc_create_query_user_ex
var _a = argument[0];
return steam_ugc_create_query_user_ex(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6]);
#define __function_execute_1512678626657_steam_ugc_create_query_all
var _a = argument[0];
return steam_ugc_create_query_all(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_steam_ugc_create_query_all_ex
var _a = argument[0];
return steam_ugc_create_query_all_ex(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_steam_ugc_query_set_cloud_filename_filter
var _a = argument[0];
return steam_ugc_query_set_cloud_filename_filter(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_match_any_tag
var _a = argument[0];
return steam_ugc_query_set_match_any_tag(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_search_text
var _a = argument[0];
return steam_ugc_query_set_search_text(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_ranked_by_trend_days
var _a = argument[0];
return steam_ugc_query_set_ranked_by_trend_days(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_add_required_tag
var _a = argument[0];
return steam_ugc_query_add_required_tag(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_add_excluded_tag
var _a = argument[0];
return steam_ugc_query_add_excluded_tag(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_return_long_description
var _a = argument[0];
return steam_ugc_query_set_return_long_description(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_return_total_only
var _a = argument[0];
return steam_ugc_query_set_return_total_only(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_query_set_allow_cached_response
var _a = argument[0];
return steam_ugc_query_set_allow_cached_response(_a[0],_a[1]);
#define __function_execute_1512678626657_steam_ugc_send_query
var _a = argument[0];
return steam_ugc_send_query(_a[0]);
#define __function_execute_1512678626657_shader_set
var _a = argument[0];
return shader_set(_a[0]);
#define __function_execute_1512678626657_shader_reset
var _a = argument[0];
return shader_reset();
#define __function_execute_1512678626657_shader_current
var _a = argument[0];
return shader_current();
#define __function_execute_1512678626657_shader_is_compiled
var _a = argument[0];
return shader_is_compiled(_a[0]);
#define __function_execute_1512678626657_shader_get_sampler_index
var _a = argument[0];
return shader_get_sampler_index(_a[0],_a[1]);
#define __function_execute_1512678626657_shader_get_uniform
var _a = argument[0];
return shader_get_uniform(_a[0],_a[1]);
#define __function_execute_1512678626657_shader_set_uniform_i
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return shader_set_uniform_i()
    case 1: return shader_set_uniform_i(_a[0])
    case 2: return shader_set_uniform_i(_a[0],_a[1])
    case 3: return shader_set_uniform_i(_a[0],_a[1],_a[2])
    case 4: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3])
    case 5: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return shader_set_uniform_i(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_shader_set_uniform_i_array
var _a = argument[0];
return shader_set_uniform_i_array(_a[0],_a[1]);
#define __function_execute_1512678626657_shader_set_uniform_f
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return shader_set_uniform_f()
    case 1: return shader_set_uniform_f(_a[0])
    case 2: return shader_set_uniform_f(_a[0],_a[1])
    case 3: return shader_set_uniform_f(_a[0],_a[1],_a[2])
    case 4: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3])
    case 5: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return shader_set_uniform_f(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_shader_set_uniform_f_array
var _a = argument[0];
return shader_set_uniform_f_array(_a[0],_a[1]);
#define __function_execute_1512678626657_shader_set_uniform_matrix
var _a = argument[0];
return shader_set_uniform_matrix(_a[0]);
#define __function_execute_1512678626657_shader_set_uniform_matrix_array
var _a = argument[0];
return shader_set_uniform_matrix_array(_a[0],_a[1]);
#define __function_execute_1512678626657_shader_enable_corner_id
var _a = argument[0];
return shader_enable_corner_id(_a[0]);
#define __function_execute_1512678626657_texture_set_stage
var _a = argument[0];
return texture_set_stage(_a[0],_a[1]);
#define __function_execute_1512678626657_texture_get_texel_width
var _a = argument[0];
return texture_get_texel_width(_a[0]);
#define __function_execute_1512678626657_texture_get_texel_height
var _a = argument[0];
return texture_get_texel_height(_a[0]);
#define __function_execute_1512678626657_shaders_are_supported
var _a = argument[0];
return shaders_are_supported();
#define __function_execute_1512678626657_vertex_format_begin
var _a = argument[0];
return vertex_format_begin();
#define __function_execute_1512678626657_vertex_format_end
var _a = argument[0];
return vertex_format_end();
#define __function_execute_1512678626657_vertex_format_delete
var _a = argument[0];
return vertex_format_delete(_a[0]);
#define __function_execute_1512678626657_vertex_format_add_position
var _a = argument[0];
return vertex_format_add_position();
#define __function_execute_1512678626657_vertex_format_add_position_3d
var _a = argument[0];
return vertex_format_add_position_3d();
#define __function_execute_1512678626657_vertex_format_add_colour
var _a = argument[0];
return vertex_format_add_colour();
#define __function_execute_1512678626657_vertex_format_add_color
var _a = argument[0];
return vertex_format_add_color();
#define __function_execute_1512678626657_vertex_format_add_normal
var _a = argument[0];
return vertex_format_add_normal();
#define __function_execute_1512678626657_vertex_format_add_texcoord
var _a = argument[0];
return vertex_format_add_texcoord();
#define __function_execute_1512678626657_vertex_format_add_textcoord
var _a = argument[0];
return vertex_format_add_textcoord();
#define __function_execute_1512678626657_vertex_format_add_custom
var _a = argument[0];
return vertex_format_add_custom(_a[0],_a[1]);
#define __function_execute_1512678626657_vertex_create_buffer
var _a = argument[0];
return vertex_create_buffer();
#define __function_execute_1512678626657_vertex_create_buffer_ext
var _a = argument[0];
return vertex_create_buffer_ext(_a[0]);
#define __function_execute_1512678626657_vertex_delete_buffer
var _a = argument[0];
return vertex_delete_buffer(_a[0]);
#define __function_execute_1512678626657_vertex_begin
var _a = argument[0];
return vertex_begin(_a[0],_a[1]);
#define __function_execute_1512678626657_vertex_end
var _a = argument[0];
return vertex_end(_a[0]);
#define __function_execute_1512678626657_vertex_position
var _a = argument[0];
return vertex_position(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_position_3d
var _a = argument[0];
return vertex_position_3d(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_vertex_colour
var _a = argument[0];
return vertex_colour(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_color
var _a = argument[0];
return vertex_color(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_argb
var _a = argument[0];
return vertex_argb(_a[0],_a[1]);
#define __function_execute_1512678626657_vertex_texcoord
var _a = argument[0];
return vertex_texcoord(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_normal
var _a = argument[0];
return vertex_normal(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_vertex_float1
var _a = argument[0];
return vertex_float1(_a[0],_a[1]);
#define __function_execute_1512678626657_vertex_float2
var _a = argument[0];
return vertex_float2(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_float3
var _a = argument[0];
return vertex_float3(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_vertex_float4
var _a = argument[0];
return vertex_float4(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_vertex_ubyte4
var _a = argument[0];
return vertex_ubyte4(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_vertex_submit
var _a = argument[0];
return vertex_submit(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_vertex_freeze
var _a = argument[0];
return vertex_freeze(_a[0]);
#define __function_execute_1512678626657_vertex_get_number
var _a = argument[0];
return vertex_get_number(_a[0]);
#define __function_execute_1512678626657_vertex_get_buffer_size
var _a = argument[0];
return vertex_get_buffer_size(_a[0]);
#define __function_execute_1512678626657_vertex_create_buffer_from_buffer
var _a = argument[0];
return vertex_create_buffer_from_buffer(_a[0],_a[1]);
#define __function_execute_1512678626657_vertex_create_buffer_from_buffer_ext
var _a = argument[0];
return vertex_create_buffer_from_buffer_ext(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_push_local_notification
var _a = argument[0];
return push_local_notification(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_push_get_first_local_notification
var _a = argument[0];
return push_get_first_local_notification(_a[0]);
#define __function_execute_1512678626657_push_get_next_local_notification
var _a = argument[0];
return push_get_next_local_notification(_a[0]);
#define __function_execute_1512678626657_push_cancel_local_notification
var _a = argument[0];
return push_cancel_local_notification(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_set
var _a = argument[0];
return skeleton_animation_set(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_get
var _a = argument[0];
return skeleton_animation_get();
#define __function_execute_1512678626657_skeleton_animation_mix
var _a = argument[0];
return skeleton_animation_mix(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_skeleton_animation_set_ext
var _a = argument[0];
return skeleton_animation_set_ext(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_animation_get_ext
var _a = argument[0];
return skeleton_animation_get_ext(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_get_duration
var _a = argument[0];
return skeleton_animation_get_duration(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_get_frames
var _a = argument[0];
return skeleton_animation_get_frames(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_clear
var _a = argument[0];
return skeleton_animation_clear(_a[0]);
#define __function_execute_1512678626657_skeleton_skin_set
var _a = argument[0];
return skeleton_skin_set(_a[0]);
#define __function_execute_1512678626657_skeleton_skin_get
var _a = argument[0];
return skeleton_skin_get();
#define __function_execute_1512678626657_skeleton_attachment_set
var _a = argument[0];
return skeleton_attachment_set(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_attachment_get
var _a = argument[0];
return skeleton_attachment_get(_a[0]);
#define __function_execute_1512678626657_skeleton_attachment_create
var _a = argument[0];
return skeleton_attachment_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_skeleton_collision_draw_set
var _a = argument[0];
return skeleton_collision_draw_set(_a[0]);
#define __function_execute_1512678626657_skeleton_bone_data_get
var _a = argument[0];
return skeleton_bone_data_get(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_bone_data_set
var _a = argument[0];
return skeleton_bone_data_set(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_bone_state_get
var _a = argument[0];
return skeleton_bone_state_get(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_bone_state_set
var _a = argument[0];
return skeleton_bone_state_set(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_get_minmax
var _a = argument[0];
return skeleton_get_minmax();
#define __function_execute_1512678626657_skeleton_get_num_bounds
var _a = argument[0];
return skeleton_get_num_bounds();
#define __function_execute_1512678626657_skeleton_get_bounds
var _a = argument[0];
return skeleton_get_bounds(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_get_frame
var _a = argument[0];
return skeleton_animation_get_frame(_a[0]);
#define __function_execute_1512678626657_skeleton_animation_set_frame
var _a = argument[0];
return skeleton_animation_set_frame(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_skeleton
var _a = argument[0];
return draw_skeleton(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_skeleton_time
var _a = argument[0];
return draw_skeleton_time(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_skeleton_instance
var _a = argument[0];
return draw_skeleton_instance(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10]);
#define __function_execute_1512678626657_draw_skeleton_collision
var _a = argument[0];
return draw_skeleton_collision(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8]);
#define __function_execute_1512678626657_skeleton_animation_list
var _a = argument[0];
return skeleton_animation_list(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_skin_list
var _a = argument[0];
return skeleton_skin_list(_a[0],_a[1]);
#define __function_execute_1512678626657_skeleton_slot_data
var _a = argument[0];
return skeleton_slot_data(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_id
var _a = argument[0];
return layer_get_id(_a[0]);
#define __function_execute_1512678626657_layer_get_id_at_depth
var _a = argument[0];
return layer_get_id_at_depth(_a[0]);
#define __function_execute_1512678626657_layer_get_depth
var _a = argument[0];
return layer_get_depth(_a[0]);
#define __function_execute_1512678626657_layer_create
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return layer_create()
    case 1: return layer_create(_a[0])
    case 2: return layer_create(_a[0],_a[1])
    case 3: return layer_create(_a[0],_a[1],_a[2])
    case 4: return layer_create(_a[0],_a[1],_a[2],_a[3])
    case 5: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return layer_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_layer_destroy
var _a = argument[0];
return layer_destroy(_a[0]);
#define __function_execute_1512678626657_layer_destroy_instances
var _a = argument[0];
return layer_destroy_instances(_a[0]);
#define __function_execute_1512678626657_layer_add_instance
var _a = argument[0];
return layer_add_instance(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_has_instance
var _a = argument[0];
return layer_has_instance(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_set_visible
var _a = argument[0];
return layer_set_visible(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_visible
var _a = argument[0];
return layer_get_visible(_a[0]);
#define __function_execute_1512678626657_layer_exists
var _a = argument[0];
return layer_exists(_a[0]);
#define __function_execute_1512678626657_layer_x
var _a = argument[0];
return layer_x(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_y
var _a = argument[0];
return layer_y(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_x
var _a = argument[0];
return layer_get_x(_a[0]);
#define __function_execute_1512678626657_layer_get_y
var _a = argument[0];
return layer_get_y(_a[0]);
#define __function_execute_1512678626657_layer_hspeed
var _a = argument[0];
return layer_hspeed(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_vspeed
var _a = argument[0];
return layer_vspeed(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_hspeed
var _a = argument[0];
return layer_get_hspeed(_a[0]);
#define __function_execute_1512678626657_layer_get_vspeed
var _a = argument[0];
return layer_get_vspeed(_a[0]);
#define __function_execute_1512678626657_layer_script_begin
var _a = argument[0];
return layer_script_begin(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_script_end
var _a = argument[0];
return layer_script_end(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_shader
var _a = argument[0];
return layer_shader(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_script_begin
var _a = argument[0];
return layer_get_script_begin(_a[0]);
#define __function_execute_1512678626657_layer_get_script_end
var _a = argument[0];
return layer_get_script_end(_a[0]);
#define __function_execute_1512678626657_layer_get_shader
var _a = argument[0];
return layer_get_shader(_a[0]);
#define __function_execute_1512678626657_layer_set_target_room
var _a = argument[0];
return layer_set_target_room(_a[0]);
#define __function_execute_1512678626657_layer_get_target_room
var _a = argument[0];
return layer_get_target_room();
#define __function_execute_1512678626657_layer_reset_target_room
var _a = argument[0];
return layer_reset_target_room();
#define __function_execute_1512678626657_layer_get_all
var _a = argument[0];
return layer_get_all();
#define __function_execute_1512678626657_layer_get_all_elements
var _a = argument[0];
return layer_get_all_elements(_a[0]);
#define __function_execute_1512678626657_layer_get_name
var _a = argument[0];
return layer_get_name(_a[0]);
#define __function_execute_1512678626657_layer_depth
var _a = argument[0];
return layer_depth(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_get_element_layer
var _a = argument[0];
return layer_get_element_layer(_a[0]);
#define __function_execute_1512678626657_layer_get_element_type
var _a = argument[0];
return layer_get_element_type(_a[0]);
#define __function_execute_1512678626657_layer_element_move
var _a = argument[0];
return layer_element_move(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_force_draw_depth
var _a = argument[0];
return layer_force_draw_depth(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_is_draw_depth_forced
var _a = argument[0];
return layer_is_draw_depth_forced();
#define __function_execute_1512678626657_layer_get_forced_depth
var _a = argument[0];
return layer_get_forced_depth();
#define __function_execute_1512678626657_layer_background_get_id
var _a = argument[0];
return layer_background_get_id(_a[0]);
#define __function_execute_1512678626657_layer_background_exists
var _a = argument[0];
return layer_background_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_create
var _a = argument[0];
return layer_background_create(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_destroy
var _a = argument[0];
return layer_background_destroy(_a[0]);
#define __function_execute_1512678626657_layer_background_visible
var _a = argument[0];
return layer_background_visible(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_change
var _a = argument[0];
return layer_background_change(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_sprite
var _a = argument[0];
return layer_background_sprite(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_htiled
var _a = argument[0];
return layer_background_htiled(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_vtiled
var _a = argument[0];
return layer_background_vtiled(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_stretch
var _a = argument[0];
return layer_background_stretch(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_yscale
var _a = argument[0];
return layer_background_yscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_xscale
var _a = argument[0];
return layer_background_xscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_blend
var _a = argument[0];
return layer_background_blend(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_alpha
var _a = argument[0];
return layer_background_alpha(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_index
var _a = argument[0];
return layer_background_index(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_speed
var _a = argument[0];
return layer_background_speed(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_background_get_visible
var _a = argument[0];
return layer_background_get_visible(_a[0]);
#define __function_execute_1512678626657_layer_background_get_sprite
var _a = argument[0];
return layer_background_get_sprite(_a[0]);
#define __function_execute_1512678626657_layer_background_get_htiled
var _a = argument[0];
return layer_background_get_htiled(_a[0]);
#define __function_execute_1512678626657_layer_background_get_vtiled
var _a = argument[0];
return layer_background_get_vtiled(_a[0]);
#define __function_execute_1512678626657_layer_background_get_stretch
var _a = argument[0];
return layer_background_get_stretch(_a[0]);
#define __function_execute_1512678626657_layer_background_get_yscale
var _a = argument[0];
return layer_background_get_yscale(_a[0]);
#define __function_execute_1512678626657_layer_background_get_xscale
var _a = argument[0];
return layer_background_get_xscale(_a[0]);
#define __function_execute_1512678626657_layer_background_get_blend
var _a = argument[0];
return layer_background_get_blend(_a[0]);
#define __function_execute_1512678626657_layer_background_get_alpha
var _a = argument[0];
return layer_background_get_alpha(_a[0]);
#define __function_execute_1512678626657_layer_background_get_index
var _a = argument[0];
return layer_background_get_index(_a[0]);
#define __function_execute_1512678626657_layer_background_get_speed
var _a = argument[0];
return layer_background_get_speed(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_id
var _a = argument[0];
return layer_sprite_get_id(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_exists
var _a = argument[0];
return layer_sprite_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_create
var _a = argument[0];
return layer_sprite_create(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_layer_sprite_destroy
var _a = argument[0];
return layer_sprite_destroy(_a[0]);
#define __function_execute_1512678626657_layer_sprite_change
var _a = argument[0];
return layer_sprite_change(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_index
var _a = argument[0];
return layer_sprite_index(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_speed
var _a = argument[0];
return layer_sprite_speed(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_xscale
var _a = argument[0];
return layer_sprite_xscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_yscale
var _a = argument[0];
return layer_sprite_yscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_angle
var _a = argument[0];
return layer_sprite_angle(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_blend
var _a = argument[0];
return layer_sprite_blend(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_alpha
var _a = argument[0];
return layer_sprite_alpha(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_x
var _a = argument[0];
return layer_sprite_x(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_y
var _a = argument[0];
return layer_sprite_y(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_sprite_get_sprite
var _a = argument[0];
return layer_sprite_get_sprite(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_index
var _a = argument[0];
return layer_sprite_get_index(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_speed
var _a = argument[0];
return layer_sprite_get_speed(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_xscale
var _a = argument[0];
return layer_sprite_get_xscale(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_yscale
var _a = argument[0];
return layer_sprite_get_yscale(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_angle
var _a = argument[0];
return layer_sprite_get_angle(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_blend
var _a = argument[0];
return layer_sprite_get_blend(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_alpha
var _a = argument[0];
return layer_sprite_get_alpha(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_x
var _a = argument[0];
return layer_sprite_get_x(_a[0]);
#define __function_execute_1512678626657_layer_sprite_get_y
var _a = argument[0];
return layer_sprite_get_y(_a[0]);
#define __function_execute_1512678626657_layer_tilemap_get_id
var _a = argument[0];
return layer_tilemap_get_id(_a[0]);
#define __function_execute_1512678626657_layer_tilemap_exists
var _a = argument[0];
return layer_tilemap_exists(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tilemap_create
var _a = argument[0];
return layer_tilemap_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5]);
#define __function_execute_1512678626657_layer_tilemap_destroy
var _a = argument[0];
return layer_tilemap_destroy(_a[0]);
#define __function_execute_1512678626657_tilemap_tileset
var _a = argument[0];
return tilemap_tileset(_a[0],_a[1]);
#define __function_execute_1512678626657_tilemap_x
var _a = argument[0];
return tilemap_x(_a[0],_a[1]);
#define __function_execute_1512678626657_tilemap_y
var _a = argument[0];
return tilemap_y(_a[0],_a[1]);
#define __function_execute_1512678626657_tilemap_set
var _a = argument[0];
return tilemap_set(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_tilemap_set_at_pixel
var _a = argument[0];
return tilemap_set_at_pixel(_a[0],_a[1],_a[2],_a[3]);
#define __function_execute_1512678626657_tilemap_get_tileset
var _a = argument[0];
return tilemap_get_tileset(_a[0]);
#define __function_execute_1512678626657_tilemap_get_tile_width
var _a = argument[0];
return tilemap_get_tile_width(_a[0]);
#define __function_execute_1512678626657_tilemap_get_tile_height
var _a = argument[0];
return tilemap_get_tile_height(_a[0]);
#define __function_execute_1512678626657_tilemap_get_width
var _a = argument[0];
return tilemap_get_width(_a[0]);
#define __function_execute_1512678626657_tilemap_get_height
var _a = argument[0];
return tilemap_get_height(_a[0]);
#define __function_execute_1512678626657_tilemap_get_x
var _a = argument[0];
return tilemap_get_x(_a[0]);
#define __function_execute_1512678626657_tilemap_get_y
var _a = argument[0];
return tilemap_get_y(_a[0]);
#define __function_execute_1512678626657_tilemap_get
var _a = argument[0];
return tilemap_get(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_tilemap_get_at_pixel
var _a = argument[0];
return tilemap_get_at_pixel(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_tilemap_get_cell_x_at_pixel
var _a = argument[0];
return tilemap_get_cell_x_at_pixel(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_tilemap_get_cell_y_at_pixel
var _a = argument[0];
return tilemap_get_cell_y_at_pixel(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_tilemap_clear
var _a = argument[0];
return tilemap_clear(_a[0],_a[1]);
#define __function_execute_1512678626657_draw_tilemap
var _a = argument[0];
return draw_tilemap(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_draw_tile
var _a = argument[0];
return draw_tile(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_tilemap_set_global_mask
var _a = argument[0];
return tilemap_set_global_mask(_a[0]);
#define __function_execute_1512678626657_tilemap_get_global_mask
var _a = argument[0];
return tilemap_get_global_mask();
#define __function_execute_1512678626657_tilemap_set_mask
var _a = argument[0];
return tilemap_set_mask(_a[0],_a[1]);
#define __function_execute_1512678626657_tilemap_get_mask
var _a = argument[0];
return tilemap_get_mask(_a[0]);
#define __function_execute_1512678626657_tilemap_get_frame
var _a = argument[0];
return tilemap_get_frame(_a[0]);
#define __function_execute_1512678626657_tile_set_empty
var _a = argument[0];
return tile_set_empty(_a[0]);
#define __function_execute_1512678626657_tile_set_index
var _a = argument[0];
return tile_set_index(_a[0],_a[1]);
#define __function_execute_1512678626657_tile_set_flip
var _a = argument[0];
return tile_set_flip(_a[0],_a[1]);
#define __function_execute_1512678626657_tile_set_mirror
var _a = argument[0];
return tile_set_mirror(_a[0],_a[1]);
#define __function_execute_1512678626657_tile_set_rotate
var _a = argument[0];
return tile_set_rotate(_a[0],_a[1]);
#define __function_execute_1512678626657_tile_get_empty
var _a = argument[0];
return tile_get_empty(_a[0]);
#define __function_execute_1512678626657_tile_get_index
var _a = argument[0];
return tile_get_index(_a[0]);
#define __function_execute_1512678626657_tile_get_flip
var _a = argument[0];
return tile_get_flip(_a[0]);
#define __function_execute_1512678626657_tile_get_mirror
var _a = argument[0];
return tile_get_mirror(_a[0]);
#define __function_execute_1512678626657_tile_get_rotate
var _a = argument[0];
return tile_get_rotate(_a[0]);
#define __function_execute_1512678626657_layer_tile_exists
var _a = argument[0];
switch(array_length_1d(_a)) {
    case 0: return layer_tile_exists()
    case 1: return layer_tile_exists(_a[0])
    case 2: return layer_tile_exists(_a[0],_a[1])
    case 3: return layer_tile_exists(_a[0],_a[1],_a[2])
    case 4: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3])
    case 5: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4])
    case 6: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5])
    case 7: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6])
    case 8: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7])
    case 9: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8])
    case 10: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9])
    case 11: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10])
    case 12: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11])
    case 13: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12])
    case 14: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13])
    case 15: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14])
    case 16: return layer_tile_exists(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9],_a[10],_a[11],_a[12],_a[13],_a[14],_a[15])
}
return undefined;
#define __function_execute_1512678626657_layer_tile_create
var _a = argument[0];
return layer_tile_create(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7]);
#define __function_execute_1512678626657_layer_tile_destroy
var _a = argument[0];
return layer_tile_destroy(_a[0]);
#define __function_execute_1512678626657_layer_tile_change
var _a = argument[0];
return layer_tile_change(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_xscale
var _a = argument[0];
return layer_tile_xscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_yscale
var _a = argument[0];
return layer_tile_yscale(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_blend
var _a = argument[0];
return layer_tile_blend(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_alpha
var _a = argument[0];
return layer_tile_alpha(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_x
var _a = argument[0];
return layer_tile_x(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_y
var _a = argument[0];
return layer_tile_y(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_region
var _a = argument[0];
return layer_tile_region(_a[0],_a[1],_a[2],_a[3],_a[4]);
#define __function_execute_1512678626657_layer_tile_visible
var _a = argument[0];
return layer_tile_visible(_a[0],_a[1]);
#define __function_execute_1512678626657_layer_tile_get_sprite
var _a = argument[0];
return layer_tile_get_sprite(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_xscale
var _a = argument[0];
return layer_tile_get_xscale(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_yscale
var _a = argument[0];
return layer_tile_get_yscale(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_blend
var _a = argument[0];
return layer_tile_get_blend(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_alpha
var _a = argument[0];
return layer_tile_get_alpha(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_x
var _a = argument[0];
return layer_tile_get_x(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_y
var _a = argument[0];
return layer_tile_get_y(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_region
var _a = argument[0];
return layer_tile_get_region(_a[0]);
#define __function_execute_1512678626657_layer_tile_get_visible
var _a = argument[0];
return layer_tile_get_visible(_a[0]);
#define __function_execute_1512678626657_layer_instance_get_instance
var _a = argument[0];
return layer_instance_get_instance(_a[0]);
#define __function_execute_1512678626657_instance_activate_layer
var _a = argument[0];
return instance_activate_layer(_a[0]);
#define __function_execute_1512678626657_instance_deactivate_layer
var _a = argument[0];
return instance_deactivate_layer(_a[0]);
#define __function_execute_1512678626657_camera_create
var _a = argument[0];
return camera_create();
#define __function_execute_1512678626657_camera_create_view
var _a = argument[0];
return camera_create_view(_a[0],_a[1],_a[2],_a[3],_a[4],_a[5],_a[6],_a[7],_a[8],_a[9]);
#define __function_execute_1512678626657_camera_destroy
var _a = argument[0];
return camera_destroy(_a[0]);
#define __function_execute_1512678626657_camera_apply
var _a = argument[0];
return camera_apply(_a[0]);
#define __function_execute_1512678626657_camera_get_active
var _a = argument[0];
return camera_get_active();
#define __function_execute_1512678626657_camera_get_default
var _a = argument[0];
return camera_get_default();
#define __function_execute_1512678626657_camera_set_default
var _a = argument[0];
return camera_set_default(_a[0]);
#define __function_execute_1512678626657_camera_set_view_mat
var _a = argument[0];
return camera_set_view_mat(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_proj_mat
var _a = argument[0];
return camera_set_proj_mat(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_update_script
var _a = argument[0];
return camera_set_update_script(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_begin_script
var _a = argument[0];
return camera_set_begin_script(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_end_script
var _a = argument[0];
return camera_set_end_script(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_view_pos
var _a = argument[0];
return camera_set_view_pos(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_camera_set_view_size
var _a = argument[0];
return camera_set_view_size(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_camera_set_view_speed
var _a = argument[0];
return camera_set_view_speed(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_camera_set_view_border
var _a = argument[0];
return camera_set_view_border(_a[0],_a[1],_a[2]);
#define __function_execute_1512678626657_camera_set_view_angle
var _a = argument[0];
return camera_set_view_angle(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_set_view_target
var _a = argument[0];
return camera_set_view_target(_a[0],_a[1]);
#define __function_execute_1512678626657_camera_get_view_mat
var _a = argument[0];
return camera_get_view_mat(_a[0]);
#define __function_execute_1512678626657_camera_get_proj_mat
var _a = argument[0];
return camera_get_proj_mat(_a[0]);
#define __function_execute_1512678626657_camera_get_update_script
var _a = argument[0];
return camera_get_update_script(_a[0]);
#define __function_execute_1512678626657_camera_get_begin_script
var _a = argument[0];
return camera_get_begin_script(_a[0]);
#define __function_execute_1512678626657_camera_get_end_script
var _a = argument[0];
return camera_get_end_script(_a[0]);
#define __function_execute_1512678626657_camera_get_view_x
var _a = argument[0];
return camera_get_view_x(_a[0]);
#define __function_execute_1512678626657_camera_get_view_y
var _a = argument[0];
return camera_get_view_y(_a[0]);
#define __function_execute_1512678626657_camera_get_view_width
var _a = argument[0];
return camera_get_view_width(_a[0]);
#define __function_execute_1512678626657_camera_get_view_height
var _a = argument[0];
return camera_get_view_height(_a[0]);
#define __function_execute_1512678626657_camera_get_view_speed_x
var _a = argument[0];
return camera_get_view_speed_x(_a[0]);
#define __function_execute_1512678626657_camera_get_view_speed_y
var _a = argument[0];
return camera_get_view_speed_y(_a[0]);
#define __function_execute_1512678626657_camera_get_view_border_x
var _a = argument[0];
return camera_get_view_border_x(_a[0]);
#define __function_execute_1512678626657_camera_get_view_border_y
var _a = argument[0];
return camera_get_view_border_y(_a[0]);
#define __function_execute_1512678626657_camera_get_view_angle
var _a = argument[0];
return camera_get_view_angle(_a[0]);
#define __function_execute_1512678626657_camera_get_view_target
var _a = argument[0];
return camera_get_view_target(_a[0]);
#define __function_execute_1512678626657_view_get_camera
var _a = argument[0];
return view_get_camera(_a[0]);
#define __function_execute_1512678626657_view_get_visible
var _a = argument[0];
return view_get_visible(_a[0]);
#define __function_execute_1512678626657_view_get_xport
var _a = argument[0];
return view_get_xport(_a[0]);
#define __function_execute_1512678626657_view_get_yport
var _a = argument[0];
return view_get_yport(_a[0]);
#define __function_execute_1512678626657_view_get_wport
var _a = argument[0];
return view_get_wport(_a[0]);
#define __function_execute_1512678626657_view_get_hport
var _a = argument[0];
return view_get_hport(_a[0]);
#define __function_execute_1512678626657_view_get_surface_id
var _a = argument[0];
return view_get_surface_id(_a[0]);
#define __function_execute_1512678626657_view_set_camera
var _a = argument[0];
return view_set_camera(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_visible
var _a = argument[0];
return view_set_visible(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_xport
var _a = argument[0];
return view_set_xport(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_yport
var _a = argument[0];
return view_set_yport(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_wport
var _a = argument[0];
return view_set_wport(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_hport
var _a = argument[0];
return view_set_hport(_a[0],_a[1]);
#define __function_execute_1512678626657_view_set_surface_id
var _a = argument[0];
return view_set_surface_id(_a[0],_a[1]);
#define __function_execute_1512678626657_gesture_drag_time
var _a = argument[0];
return gesture_drag_time(_a[0]);
#define __function_execute_1512678626657_gesture_drag_distance
var _a = argument[0];
return gesture_drag_distance(_a[0]);
#define __function_execute_1512678626657_gesture_flick_speed
var _a = argument[0];
return gesture_flick_speed(_a[0]);
#define __function_execute_1512678626657_gesture_double_tap_time
var _a = argument[0];
return gesture_double_tap_time(_a[0]);
#define __function_execute_1512678626657_gesture_double_tap_distance
var _a = argument[0];
return gesture_double_tap_distance(_a[0]);
#define __function_execute_1512678626657_gesture_pinch_distance
var _a = argument[0];
return gesture_pinch_distance(_a[0]);
#define __function_execute_1512678626657_gesture_pinch_angle_towards
var _a = argument[0];
return gesture_pinch_angle_towards(_a[0]);
#define __function_execute_1512678626657_gesture_pinch_angle_away
var _a = argument[0];
return gesture_pinch_angle_away(_a[0]);
#define __function_execute_1512678626657_gesture_rotate_time
var _a = argument[0];
return gesture_rotate_time(_a[0]);
#define __function_execute_1512678626657_gesture_rotate_angle
var _a = argument[0];
return gesture_rotate_angle(_a[0]);
#define __function_execute_1512678626657_gesture_tap_count
var _a = argument[0];
return gesture_tap_count(_a[0]);
#define __function_execute_1512678626657_gesture_get_drag_time
var _a = argument[0];
return gesture_get_drag_time();
#define __function_execute_1512678626657_gesture_get_drag_distance
var _a = argument[0];
return gesture_get_drag_distance();
#define __function_execute_1512678626657_gesture_get_flick_speed
var _a = argument[0];
return gesture_get_flick_speed();
#define __function_execute_1512678626657_gesture_get_double_tap_time
var _a = argument[0];
return gesture_get_double_tap_time();
#define __function_execute_1512678626657_gesture_get_double_tap_distance
var _a = argument[0];
return gesture_get_double_tap_distance();
#define __function_execute_1512678626657_gesture_get_pinch_distance
var _a = argument[0];
return gesture_get_pinch_distance();
#define __function_execute_1512678626657_gesture_get_pinch_angle_towards
var _a = argument[0];
return gesture_get_pinch_angle_towards();
#define __function_execute_1512678626657_gesture_get_pinch_angle_away
var _a = argument[0];
return gesture_get_pinch_angle_away();
#define __function_execute_1512678626657_gesture_get_rotate_time
var _a = argument[0];
return gesture_get_rotate_time();
#define __function_execute_1512678626657_gesture_get_rotate_angle
var _a = argument[0];
return gesture_get_rotate_angle();
#define __function_execute_1512678626657_gesture_get_tap_count
var _a = argument[0];
return gesture_get_tap_count();
