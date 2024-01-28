/// @description Insert description here
// You can write your code in this editor

if (mouse_check_button_pressed(mb_left))
{
	room_goto_next()
}

if (keyboard_check_pressed(vk_escape))
{
	game_end(0);
}