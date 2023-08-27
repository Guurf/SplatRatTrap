event_inherited();

if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	instance_destroy();	
	room_goto(Room1);
}