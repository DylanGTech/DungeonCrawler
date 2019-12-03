/// @description Insert description here
// You can write your code in this editor
/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor
if(global.pause){
	exit;	
}
//if (instance_exists(player) && point_distance(x,y,player.x, player.y)<=256){
if (instance_exists(player)){

	//Wrote my own chase function to work with tile collisions
	//move_towards_point(obj_player.x, obj_player.y, spd);
	//script_execute(tilecollision, x + spd, y)
	
	var xdistance = player.x - x
	var ydistance = player.y - y
	
	var angle = arctan2(ydistance, xdistance)
	
	if(!script_execute(tilecollision, x + cos(angle) * spd, y + sin(angle) * spd, false))
	{
		x = x + cos(angle) * spd
		y = y + sin(angle) * spd
	}
}

//if (cooldown < 1 && point_distance(x,y,player.x, player.y)<=256)
if (cooldown < 1 && instance_exists(player))
{
    instance_create_layer(x,y,"projectile",enemy_fireball);
    cooldown = 30;
}

cooldown = cooldown - 1;
if(currentHP <= 0){
	var lootDrop = random(10);
	if(lootDrop == 0){
		instance_create_layer(x, y, "Walls" , obj_enemy);
	}
	else if(lootDrop >= 3){
		if(lootDrop >= 4){
			instance_create_layer(x, y+15, "Walls", heart);	
		}
		if(lootDrop >= 5){
			instance_create_layer(x, y, "Walls", bow);	
		}
		else if(lootDrop >= 6){
			instance_create_layer(x,y, "Walls", sword);	
		}
		else if(lootDrop >= 7){
			instance_create_layer(x,y, "Walls", sword);	
		}
	}
	instance_destroy();
}