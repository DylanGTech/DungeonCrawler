if(entrance_position != global.currentEntrance)
	instance_destroy();

//pause status for all 
// place ' if(global.pause) exit; ' in all step fucntions of all moving obj
global.pause = 0;

// frame speed
image_speed = .5;

//base stats
maxHP = 100;
mana = 50;
vitality = 1;
strength = 1;
agility = 1;
intellect = 1;
spd = 4;
currentHP = 100;
//variable to control time inbetween attacks
cooldown = 0;
cooldown2 = 0;