dir = point_direction(oRatTrap.x, oRatTrap.y, mouse_x, mouse_y);
len = point_distance(oRatTrap.x, oRatTrap.y, mouse_x, mouse_y)/2;
x = oRatTrap.x + lengthdir_x(len, dir);
y = oRatTrap.y + lengthdir_y(len*1.5, dir);