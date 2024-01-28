/// @description Insert description here
// You can write your code in this editor

if (alarm[0] > 0)
{
	y -= 3
}
else
{
	y += 6+grav 
	grav+=.01
}

velocidade_horizontal = lerp(velocidade_horizontal, 0.5, 0.05)

x += velocidade_horizontal