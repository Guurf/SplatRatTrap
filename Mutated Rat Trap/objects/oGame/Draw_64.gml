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
draw_set_font(global.numberFont);
draw_text(28,5,global.score);
draw_sprite(sScore,0,5,5);