vSpeed = vSpeed + grv;

//Horizontal Collision
if (place_meeting(x+hSpeed,y,oBreakable))
{
	while (!place_meeting(x+sign(hSpeed),y,oBreakable))
	{
		x = x + sign(hSpeed);
	}
	hSpeed = 0;
}
x = x + hSpeed;

//Vertical Collision
if (place_meeting(x,y+vSpeed,oBreakable))
{
	while (!place_meeting(x,y+sign(vSpeed),oBreakable))
	{
		y = y + sign(vSpeed);
	}
	vSpeed = 0;
}
y = y + vSpeed;
