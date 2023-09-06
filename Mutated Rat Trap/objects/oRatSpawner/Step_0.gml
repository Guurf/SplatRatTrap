spawnTimer--;

spawnTypeLength = array_length(spawnTypes)-1;

if (spawnTimer <= 0)
{
	repeat (spawnAmount)
	{
		//Randoms
		spawnY = irandom_range(topY,bottomY);
		spawnX = irandom_range(x,x+64);
		r = irandom_range(0,spawnTypeLength);
		
		//Spawn Rats
		instance_create_layer(spawnX,spawnY,"Rats",spawnTypes[r]);	
	}
	spawnTimer = spawnInterval;
}

if (global.score < 100)
{
	spawnTypes = [oSmallRat];	
}
else if (global.score < 400)
{
	spawnAmount = 2;
	spawnInterval = 250;
	spawnTypes = [oSmallRat, oSmallRat, oBigRat];	
}
else if (global.score < 1000) && (global.corruption < 5)
{
	spawnAmount = 2;
	spawnInterval = 200;
	spawnTypes = [oSmallRat, oSmallRat, oBigRat];		
}
else if (global.score > 1000)
{
	spawnAmount = round(global.score / 400);
}

if (global.corruption < 5)
{
	//spawnTypes = [oSmallRat];	
}
else if (global.corruption < 10)
{
	spawnInterval = 250;
	spawnTypes = [oSmallRat, oSmallRatC, oBigRat];	
}
else if (global.corruption < 20)
{
	spawnInterval = 300;
	spawnTypes = [oSmallRat, oSmallRatC, oBigRat, oBigRatC];	
}
else if (global.corruption < 30)
{
	spawnTypes = [oSmallRat, oSmallRatC, oBigRat, oBigRatC];	
}
else if (global.corruption < 40)
{
	spawnInterval = 200;
	spawnTypes = [oSmallRat, oSmallRatC, oBigRat, oBigRatC];	
}
else if (global.corruption < 60)
{
	spawnInterval = 250;
	spawnTypes = [oSmallRat, oSmallRatC, oBigRat, oBigRatC, oBEEGRat];	
}
else if (global.corruption == 100) instance_destroy();


