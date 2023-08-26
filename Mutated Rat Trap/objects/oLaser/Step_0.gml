if image_index == 1 image_speed = 0;

lifetime--;

if lifetime < 10 image_index = 0;
if lifetime <= 0 instance_destroy();