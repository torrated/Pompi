/// @description 

escape = keyboard_check_pressed(vk_escape);

if (gamepad_is_connected(0))
{
	gamepad_player_1 = 0;
	gamepad_activo = true;
}
else
{
	gamepad_player_1 = noone
	gamepad_activo = false;
}

if (!gamepad_activo)
{
	eje_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	ataque = keyboard_check_pressed(vk_space);
	salto = keyboard_check_pressed(ord("W"));
}
else
{
	eje_x = gamepad_axis_value(gamepad_player_1,gp_axislh);
	ataque = gamepad_button_check_pressed(gamepad_player_1,gp_face3);
	salto = gamepad_button_check_pressed(gamepad_player_1,gp_face1);
}