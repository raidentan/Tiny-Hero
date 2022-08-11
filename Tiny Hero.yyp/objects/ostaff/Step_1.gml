x = oPlayer.x;
y = oPlayer.y + 10;

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingDelay = firingDelay - 1;
if (mouse_check_button(mb_left)) && (firingDelay < 0)
{
	firingDelay = 100;
	audio_play_sound(mFireball,5,false);
	with (instance_create_layer(x,y,"Fireball",oFireball))
	{
		speed = 5;
		direction = other.image_angle;
		image_angle = direction;
	}
}