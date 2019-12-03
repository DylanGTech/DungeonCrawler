// set background
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);


// place text in center
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_font(15);
draw_set_color(c_white);
draw_text(setx-150, sety-150, "Press esc to exit");
draw_set_font(40);
draw_text(setx, sety-100, "*****Stats*****");
draw_set_font(30);
draw_text(setx, sety-50, "Health  : " + string(player.maxHP) +"/"+string(player.maxHealth));
draw_text(setx, sety, "Agility : " + string(player.agility) +"/"+string(player.maxAgility));
draw_text(setx, sety+50, "Strength: " + string(player.strength)+"/"+string(player.maxStrength));