ADD_OBJECT_EVENT_GML_HOOK;
selected_option = 0;

stringoffset = 0;
scrollspeed = 2;
titlefont = global.bigfont;
subtextfont = global.smallfont2;
subtextfont2 = global.smallfont3;

cursorindex = 0
discord_dialogue = noone
close_key = noone
//up_key = noone
//down_key = noone
textstring = "ERROR: file[changelog.txt] DOES NOT EXIST."
textstring2 = ""

page = noone;

text_arr = 
[
	new port_mainmenu_option("LEVEL SELECT", 480, 350, port_mainmenu_level_select),
	new port_mainmenu_option("CHANGELOG", 480, 390, port_mainmenu_newstuff_click, port_mainmenu_newstuff_step, port_mainmenu_newstuff_draw),
	new port_mainmenu_option("PORT OPTIONS", 480, 430, port_mainmenu_options_click, port_mainmenu_options_step, port_mainmenu_options_draw),
	new port_mainmenu_option("CREDITS", 480, 470, port_mainmenu_credits_click, port_mainmenu_credits_step, port_mainmenu_credits_draw),
	new port_mainmenu_option("DISCORD", 480, 510, port_mainmenu_discord_click)
]

max_options = array_length(text_arr) - 1;

drawsquareoffset = 0;
page_cursorind = 0;
port_options = 
[
	new port_config_option
	(
		"FINAL MOVESET", 
		obj_player1.finalmoveset, 
		function()
		{	
			with(obj_player1)
			{
				finalmoveset = !finalmoveset;
				other.enabled = finalmoveset;
			}
		}
	),
	new port_config_option
	(
		"OLD ASSETS", 
		global.oldsprites, 
		function()
		{
			global.oldsprites = !global.oldsprites;
			enabled = global.oldsprites;
		}
	),
	new port_config_option
	(
		"ENABLE RANKS", 
		global.showrank, 
		function()
		{
			global.showrank = !global.showrank;
			enabled = global.showrank;
		}
	),
	new port_config_option
	(
		"OLD HUD", 
		global.oldhud, 
		function()
		{
			global.oldhud = !global.oldhud;
			enabled = global.oldhud;
		}
	)
];

event_user(0);