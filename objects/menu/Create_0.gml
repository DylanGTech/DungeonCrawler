//pause status for all 
// place ' if(global.pause) exit; ' in all step fucntions of all moving obj
global.pause = 0;

//menues position variables
menu_x = x;
menu_y = y;
button_h = 32;					//heaight of buttons
button_w = 256;					//button width
button_padding = 8;				//space between menu buttons
menu_index = 0;					//which menu item is selected
last_selected = 0;				//menu index to be highlighted(selected)

//menu buttons
button[0] = "Map";
button[1] = "Inventory";
button[2] = "Skills";
button[3] = "Save/Quit";

//amount of buttons in array button (4)
buttons = array_length_1d(button)