event_inherited()
if (image_index < 1) speed = 0;
else speed = spd;

if timer == 0
{
	global.score += 10;
	audio_play_sound(sPoints,1,0,1,0,1);
	instance_destroy();	
}

