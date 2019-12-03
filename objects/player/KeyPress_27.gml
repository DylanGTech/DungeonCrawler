// change pause status
if(global.menuPause == 0){
	if(global.pause == 0)
	{
		global.pause = 1;
		instance_create_layer(0, 0, layer, menu);
	}
	else{
		global.pause = 0;
		instance_destroy(menu);
	}
}
