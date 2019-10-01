/// @description Insert description here
// You can write your code in this editor

if keyboard_check(ord("D"))
{
	if(!script_execute(tilecollision, x + spd, y))
		x = x + spd
}

if keyboard_check(ord("A"))
{
	if(!script_execute(tilecollision, x - spd, y))
		x = x - spd
}

if keyboard_check(ord("S"))
{
	if(!script_execute(tilecollision, x, y + spd))
		y = y + spd
}

if keyboard_check(ord("W"))
{
	if(!script_execute(tilecollision, x, y - spd))
		y = y - spd
}


