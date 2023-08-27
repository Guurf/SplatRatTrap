if (caught)
{
	x = oRatTrap.x;
	y = oRatTrap.y;
	
	speed = 0;
	image_alpha = 0;
	if (oRatTrap.image_angle != raPrevious)
	{
		var spinSpeed = oRatTrap.image_angle - raPrevious;
		show_debug_message(spinSpeed);
		if (spinSpeed > 10 || spinSpeed < -10) timer--;
	}
	raPrevious = oRatTrap.image_angle;
}
else if (image_index > 6 || image_index < 1) speed = 0;
else 
{
	//Trail
	if (trailTimer-- <= 0)
	{
		var _randX = irandom_range(x+3,x+5);
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
	audio_play_sound(sPoints,1,0,1,0,1.5);
	global.score += 30;
	instance_destroy();	
}

