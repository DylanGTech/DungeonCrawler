
/*if distance_to_object(PlayerMove)<=widthOfTheScreen{    //prevents enemy from aggroing out of bounds of vision
      if (collision_line(x,y,PlayerMove.x,PlayerMove.y,oBlock,true,true) = noone) {
           direction=point_direction(x,y,PlayerMove.x,PlayerMove.y);
           speed= slowerThanWalkingSpeed;
    }
}*/

//enemy walks towards the player at a slightly slower speed
if (instance_exists(obj_player)){
	move_towards_point(obj_player.x, obj_player.y, spd);
}