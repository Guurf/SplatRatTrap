if spd != 3 
{
	audio_play_sound(sEscape,1,0);
	spd = 3;
}
if x < -16 
{
	instance_destroy();
	global.corruption += (points+1);
}