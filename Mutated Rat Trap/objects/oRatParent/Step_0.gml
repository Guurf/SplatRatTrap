if (caught)
{
	speed = 0;
	image_alpha = 0;
	timer--;
}
else 
{
	//Trail
	if (trailTimer-- <= 0)
	{
		var _randX = irandom_range(x+7,x+9);
		instance_create_layer(_randX,y+4,"Trail",oTrail,{image_index : 1});	
		trailTimer = trailInterval;
	}
	speed = spd;
}


if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	instance_destroy();	
}

