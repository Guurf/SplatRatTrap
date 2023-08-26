y--;

lifetime--;
image_alpha = (lifetime/100);
if lifetime < 0 instance_destroy()