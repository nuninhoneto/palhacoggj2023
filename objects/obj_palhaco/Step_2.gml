/// @description Insert description here
// You can write your code in this editor

if  (check_conditions())
{
	x = lerp(x,mouse_x,.6);
	y = lerp(y,mouse_y,.6);
}

if (lifetime > 30)
	distancex = point_distance(x, y, mouse_x, mouse_y)

c_speed = point_distance(x, y, prev_x, prev_y)

prev_x = x
prev_y = y