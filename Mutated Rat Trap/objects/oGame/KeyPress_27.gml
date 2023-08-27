if room != rMenu
{
	if !instance_exists(oButton2)
	{
		instance_create_layer(10,10,"Rats",oButton2);	
	}
	else instance_destroy(oButton2);
}