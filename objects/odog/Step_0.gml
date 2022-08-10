vsp = vsp + grv;

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

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
if (place_meeting(x,y+1,oWall))
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = sDog;
	}
	else
	{
		sprite_index = sDogRun;
	}
}

if (hsp != 0) image_xscale = sign(hsp);
