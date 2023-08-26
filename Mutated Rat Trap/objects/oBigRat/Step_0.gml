if (caught)
{
	x = oRatTrap.x;
	y = oRatTrap.y;
	
	speed = 0;
	image_alpha = 0;
	if (oRatTrap.image_angle != raPrevious)
	{
		 timer--;
	}
	raPrevious = oRatTrap.image_angle;
}
else if (image_index > 6 || image_index < 1) speed = 0;
else speed = spd;



if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	global.score += 30;
	instance_destroy();	
}

