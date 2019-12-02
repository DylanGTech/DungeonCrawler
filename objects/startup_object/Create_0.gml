/// @description Insert description here
// You can write your code in this editor

script_execute(createmap);
room_goto(r0);

//base stats
global.maxHP = 100;
global.mana = 50;
global.vitality = 1;
global.strength = 1;
global.agility = 1;
global.intellect = 1;
global.spd = 4;
global.currentHP = 100;
//variable to control time inbetween attacks
global.cooldown = 0;
global.cooldown2 = 0;