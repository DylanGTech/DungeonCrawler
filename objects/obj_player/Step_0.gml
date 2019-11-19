//player move using WASD

if keyboard_check(ord("D"))
{
	if(!script_execute(tilecollision, x + spd, y, false))
		x = x + spd
}

if keyboard_check(ord("A"))
{
	if(!script_execute(tilecollision, x - spd, y, false))
		x = x - spd
}

if keyboard_check(ord("S"))
{
	if(!script_execute(tilecollision, x, y + spd, false))
		y = y + spd
}

if keyboard_check(ord("W"))
{
	if(!script_execute(tilecollision, x, y - spd, false))
		y = y - spd
}

//Attack
//cooldown works based off of frames, want to implement time functions
//so it feels smoother
if (mouse_check_button(mb_left)) && (cooldown < 1)
{	
	instance_create_layer(x,y,"projectile",obj_arrow);
	cooldown = 35;
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

if(cooldown > 0)
	cooldown = cooldown - 1;

if(currentHP <= 0){
    instance_destroy();
}