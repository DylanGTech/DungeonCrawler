if(entrance_position != global.currentEntrance)
	instance_destroy();

//pause status for all 
// place ' if(global.pause) exit; ' in all step fucntions of all moving obj
global.pause = 0;
global.menupause = 0;

// frame speed
image_speed = .5;

// stats
maxAgility = 10;
maxHealth = 200;
maxStrength = 20;
