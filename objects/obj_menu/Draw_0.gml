/// @description Insert description here
// You can write your code in this editor


draw_self()

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


if (alarm[1] <= 30)
{
	if (alarm[1] <= 0)
		alarm[1] = 60
	
	draw_set_font(Font1)
	draw_set_halign(fa_center)
	draw_text_transformed(1366/2, 650, "PRESSIONE PARA INICIAR", 3, 3, 0)
}