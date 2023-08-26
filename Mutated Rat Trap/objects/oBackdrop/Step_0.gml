if global.corruption <= 10 image_index = 0;
else if global.corruption <= 15 image_index = 1;
else if global.corruption <= 20 image_index = 2;
else if global.corruption <= 25 image_index = 3;
else if global.corruption <= 30 image_index = 4;
else if global.corruption <= 35 image_index = 5;
else if global.corruption <= 40 
{
	layer_set_visible("Fog", true);
	image_index = 6;
}