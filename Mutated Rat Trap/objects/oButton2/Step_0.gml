event_inherited();

if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	instance_destroy();	
	if room == rMenu game_end();
	else room_goto(rMenu);
}