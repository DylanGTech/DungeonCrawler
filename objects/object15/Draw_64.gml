/// @description Insert description here
// You can write your code in this editor
draw_sprite(bar, 0, 306.5, 678);

draw_sprite_ext(cd1, 0, 357.5, 750, 
max(0, global.cooldown/global.cooldownMax), 1, 90, c_white, .5);

draw_sprite_ext(cd1, 0, 447.5, 750, 
max(0, global.cooldown2/global.cooldownMax2), 1, 90, c_white, .5);
