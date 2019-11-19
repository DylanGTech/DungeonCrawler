if(global.pause)
{
	image_index = 0;
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

if(currentHP <= 0){
    instance_destroy();
}