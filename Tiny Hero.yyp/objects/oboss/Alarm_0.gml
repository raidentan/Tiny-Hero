var bullet = instance_create_layer(x, y, "Fireball",oIceball); // Create a bullet and store its ID in the variable "bullet". We need its ID b/c we want to do a few more things with it.
with (bullet)
{
   direction = point_direction(x, y, oPlayer.x, oPlayer.y); // Give the bullet a direction
   speed = 4;
}
alarm[0] = room_speed * 2; // Reset this alarm so the enemy will shoot after 5 more seconds. This will loop.