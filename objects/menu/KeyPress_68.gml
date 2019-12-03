//Actioins after menue item is selected

switch(menu_index)
{
	case 0: //HELP
	//...open 'help menu'
		global.menuPause = 1;
		instance_create_layer(0, 0, layer-1, obj_HelpMenu);
		break;
		
	case 1: //Inventory
	//...show inventory
		break;
	
	case 2: //stats
	//...show skill/move progress
		global.menuPause = 1;
		instance_create_layer(0, 0, layer-1, obj_StatsMenu);
		break;
	
	case 3: //Save & Quit
	//..save game and/or quit
		game_end();
		break;
		
}
