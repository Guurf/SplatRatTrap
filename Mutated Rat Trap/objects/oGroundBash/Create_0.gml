var dir = irandom_range(0,50);
repeat 8
{
	instance_create_layer(x,y,"Trail",oBashPart,{
		direction : dir
	});
	dir += irandom_range(35,50);
}
instance_destroy();