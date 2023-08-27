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
	else breakout--;

	rxPrevious = oRatTrap.x;
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
	audio_play_sound(sPoints,1,0,1,0,1);
	global.score += 40;
	instance_destroy();	
}

if breakout == 0
{
	oRatTrap.reload = 60;
	oRatTrap.state = "reload";
	speed = spd;
	image_alpha = 1;
	caught = false;
	audio_play_sound(sNyehHeh,1,0,1,0,random_range(0.8,1.5));
	breakout = 60;
}
