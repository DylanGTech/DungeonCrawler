/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor

if (instance_exists(obj_player)){
	
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