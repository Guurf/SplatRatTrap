spawnTimer--;

if (spawnTimer <= 0)
{
	repeat (spawnAmount)
	{
		//Randoms
		spawnY = irandom_range(topY,bottomY);
		spawnX = irandom_range(x,x+64);
		if (global.score > 200 && global.corruption >= 15) 
		{
			spawnInterval = 150;
			r = irandom_range(0,3);
		}
		if (global.score > 100) 
		{
			spawnAmount = 2;
			r = irandom_range(0,2);
		}

		else r = irandom_range(0,1);
		//Sawn Rats
		instance_create_layer(spawnX,spawnY,"Rats",spawnTypes[r]);	
	}
	spawnTimer = spawnInterval;
}
if (global.corruption >= 15) 
{
	spawnTypes = [oSmallRat,oSmallRatC,oBigRat,oBigRatC];
}
else if (global.corruption >= 5) 
{
	spawnTypes = [oSmallRat,oSmallRatC,oBigRat]; 
}
