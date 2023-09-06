lifetime++;
if lifetime < 5 && (image_index == 0 || image_index == 2)
{
	image_angle = point_direction(x,y,oRatTrap.x,oRatTrap.y);	
}
if (lifetime > 6)
{
scale -= 0.1;
image_xscale = scale;
image_yscale = scale;
if (scale <= 0) instance_destroy();
}