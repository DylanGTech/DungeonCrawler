//jump through menue items

//each key returns 1 if pressed (menue move could either be -1, 0, or 1)
//check for up/down arrow movement
menu_move = keyboard_check_pressed(ord("S")) - keyboard_check_pressed(ord("W"));

//set index, depending on buttons pressed
menu_index += menu_move;

//if index out of bouns, set as last menu item
if(menu_index < 0)
	menu_index = buttons-1;
	
//if index out of bounds set as first menu item
if(menu_index > buttons-1)
	menu_index = 0;

//get curent menue item
last_selected = menu_index;

//menue sound
/*
if(menu_index != last_selected)
	audio_play_sound(audioName, 1, false);
*/