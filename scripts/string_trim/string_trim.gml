function string_trim(Inputstring, side = "both", char = " "){
/// string_trim(string Inputstring, string side="both", string char=" ")
// Description: Removes leading and trailing matches of a string.
// --- Arguments ---
// Inputstring - the input to trim
// (optional) side - "left", "right", or "both". Uses "both" when empty.
// (optional) char - the character to remove. Uses the " " character (space) when empty
/// Created by Remixful
if argument_count >= 2 { if (argument[1] == "left" or argument[1] == "right" or argument[1] == "both") side = argument[1] }
if argument_count == 3 { char = string(argument[2]) }
var new_string = Inputstring
if side == "left" or side == "both" {
    var _start = 0
    for(var i = 1;i <= string_length(new_string);i++){
        if string_char_at(new_string, i) != char{
            _start = i - 1
            break
        }
    }
    if _start != 0{new_string = string_delete(new_string,1,_start)}
}
if side == "right" or side == "both"{
    var _end = 0
    for(var i = string_length(new_string);i > 0;i--){
        if string_char_at(new_string, i) != char{
            _end = i + 1
            break
        }
    }
    if _end != 0{new_string = string_delete(new_string,_end,string_length(new_string))}
}
return new_string
}