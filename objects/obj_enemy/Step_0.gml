<<<<<<< HEAD

/*if distance_to_object(PlayerMove)<=widthOfTheScreen{    //prevents enemy from aggroing out of bounds of vision
      if (collision_line(x,y,PlayerMove.x,PlayerMove.y,oBlock,true,true) = noone) {
           direction=point_direction(x,y,PlayerMove.x,PlayerMove.y);
           speed= slowerThanWalkingSpeed;
    }
}*/

//enemy walks towards the player at a slightly slower speed
=======
/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor

>>>>>>> master
if (instance_exists(obj_player)){
	
	//Wrote my own chase function to work with tile collisions
	//move_towards_point(obj_player.x, obj_player.y, spd);
	//script_execute(tilecollision, x + spd, y)
	
	var xdistance = obj_player.x - x
	var ydistance = obj_player.y - y
	
	var angle = arctan2(ydistance, xdistance)
	
	if(!script_execute(tilecollision, x + cos(angle) * spd, y + sin(angle) * spd))
	{
		x = x + cos(angle) * spd
		y = y + sin(angle) * spd
	}
}