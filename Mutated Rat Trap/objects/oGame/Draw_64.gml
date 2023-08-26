draw_set_font(fGame);
if (keyDemo && !demo) demo = 1;
else if (keyDemo && demo) demo = 0;

if (demo)
{
	draw_text(10,160,"Score: " + string(global.score));
	draw_text(10,150,"Corruption: " + string(global.corruption));
	draw_text(10,140,"State: " + string(oRatTrap.state));
	draw_text(10,130,"Image Index: " + string(oRatTrap.image_index));
	
	
}