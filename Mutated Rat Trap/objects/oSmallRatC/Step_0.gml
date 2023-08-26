event_inherited()
if (image_index < 1) speed = 0;
else speed = spd;

if timer == 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	global.score += 20;
	instance_destroy();	
}


if place_meeting(x,y,oRatTrap)
{
	y+=evade;
}

