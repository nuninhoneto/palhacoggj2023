/// @description Insert description here
// You can write your code in this editor


speed = 0
c_speed = 0

lifetime = 0
distancex = 0
distancex_min = 40
max_speed = 80
contador_shake = 0
contador_shake_min = 50
image_xscale_step = 0.001
descabelometro = 0
parado_timer = 0
pitch_voz = array_create(2, 1)

c_image_xscale = 1

max_distancex = 0 

finalizou = false

x = mouse_x
y = mouse_y

prev_x = x
prev_y = y

check_conditions = function()
{
	if (descabelometro < 100)
		return true;
		
	return false
}

is_moving = function()
{
	if (round(x) == round(mouse_x) && round(y) == round(mouse_y))
		parado_timer++
	else
		parado_timer = 0
	
	if (parado_timer > 10)
		return false
		
	return true
}
