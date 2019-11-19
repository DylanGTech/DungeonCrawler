if(global.pause)
{
	image_index = image_index;
	exit;
}

// get vertical and horizontal input
hInput = keyboard_check(ord("D")) - keyboard_check(ord("A"));
vInput = keyboard_check(ord("S")) - keyboard_check(ord("W"));

// frame speed & direction
if(hInput != 0 or vInput != 0)
{
	dir = point_direction(0, 0, hInput, vInput);
	movex = lengthdir_x(spd, dir);
	movey = lengthdir_y(spd, dir);

	// move palyer
	x += movex;
	y += movey;
	
	// set sprite frame based on direction pointing
	switch(dir)
	{
	case 0: sprite_index = sprite_right;
		break;
	case 45: sprite_index = sprite_up_right;
		break;
	case 90: sprite_index = sprite_up;
		break;
	case 135: sprite_index = sprite_up_left;
		break;
	case 180: sprite_index = sprite_left;
		break;
	case 225: sprite_index = sprite_down_left;
		break;
	case 270: sprite_index = sprite_down;
		break;
	case 315: sprite_index = sprite_down_right;
		break;
	}
}
else
	image_index = 0;
	
	
	// Attack/Combat
//cooldown works based off of frames, want to implement time functions
//so it feels smoother
if (mouse_check_button(mb_left)) && (cooldown < 1)
{	
	instance_create_layer(x,y,"projectile",obj_arrow);
	cooldown = 35;
}

cooldown = cooldown - 1;

if(mouse_check_button(mb_right)) && (cooldown2 < 1){
	var Arrow = instance_create_layer(x,y,"projectile",object6)
	for(var i = 0; i < 4; i++){
		
		var Arrow = instance_create_layer(x,y,"projectile",object6)
		//Arrow.image_angle = i*3;
		Arrow.direction += i + 3;
	}
	for(var i = 0; i < 4; i++){
		
		var Arrow = instance_create_layer(x,y,"projectile",object6)
		//Arrow.image_angle = i*3;
		Arrow.direction -= i - 3;
	}
	
	cooldown2 = 100;
	
}
cooldown2 = cooldown2 - 1;

if(currentHP <= 0){
	instance_create_layer(0, 0, 0, obj_GameOver);
    instance_destroy();
}