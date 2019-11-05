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

cooldown = cooldown - 1;

if(currentHP <= 0){
	game_close = true;
	if (keyboard_check_pressed(vk_space))
    {
        game_end();
    }
    instance_destroy();
}