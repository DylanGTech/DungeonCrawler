// fade background
draw_set_alpha(.90);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);

// place text in center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(GameOver);
draw_set_color(c_white);
draw_text(setx, sety-100, "Game Over");
draw_text(setx, sety, "Press R to restart");