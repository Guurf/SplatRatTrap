x = mouse_x;
y = mouse_y;

targetRat = instance_nearest(mouse_x,mouse_y,oRatParent);

var mouseSpeed = point_distance(mouse_x,mouse_y,mxPrevious,myPrevious);
show_debug_message(mouseSpeed);

if mouseSpeed >= 3 && (mxPrevious != mouse_x && myPrevious != mouse_y) image_angle = point_direction(mxPrevious,myPrevious,x,y);
mxPrevious = mouse_x;
myPrevious = mouse_y;


if powered != "none"
{
	state = powered;	
}

if (trailTimer-- <= 0)
{
	var _randX = irandom_range(x-5,x+5);
	instance_create_layer(_randX,y,"Trail",oTrail,);	
	trailTimer = trailInterval;
}
switch (state)
{
	case "free":
		sprite_index = sRatTrap;
		image_speed = 0;
		keyTrap = mouse_check_button_released(mb_left);
		if (keyTrap)
		{
			image_speed = 1;
			state = "snap";
			reload = 60;
		}	
	break;
	
	case "snap":
		if sprite_index != sRatTrapSnap sprite_index = sRatTrapSnap;
		if image_index > 4 image_speed = 0;
		keyReload = mouse_check_button(mb_left);
		if image_index > 3 && place_meeting(x,y,targetRat) && image_speed = 1
		{
			targetRat.caught = true;	
			caughtRat = targetRat;
			state = "caught";
			
		}
		if (image_index > 4 && keyReload)
		{
			state = "reload";
		}	
	break;
	
	case "reload":
		keyReload = mouse_check_button(mb_left);
		sprite_index = sRatTrapReload;
		if (keyReload) reload--;
		
		if reload > 53 image_index = 0;
		else if reload > 48 image_index = 1;
		else if reload > 41 image_index = 2;
		else if reload > 34 image_index = 3;
		else if reload > 27 image_index = 4;
		else if reload > 20 image_index = 5;
		else if reload > 13 image_index = 6;
		else if reload > 6 image_index = 7;
		else image_index = 8;
		if image_index == 8 
		{
			state = "free";
		}
	break;
	
	case "caught":
		if !instance_exists(caughtRat) 
		{
			state = "reload";
		}
		if instance_exists(caughtRat) 
		{
			//pointPop = caughtRat.points;
			sprite_index = caughtRat.dSprite;
		}
	break;
	
	case "laser":
		keyCharge = mouse_check_button(mb_left);
		keyTrap = mouse_check_button_released(mb_left);
		image_speed = 1;
		if (keyCharge) 
		{
			sprite_index = sRatTrapCharge;
			if (image_index > 5) image_index = 4;
		}
		else if !keyTrap sprite_index = sRatTrapPowered;
		if (keyTrap && image_index > 3) 
		{
			state = "reload";
			powered = "none";
			instance_create_layer(x,y,"Laser",oLaser);
		}
	break;
}

