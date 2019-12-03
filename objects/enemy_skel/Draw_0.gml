/// @description Insert description here
// You can write your code in this editor
draw_self();
var pc;
pc = (currentHP / maxHP) * 100;
draw_healthbar(x-22, y-32, x+22, y-29, pc, c_black, c_red, c_lime, 0, true, true)