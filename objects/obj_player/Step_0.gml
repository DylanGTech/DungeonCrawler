//player move using WASD

if keyboard_check(ord("D"))
{
x=x+spd;
}

if keyboard_check(ord("A"))
{
x=x-spd;
}

if keyboard_check(ord("S"))
{
y=y+spd;
}

if keyboard_check(ord("W"))
{
y=y-spd;
}

//Attack
//cooldown works based off of frames, want to implement time functions
//so it feels smoother
if (mouse_check_button(mb_left)) && (cooldown < 1)
{	
	instance_create_layer(x,y,"projectile",obj_arrow);
	cooldown = 35;
}

cooldown = cooldown - 1;