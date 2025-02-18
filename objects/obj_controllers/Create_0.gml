/// @description 

eje_x = 0;
eje_y = 0;
ataque = 0;
salto = 0;
escape = 0;
evento_controller = false;

gamepad_activo = false;
gamepad_player_1 = noone;
gamepad_player_2 = noone;

if (gamepad_is_connected(0))
	gamepad_player_1 = 0;
	
if (gamepad_is_connected(1))
	gamepad_player_2 = 1;