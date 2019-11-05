/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor

if (instance_exists(obj_player)){
	
	//Wrote my own chase function to work with tile collisions
	//move_towards_point(obj_player.x, obj_player.y, spd);
	//script_execute(tilecollision, x + spd, y)
	if(global.pause){
		exit;
	}

	var xdistance = obj_player.x - x
	var ydistance = obj_player.y - y
	
	var angle = arctan2(ydistance, xdistance)
	
	if(!script_execute(tilecollision, x + cos(angle) * spd, y + sin(angle) * spd, false))
	{
		x = x + cos(angle) * spd
		y = y + sin(angle) * spd
	}
}

if (cooldown < 1)
{
    instance_create_layer(x,y,"projectile",enemy_fireball);
    cooldown = 15;
}

cooldown = cooldown - 1;
if(currentHP <= 0){
    instance_destroy();
}