keyDemo = keyboard_check_pressed(ord("D"));
if room != rMenu && global.corruption < 100
{
if array_length(oRatSpawner.spawnTypes) > 3
{
	powerTimer--;
	var powerX = irandom_range(7, 200);
	var powerY = irandom_range(23, 151);
	if powerTimer <= 0 
	{
		instance_create_layer(powerX, powerY, "Laser",oPowerUp);
		powerTimer = powerInterval;
	}
}
}



