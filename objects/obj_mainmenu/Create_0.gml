selected_option = 0
max_options = 3
prev_key_jump2 = 0
newstuff = 0
credits = 0
stickpressed = 0
stringoffset = 0
scrollspeed = 2
titlefont = global.creditsfont
subtextfont = global.smallfont2
subtextfont2 = global.smallfont2
mcpigicon = spr_MCPIGicon
mcpigiconoffsetx = -100
mcpigiconoffsety = 0
tngicon = spr_TNGicon
tngiconoffsetx = -120
tngiconoffsety = 0
communityicon = spr_COMMUNITYicon
communityiconoffsetx = -150
communityiconoffsety = 0
cursorindex = 0
discorddialogue = noone
if(file_exists("newstuff.txt")){
	var file_buffer = buffer_load("newstuff.txt");
	textstring = buffer_read(file_buffer, buffer_string);
	buffer_delete(file_buffer);
} else {
	textstring = "ERROR: file[newstuff.txt] DOES NOT EXIST."
}