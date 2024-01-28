/// @description Insert description here
// You can write your code in this editor

draw_self()

if is_moving
{
	c_image_xscale =1+(distancex/120)
}
else
{
	c_image_xscale = 1
}
if (is_moving() && !finalizou)
	draw_sprite_ext(spr_cabeca_moving, 0, x, y,c_image_xscale,1,0,c_white,1)	
else if (finalizou)
	draw_sprite(spr_cabeca_final, 0, x, y)
else
{
	if (alarm[0] <= 10)
	{
		if (alarm[0] <= 0)
			alarm[0] = random_range(60 * 1, 60 * 3)
			
		draw_sprite(spr_cabeca_idle, 1, x, y)
	}
	else
	{
		draw_sprite(spr_cabeca_idle, 0, x, y)
	}
}

// draw_text(x+100, y, descabelometro)
// draw_text(x+100, y+20, image_xscale)

if (distancex > max_distancex)
	max_distancex = distancex
	
// draw_text(x+100, y+40, max_distancex)
// draw_text(x+100, y+60, contador_shake)

draw_sprite(spr_hud_barra_fundo, 0, 0, 0)
draw_sprite_part(spr_hud_barra_frente, 0, 0, 0, lerp(333, 1050, descabelometro / 100), 768, 0, 0)

if (descabelometro < 33)
{
	draw_text_transformed(1366/2, 65, "DEVAGAR", 3, 3, 0)
}
else if (descabelometro < 66)
{
	draw_text_transformed(1366/2, 65, "RAPIDO", 3, 3, 0)
}
else
{
	draw_text_transformed(1366/2, 65, "FRENETICO", 3, 3, 0)
}