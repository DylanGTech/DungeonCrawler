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
	movex = lengthdir_x(global.spd, dir);
	movey = lengthdir_y(global.spd, dir);

	// move player
	if(!script_execute(tilecollision, x + movex, y, false) and not collision_rectangle(bbox_left + movex, bbox_top, bbox_right + movex, bbox_bottom, obj_blockage, false, true)) x += movex;
	if(!script_execute(tilecollision, x, y + movey, false) and not collision_rectangle(bbox_left, bbox_top + movey, bbox_right, bbox_bottom + movey, obj_blockage, false, true))y += movey;
	
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
if (mouse_check_button(mb_left)) && (global.cooldown < 1)
{	
	instance_create_layer(x,y,"projectile",obj_arrow);
	global.cooldown = 35;
}

global.cooldown = global.cooldown - 1;

if(mouse_check_button(mb_right)) && (global.cooldown2 < 1){
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
	
	global.cooldown2 = 100;
	
}

global.cooldown2 = global.cooldown2 - 1;

if(global.currentHP <= 0){
	instance_create_layer(0, 0, layer, obj_GameOver);
    instance_destroy();
}

if(bbox_top < 0)
{
	if(global.currentRoomy > 0)
	{
		global.currentRoomy--;
		global.currentEntrance = directionType.down;
		newRoom = room;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
				newRoom = r0;
				break;
			case 1:
				newRoom = r1;
				break;
			case 2:
				newRoom = r2;
				break;
			case 3:
				newRoom = r3;
				break;
		}
		if(room == newRoom) room_restart();
		else room_goto(newRoom);
	}
}
if(bbox_left < 0)
{
	if(global.currentRoomx > 0)
	{
		global.currentRoomx--;
		global.currentEntrance = directionType.right;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
				newRoom = r0;
				break;
			case 1:
				newRoom = r1;
				break;
			case 2:
				newRoom = r2;
				break;
			case 3:
				newRoom = r3;
				break;
		}
		if(room == newRoom) room_restart();
		else room_goto(newRoom);
	}
}
if(bbox_bottom > room_height)
{
	if(global.currentRoomy < 7)
	{
		global.currentRoomy++;
		global.currentEntrance = directionType.up;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
				newRoom = r0;
				break;
			case 1:
				newRoom = r1;
				break;
			case 2:
				newRoom = r2;
				break;
			case 3:
				newRoom = r3;
				break;
		}
		if(room == newRoom) room_restart();
		else room_goto(newRoom);
	}
}
if(bbox_right > room_width)
{
	if(global.currentRoomx < 7)
	{
		global.
		
		global.currentRoomx++;
		global.currentEntrance = directionType.left;
		switch(global.rooms[global.currentRoomx, global.currentRoomy])
		{
			case 0:
				newRoom = r0;
				break;
			case 1:
				newRoom = r1;
				break;
			case 2:
				newRoom = r2;
				break;
			case 3:
				newRoom = r3;
				break;
		}
		
		if(room == newRoom) room_restart();
		else room_goto(newRoom);
	}
}



