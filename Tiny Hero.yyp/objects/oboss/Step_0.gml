//Horizontal Collision
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = -hsp;
}
x = x + hsp;

//Animation

image_speed = 1;
if (hsp == 0)
{
	sprite_index = sBoss;
}
else
{
	sprite_index = sBossFlying;
}

if (hsp != 0) image_xscale = sign(hsp);

