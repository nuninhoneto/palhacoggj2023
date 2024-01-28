/// @description Insert description here
// You can write your code in this editor


lifetime++

if (keyboard_check_pressed(ord("R")))
{
	room_restart()
}

if (keyboard_check_pressed(vk_escape))
{
	game_end(0);
}

if (check_conditions())
{	
	if distancex > distancex_min && c_speed < max_speed
	{	
		image_xscale -= image_xscale_step
		image_yscale = image_xscale
		
		instance_create_depth(x, y, depth+1, obj_particle)
		
		contador_shake++
		
		if (descabelometro < 100)
			descabelometro++;
	}
	
	if (!is_moving())
	{
		if (image_xscale < 1)
		{
			image_xscale += image_xscale_step
			image_yscale = image_xscale
		}
		
		if (contador_shake > 0)
			contador_shake--
			
		if (descabelometro > 0)
			descabelometro--;
	}
	
	if (descabelometro < 33)
	{
		distancex_min = 40
		max_speed = 80
		contador_shake_min = 20
		image_xscale_step = 0.001
		pitch_voz[0] = 0.6
		pitch_voz[1] = 0.7
	}
	else if (descabelometro < 66)
	{
		distancex_min = 80
		max_speed = 150
		contador_shake_min = 13
		image_xscale_step = 0.01
		pitch_voz[0] = 0.7
		pitch_voz[1] = 0.8
	}
	else
	{
		distancex_min = 120
		max_speed = 999
		contador_shake_min = 5
		image_xscale_step = 0.01
		pitch_voz[0] = 0.8
		pitch_voz[1] = 0.9
	}
}
else
{
	if (!finalizou)
	{
		if (audio_is_playing(snd_ah))
		{
			audio_stop_sound(snd_ah)
		}
		
		if (!audio_is_playing(snd_ze_da_manga))
		{
			audio_play_sound(snd_ze_da_manga, 1, 0)
		}
	}
	
	finalizou = true
}

if (contador_shake > contador_shake_min)
{	
	if (!audio_is_playing(snd_ah))
	{
		var _instance_snd = audio_play_sound(snd_ah, 1, 0)
		audio_sound_pitch(_instance_snd, random_range(pitch_voz[0], pitch_voz[1]))
		
		contador_shake = 0;
	}
}