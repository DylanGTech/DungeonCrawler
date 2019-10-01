/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor
/*if distance_to_object(PlayerMove)<=widthOfTheScreen{    //prevents enemy from aggroing out of bounds of vision
      if (collision_line(x,y,PlayerMove.x,PlayerMove.y,oBlock,true,true) = noone) {
           direction=point_direction(x,y,PlayerMove.x,PlayerMove.y);
           speed= slowerThanWalkingSpeed;
    }
}*/
if (instance_exists(obj_player)){
	move_towards_point(obj_player.x, obj_player.y, spd);
}