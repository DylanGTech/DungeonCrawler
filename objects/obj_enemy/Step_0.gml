/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor

if (instance_exists(obj_player) && point_distance(x,y,obj_player.x, obj_player.y)<=256){
	
	//Wrote my own chase function to work with tile collisions
	//move_towards_point(obj_player.x, obj_player.y, spd);
	//script_execute(tilecollision, x + spd, y)
	
	var xdistance = obj_player.x - x
	var ydistance = obj_player.y - y
	
	var angle = arctan2(ydistance, xdistance)
	
	if(!script_execute(tilecollision, x + cos(angle) * spd, y + sin(angle) * spd, false))
	{
		x = x + cos(angle) * spd
		y = y + sin(angle) * spd
	}
}

if (cooldown < 1 && point_distance(x,y,obj_player.x, obj_player.y)<=256)
{
    instance_create_layer(x,y,"projectile",enemy_fireball);
    cooldown = 15;
}

cooldown = cooldown - 1;
if(currentHP <= 0){
	var lootDrop = random(100);
	if(lootDrop == 0){
		instance_create_layer(x, y, "Walls" , obj_enemy);
	}
	else if(lootDrop >= 50){
		instance_create_layer(x, y, "Walls", obj_arrow);	
	}
	instance_destroy();
}