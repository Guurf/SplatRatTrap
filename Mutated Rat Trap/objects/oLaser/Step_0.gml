if image_index > 2 image_speed = 0;

lifetime--;

if lifetime < 10 image_speed = -1;
if lifetime <= 0 instance_destroy();