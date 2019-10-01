//player move using WASD

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

<<<<<<< HEAD
//Attack
//cooldown works based off of frames, want to implement time functions
//so it feels smoother
if (mouse_check_button(mb_left)) && (cooldown < 1)
{	
	instance_create_layer(x,y,"projectile",obj_arrow);
	cooldown = 35;
}

cooldown = cooldown - 1;
=======

>>>>>>> master
