global.startx = floor(random(8)); //coordinates of start: (x, y)
global.starty = floor(random(8));
global.endx = floor(random(8)); //coordinates of end: (x, y)
global.endy = floor(random(8));

var i;
for(i = 0; i < 64; i++)
{
	//if(random(1) == 1)
	//{
		global.rooms[floor(i / 8), i % 8] = floor(random(4));
		global.roomclearance[floor(i / 8), i % 8] = false;
	//}
}

global.rooms[global.startx, global.starty] = 0;
global.roomclearance[global.startx, global.starty] = true;

global.currentRoomx = global.startx;
global.currentRoomy = global.starty;

enum directionType {
	none = 0,
	up = 1,
	down = 2,
	left = 3,
	right = 4
}

global.currentEntrance = directionType.none;

