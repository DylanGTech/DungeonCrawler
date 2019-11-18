// change pause status
if(global.pause == 0)
{
	global.pause = 1;
	instance_create_layer(0, 0, 0, menu);
}
else{
	global.pause = 0;
	instance_destroy(menu);
}