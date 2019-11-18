// do nothing when game paused
if(global.pause){
	exit;
}


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

// only fire if player is 'alive'
if (cooldown < 1 && instance_exists(player))
{
	instance_create_layer(x,y,"projectile",enemy_fireball);
	cooldown = 30;
}

cooldown = cooldown - 1;
if(currentHP <= 0){
	instance_destroy();
}