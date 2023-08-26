if (caught)
{
	speed = 0;
	image_alpha = 0;
	timer--;
}
else speed = spd;


if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	instance_destroy();	
}