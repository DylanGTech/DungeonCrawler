var xx, yy, walls, liquids, isAirborne, x0, y0, col, xPoints, yPoints, i, j;
xx = argument0;
yy = argument1;
isAirborne = argument2
//save current position
x0 = x;
y0 = y;
//retrieve the collision tile layer's ID
//replace "Collision" with the name of the layer containing collision tiles
walls = layer_tilemap_get_id(layer_get_id("Walls"));
liquids = layer_tilemap_get_id(layer_get_id("Liquids"));

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
		col = tilemap_get_at_pixel(walls,xPoints[i],yPoints[j]);
		if (col) {
			x = x0
			y = y0
			return col
		}
	}
	if (col) {
		x = x0
		y = y0
		return col
	}
}

if(!isAirborne)
{
	for (i = 0; i < array_length_1d(xPoints); i++) {
		for (j = 0; j < array_length_1d(yPoints); j++) {
			col = tilemap_get_at_pixel(liquids,xPoints[i],yPoints[j]);
			if (col) {
				x = x0
				y = y0
				return col
			}
		}
		if (col) {
			x = x0
			y = y0
			return col
		}
	}
}

//return to the original position
x = x0;
y = y0;
return col;