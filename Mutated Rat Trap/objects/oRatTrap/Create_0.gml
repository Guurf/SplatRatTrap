window_set_cursor(cr_none);
acc = 0;

keyTrap = 0;
targetRat = instance_nearest(mouse_x,mouse_y,oRatParent);
caughtRat = undefined;
state = "snap";
sprite_index = sRatTrapSnap;
image_index = 4;
reload = 0;
powered = "none";

trailTimer = 1;
trailInterval = trailTimer;
mxPrevious = mouse_x;
myPrevious = mouse_y;


pointPop = 0;