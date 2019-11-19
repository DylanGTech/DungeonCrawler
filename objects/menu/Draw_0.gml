//Draw menue screen

if(global.pause)
{
	//variable to loop through button array
	var i = 0;

	//loop Xbutton(lenght) times
	repeat(buttons)
	{
		draw_set_font(menu_font);		//font created
		draw_set_halign(fa_center);		//center text except for defult aligned left
		draw_set_valign(fa_middle);		//Draw in middle (vertically)
		
		xx = menu_x;
		yy = menu_y + (button_h + button_padding) * i;
	
		draw_set_color(c_black);
		draw_rectangle(xx, yy, xx + button_w, yy + button_h, false);
	
		draw_set_color(c_silver);		//text color
		//make selected menu item differnt color
		if(menu_index == i)
			draw_set_color(c_olive);
		
		//place menu items; move y for menue spacing
		draw_text(xx + button_w/2, yy + button_h/2, button[i]);
		i++;
	}
}