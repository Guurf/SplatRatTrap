event_inherited()
if (image_index < 1) speed = 0;
else speed = spd;

if timer == 0
{
	global.score += 10;
	instance_destroy();	
}

