function tdp_input_key(arg0, arg1 = -4) constructor
{
    static update = function(arg0 = -1)
    {
        pressed = false;
        held = false;
        released = false;
        axis_value = 0;
        
        for (var i = 0; i < array_length(actions); i++)
        {
            var b = actions[i];
            b.update(arg0);
            
            if (b.pressed)
                pressed = true;
            
            if (b.held)
                held = true;
            
            if (b.released)
                released = true;
            
            actions[i] = b;
        }
    };
    
    static has_value = function(arg0, arg1, arg2 = 0)
    {
        for (var i = 0; i < array_length(actions); i++)
        {
            var b = actions[i];
            
            if (b.type == arg0 && b.value == arg1)
            {
                if (arg0 != controls.joystick || b.joystick_direction == arg2)
                    return true;
            }
        }
        
        return false;
    };
    
    name = arg0;
    pressed = false;
    held = false;
    released = false;
    axis_value = 0;
    
    if (arg1 == noone)
        actions = array_create(0);
    else
        actions = arg1;
}

function tdp_input_action(arg0, arg1, arg2 = 0) constructor
{
    static update = function(arg0 = -1)
    {
        switch (type)
        {
            case controls.keyboard:
                if (is_array(value))
                {
                    var last_held = held;
                    axis_value = keyboard_check(value[1]) - keyboard_check(value[0]);
                    pressed = (keyboard_check_pressed(value[1]) - keyboard_check_pressed(value[0])) != 0;
                    held = axis_value != 0;
                    released = axis_value == 0 && last_held;
                }
                else
                {
                    pressed = keyboard_check_pressed(value);
                    held = keyboard_check(value);
                    released = keyboard_check_released(value);
                }
                
                break;
            
            case controls.gamepad:
                if (is_array(value))
                {
                    var last_held = held;
                    axis_value = gamepad_button_check(arg0, value[1]) - gamepad_button_check(arg0, value[0]);
                    pressed = (gamepad_button_check_pressed(arg0, value[1]) - gamepad_button_check_pressed(arg0, value[0])) != 0;
                    held = axis_value != 0;
                    released = axis_value == 0 && last_held;
                }
                else
                {
                    pressed = gamepad_button_check_pressed(arg0, value);
                    held = gamepad_button_check(arg0, value);
                    released = gamepad_button_check_released(arg0, value);
                }
                
                break;
            
            case controls.joystick:
                var last_held = held;
                var hdz, vdz, pdz;
                
                if (!custom_deadzone)
                {
                    pdz = global.input_controller_deadzone_press;
                    hdz = global.input_controller_deadzone_horizontal;
                    vdz = global.input_controller_deadzone_vertical;
                }
                else
                {
                    pdz = variable_global_get(custom_deadzone_press);
                    hdz = variable_global_get(custom_deadzone_horizontal);
                    hdz = variable_global_get(custom_deadzone_vertical);
                }
                
                var dz;
                
                switch (value)
                {
                    case gp_axislh:
                    case gp_axisrh:
                        dz = hdz;
                        break;
                    
                    case gp_axislv:
                    case gp_axisrv:
                        dz = vdz;
                        break;
                }
                
                axis_value = gamepad_axis_value(arg0, value);
                var press_check;
                
                if (joystick_direction == 0)
                {
                    press_check = axis_value > pdz || axis_value < -pdz;
                    pressed = press_check && !stickpressed;
                    held = axis_value > dz || axis_value < -dz;
                    released = axis_value > -dz && axis_value < dz && last_held;
                }
                else if (joystick_direction == 1)
                {
                    press_check = axis_value > pdz;
                    pressed = press_check && !stickpressed;
                    held = axis_value > dz;
                    released = !held && last_held;
                }
                else if (joystick_direction == -1)
                {
                    press_check = axis_value < -pdz;
                    pressed = press_check && !stickpressed;
                    held = axis_value < -dz;
                    released = !held && last_held;
                }
                
                if (press_check)
                    stickpressed = true;
                else
                    stickpressed = false;
                
                break;
        }
    };
    
    type = arg0;
    value = arg1;
    has_axis_value = false;
    axis_value = 0;
    
    if (type == controls.joystick)
    {
        has_axis_value = true;
        custom_deadzone = false;
        joystick_direction = arg2;
        custom_deadzone_press = "input_controller_deadzone_press";
        custom_deadzone_vertical = "input_controller_deadzone_vertical";
        custom_deadzone_horizontal = "input_controller_deadzone_deadzone";
        custom_deadzone_side = "input_controller_deadzone_side";
        axis_value = 0;
        stickpressed = false;
    }
    
    if (is_array(value))
    {
        has_axis_value = true;
        axis_value = 0;
    }
    
    pressed = false;
    held = false;
    released = false;
}
