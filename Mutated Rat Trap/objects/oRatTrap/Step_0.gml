//Controls
//x = mouse_x;
//y = mouse_y;


direction = point_direction(x,y,mouse_x,mouse_y);
var mouseDis = point_distance(mouse_x,mouse_y,x,y);
if mouseDis <= 15 && acc <= 4 acc -= 0.5;
else if mouseDis <= 30 && acc > 4 acc -= 0.5;
else acc+=0.25;
if acc >= 4 acc = 4;
else if acc <= 0 acc = 0;

if (image_angle > 90) && (image_angle < 265) image_yscale = -1;
else image_yscale = 1;

if global.corruption >= 60 depth = -999;

//Assign Target Rat
targetRat = instance_nearest(mouse_x,mouse_y,oRatParent);

//Find Mouse Speed
var mouseSpeed = point_distance(mouse_x,mouse_y,mxPrevious,myPrevious);

//Point to Target Rat if close
//if (distance_to_object(targetRat) < 10 && !targetRat.caught) image_angle = point_direction(x,y,targetRat.x,targetRat.y);

//Point in opposite direction to mouse position last frame
//else if mouseSpeed >= 1 && (mxPrevious != mouse_x && myPrevious != mouse_y) image_angle = point_direction(mxPrevious,myPrevious,x,y);
if mouseDis > 10 image_angle = point_direction(mouse_x,mouse_y,x,y);
mxPrevious = mouse_x;
myPrevious = mouse_y;

//Check for Powers
if powered != "none"
{
	state = powered;	
}

//Trail
if (trailTimer-- <= 0)
{
	var _randX = irandom_range(x-5,x+5);
	instance_create_layer(_randX,y,"Trail",oTrail,);	
	trailTimer = trailInterval;
}

//State Machine
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
		}	
	break;
	
	case "snap":
		
		if sprite_index != sRatTrapSnap 
		{
			sprite_index = sRatTrapSnap;
			audio_play_sound(sClamp,1,0,1,0,random_range(0.5,1.5));	
		}
		if image_index > 4 image_speed = 0
		if image_index > 3 && image_index < 4 
		{
			instance_create_layer(x-5,y,"Trail",oGroundBash);
		}
		keyReload = mouse_check_button(mb_left);
		if image_index > 3 && place_meeting(x,y,targetRat) && image_speed = 1
		{
			targetRat.caught = true;	
			caughtRat = targetRat;
			state = "caught";
			
		}
		if (image_index > 4 && keyReload)
		{
			reload = 60;
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
			audio_play_sound(sSet,1,0);
			state = "free";
		}
	break;
	
	case "caught":
		if !instance_exists(caughtRat) 
		{
			reload = 60;
			state = "reload";
		}
		else if instance_exists(caughtRat) 
		{
			//pointPop = caughtRat.points;
			if sprite_index != caughtRat.dSprite
			{
				audio_play_sound(sCaught,1,0);
				sprite_index = caughtRat.dSprite;
			}
			if sprite_index == sBEEGRatD
			{
				chunkTime--;
				if chunkTime <= 0
				{
					reload = 60;
					state = "reload";
					chunkTime = 30;
				}
			}
		}
	break;
	
	case "laser":
		keyCharge = mouse_check_button(mb_left);
		keyTrap = mouse_check_button_released(mb_left);
		image_speed = 1;
		if (keyCharge) 
		{
			if !audio_is_playing(sCharge) && image_index < 3 audio_play_sound(sCharge,1,0);
			acc = 0;
			sprite_index = sRatTrapCharge;
			if (image_index > 5) image_index = 4;
		}
		else if !keyTrap sprite_index = sRatTrapPowered;
		if (keyTrap && image_index > 3) 
		{
			state = "reload";
			powered = "none";
			if audio_is_playing(sCharge) audio_stop_sound(sCharge);
			audio_play_sound(sShoot,1,0);
			instance_create_layer(x,y,"Laser",oLaser);
		}
	break;
}

//Check if mouse is outside room
if (mouse_x > 370 || mouse_x < -10 || mouse_y < -10 || mouse_y > 190) acc = 0;

speed = acc;

