var xx, yy, tm, x0, y0, col, xPoints, yPoints, i, j;
xx = argument0;
yy = argument1;
//save current position
x0 = x;
y0 = y;
//retrieve the collision tile layer's ID
//replace "Collision" with the name of the layer containing collision tiles
tm = layer_tilemap_get_id(layer_get_id("Collisions"));
//(temporarily) move to the position we want to check
x = xx;
y = yy;
//initialize arrays containing all of the points along each axis that you want to check
xPoints = [x,bbox_right,bbox_left];
yPoints = [y,bbox_top,bbox_bottom];
//initialize the return variable to false
col = false;
//iterate through all of the possible points of contact and check if there is a tile at that pixel
for (i = 0; i < array_length_1d(xPoints); i++) {
	for (j = 0; j < array_length_1d(yPoints); j++) {
		col = tilemap_get_at_pixel(tm,xPoints[i],yPoints[j]);
		if (col) {
			break;
		}
	}
	if (col) {
		break;
	}
}
//return to the original position
x = x0;
y = y0;
return col;