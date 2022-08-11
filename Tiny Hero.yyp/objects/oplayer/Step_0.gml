//Get Player Input
if (hascontrol)
{
	keyLeft = keyboard_check(ord("A"));
	keyRight = keyboard_check(ord("D"));
	keyUp = keyboard_check(ord("W"));
	keyDown = keyboard_check(ord("S"));
	keyJump = keyboard_check_pressed(vk_space);
}
else
{
	keyRight = 0;
	keyLeft = 0;
	keyUp = 0;
	keyDown = 0;
	keyJump = 0;
}

//Calculate Movement
var move = keyRight - keyLeft;

hSpeed = move * wSpeed;

vSpeed = vSpeed + grv;

canJump -= 1;
if (canJump > 0) && (keyJump)
{
	vSpeed = -5;
	canJump = 0;
	audio_play_sound(mJump,5,false);
}

//Ladder
if (keyUp || keyDown)
{
	if place_meeting(x,y,oLadder) canClimb = true;
}

if (canClimb)
{
	vSpeed = 0;
	hSpeed = 0;
	sprite_index = sPlayerClimb;
	if (keyUp)
	{
		vSpeed = -2;
		image_speed = 0;
		image_index++;
	}
	if (keyDown) 
	{
		vSpeed = 2
		image_speed = 0;
		image_index--;
	}
	if !place_meeting(x,y,oLadder) canClimb = false;
	if (keyJump) canClimb = false;
}

//Horizontal Collision
if (place_meeting(x+hSpeed,y,oWall))
{
	while (!place_meeting(x+sign(hSpeed),y,oWall))
	{
		x = x + sign(hSpeed);
	}
	hSpeed = 0;
}
x = x + hSpeed;

//Vertical Collision
if (place_meeting(x,y+vSpeed,oWall))
{
	while (!place_meeting(x,y+sign(vSpeed),oWall))
	{
		y = y + sign(vSpeed);
	}
	vSpeed = 0;
}
y = y + vSpeed;

//Animation
if (!place_meeting(x,y+1,(oWall)))
{
	sprite_index = sPlayerJump;
	image_speed = 0;
	if (sign(vSpeed) > 0) image_index = 0; else image_index = 1;
}

else
{
	canJump = 10;
	image_speed = 1;
	if (hSpeed == 0)
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerRun;
	}
}

if (hSpeed != 0) image_xscale = sign(hSpeed);

if (room = rBoss)
{
	if !instance_exists(oBoxBroken) && instance_exists(oBoss)
	{
		SlideTransition(TRANS_MODE.GOTO,rBoss);
	}
}