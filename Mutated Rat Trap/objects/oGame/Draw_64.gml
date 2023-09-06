draw_set_font(fGame);

if (keyDemo && !demo) demo = 1;
else if (keyDemo && demo) demo = 0;

if (demo)
{
	draw_text(10,160,"Score: " + string(global.score));
	draw_text(10,150,"Corruption: " + string(global.corruption));
	draw_text(10,140,"State: " + string(oRatTrap.state));
	draw_text(10,130,"Speed: " + string(oRatTrap.speed));
	draw_text(10,120,"Angle: " + string(oRatTrap.image_angle));
	
}

if room != rMenu && global.corruption < 100
{
	draw_set_font(global.numberFont);
	draw_text(28,5,global.score);
	draw_sprite(sScore,0,5,5);
}


if global.corruption >= 60 && global.corruption < 100
{
	instance_deactivate_layer("Rats");	
	instance_create_layer(220,120,"Laser",oButton, { depth : -1000});
	instance_create_layer(100,120,"Laser",oButton2, { depth : -1000});
	global.corruption = 100;
}
if global.corruption == 100
{
	draw_sprite(sLost,0,160,40);	
	draw_set_font(global.numberFont);
	draw_text(178,70,global.score);
	draw_sprite(sScore,0,150,70);
}