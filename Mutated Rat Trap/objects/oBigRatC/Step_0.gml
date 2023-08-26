if (caught)
{
	x = oRatTrap.x;
	y = oRatTrap.y;
	
	speed = 0;
	image_alpha = 0;
	if (oRatTrap.x == rxPrevious)
	{
		timer--;
	}

	rxPrevious = oRatTrap.x;
}
else if (image_index > 6 || image_index < 1) speed = 0;
else speed = spd;



if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	audio_play_sound(sPoints,1,0,1,0,3);
	global.score += 40;
	instance_destroy();	
}

