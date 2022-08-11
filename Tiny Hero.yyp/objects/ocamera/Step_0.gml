//Update Destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}

//Update Object Position
x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x,view_w_half,room_width-view_w_half);
y = clamp(y,view_h_half,room_height-view_h_half);

//Update Camera View
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

if (layer_exists("Swamp2"))
{
	layer_x("Swamp2",x/2);	
}

if (layer_exists("Swamp3"))
{
	layer_x("Swamp3",x/4);	
}

if (layer_exists("Swamp4"))
{
	layer_x("Swamp4",x/6);	
}