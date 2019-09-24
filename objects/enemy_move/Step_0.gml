/// @description Function dictates movement of enemy when they are a ceratin distance from the player
// You can write your code in this editor
if distance_to_object(player)<=widthOfTheScreen{    //prevents enemy from aggroing out of bounds of vision
      if (collision_line(x,y,player.x,player.y,oBlock,true,true) = noone) {
           direction=point_direction(x,y,player.x,player.y);
           speed= slowerThanWalkingSpeed;
    }
}