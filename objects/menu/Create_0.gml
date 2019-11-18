//menues position variables
menu_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - 100;
menu_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - 50;

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
buttons = array_length_1d(button);