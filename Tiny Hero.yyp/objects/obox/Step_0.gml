vSpeed = vSpeed + grv;

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
