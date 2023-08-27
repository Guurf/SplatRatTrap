if (caught)
{
	hp--;
	caught = 0;
	scale-=0.2;
}

//else if (image_index > 6 || image_index < 1) speed = 0;
else if (image_index < 2) speed = 0;
else speed = spd;
image_xscale = scale;
image_yscale = scale;


if hp <= 0
{
	instance_create_layer(x,y-5,"Dev",oScorePopUp, 
	{
		image_index : points
	});
	audio_play_sound(sPoints,1,0,1,0,0.4);
	global.score += 60;
	instance_destroy();
	instance_create_layer(x,y,"Rats",oSmallRatC);
}