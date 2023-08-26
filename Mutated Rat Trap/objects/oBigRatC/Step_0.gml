if (caught)
{
	x = mouse_x;
	y = mouse_y;
	
	speed = 0;
	image_alpha = 0;
	if (mouse_x == mxPrevious)
	{
		timer--;
	}

	mxPrevious = mouse_x;
}
else if (image_index > 6 || image_index < 1) speed = 0;
else speed = spd;



if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	global.score += 40;
	instance_destroy();	
}

