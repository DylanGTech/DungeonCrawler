global.startx = random(7); //coordinates of start: (x, 0)
global.starty = 0
global.endx = random(7); //coordinates of end: (x, 7)
global.endy = 7

var i;
for(i = 0; i < 64; i++)
{
	if(random(1) == 1)
	{
		global.rooms[i / 8, i % 8] = random(7);
		global.roomclearance[i / 8, i % 8] = false;
	}
}

global.rooms[global.startx, global.starty] = 0;
global.roomclearance[global.startx, global.starty] = true;