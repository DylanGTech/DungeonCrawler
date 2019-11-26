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

if(bbox_top < 0)
{
	if(global.currentRoomy > 0)
	{
		global.currentRoomy--;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
				global.entrance_id = directionType.down;
				if(room == r1) room_restart();
				else room_goto(r1);
				break;
		}
	}
}
if(bbox_left < 0)
{
	if(global.currentRoomx > 0)
	{
		global.currentRoomx--;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
				global.entrance_id = directionType.right;
				if(room == r1) room_restart();
				else room_goto(r1);
				break;
		}
	}
}
if(bbox_bottom > room_height)
{
	if(global.currentRoomy < 7)
	{
		global.currentRoomy++;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
				global.entrance_id = directionType.up;
				if(room == r1) room_restart();
				else room_goto(r1);
				break;
		}
	}
}
if(bbox_right > room_width)
{
	if(global.currentRoomx < 7)
	{
		global.currentRoomx++;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
			case 1:
			case 2:
			case 3:
			case 4:
			case 5:
			case 6:
			case 7:
				global.entrance_id = directionType.left;
				if(room == r1) room_restart();
				else room_goto(r1);
				break;
		}
	}
}


cooldown2 = cooldown2 - 1;

if(currentHP <= 0){
	instance_create_layer(0, 0, 0, obj_GameOver);
    instance_destroy();
}

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
