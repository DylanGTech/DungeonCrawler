if(entrance_position != global.currentEntrance)
	instance_destroy();

//pause status for all 
// place ' if(global.pause) exit; ' in all step fucntions of all moving obj
global.pause = 0;

// frame speed
image_speed = .5;