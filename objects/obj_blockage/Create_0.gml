switch(entrance_placement)
{
	case 1:
		if(global.currentRoomy > 0) instance_destroy();
		break;
	case 2:
		if(global.currentRoomy < 7) instance_destroy();
		break;
	case 3:
		if(global.currentRoomx > 0) instance_destroy();
		break;
	case 4:
		if(global.currentRoomx < 7) instance_destroy();
		break;
}