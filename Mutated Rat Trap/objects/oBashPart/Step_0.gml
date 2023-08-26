lifetime++;
speed -= speed / 20;
if speed <= 0 speed = 0;
if (lifetime > 20)
{
	scale -= 0.1;
	image_xscale = scale;
	image_yscale = scale;
	if (scale <= 0) instance_destroy();
}