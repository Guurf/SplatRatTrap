spawnInterval = 200;
spawnTimer = spawnInterval;

spawnAmount = 1;
spawnTypes = [oSmallRat];
spawnTypeLength = array_length(spawnTypes)-1;
r = irandom_range(0,spawnTypeLength);

spawnX = irandom_range(x,x+64);
topY = 8;
bottomY = 174;
spawnY = irandom_range(topY,bottomY);