//makes arrow move accross screenw when instance is created
direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-1,1);
speed = 7;
image_angle = direction;