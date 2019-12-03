// fade background

draw_set_color(c_silver);
draw_rectangle(0, 0, room_width, room_height, false);

// place text in center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);

draw_set_font(15);
draw_text(setx-150, sety-150, "Press esc to exit");

draw_set_font(45);
draw_text(setx, sety-100, "****HELP MENU****");

draw_set_font(30);
draw_text(setx, sety-50, "*Navigate Menu*");
draw_line_width(setx-100, sety-43, setx+100, sety-43, 1);

draw_set_font(20);
draw_text(setx, sety-25, "W -> Move up");
draw_text(setx, sety-10, "S -> Move down");
draw_text(setx, sety+5, "D -> Select menu option");
draw_text(setx, sety+20, "esc -> open/leave menu");


draw_set_font(30);
draw_text(setx, sety+70, "*Move Player*");
draw_line_width(setx-100, sety+77, setx+100, sety+77, 1.5);

draw_set_font(20);
draw_text(setx, sety+95, "W -> Move up");
draw_text(setx, sety+110, "A -> Move left");
draw_text(setx, sety+125, "S -> Move down");
draw_text(setx, sety+140, "D -> Move right");
draw_text(setx, sety+155, "Left-Click -> Shoot arrow");
draw_text(setx, sety+170, "Right-Click -> Shoot volly");
