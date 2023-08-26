spawnInterval = 200;
spawnTimer = spawnInterval;

spawnAmount = 1;
spawnTypes = [oSmallRat,oSmallRat,oBigRat];
r = irandom_range(0,2);

spawnX = irandom_range(x,x+64);
topY = 8;
bottomY = 174;
spawnY = irandom_range(topY,bottomY);