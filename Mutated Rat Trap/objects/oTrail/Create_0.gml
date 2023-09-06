lifetime = 0;
image_angle = point_direction(x,y,oRatTrap.x,oRatTrap.y);
if oRatTrap.acc <= 4 
{
	scale = random_range(0.8,1.3);
	image_index = 0;
}
else if oRatTrap.acc > 4 
{
	scale = random_range(1.3,2);
	image_index = 2;
}
image_xscale = scale;
image_yscale = scale;

image_speed = 0;

if image_index = 1 image_angle = irandom_range(0,359);