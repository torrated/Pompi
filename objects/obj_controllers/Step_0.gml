/// @description 

escape = keyboard_check_pressed(vk_escape);

if (gamepad_is_connected(0))
	gamepad1 = 0;
else
	gamepad1 = noone;

if (gamepad_is_connected(1))
	gamepad2 = 1;
else
	gamepad2 = noone;

controles = [
{ //teclado
	eje_x:  keyboard_check(ord("D")) - keyboard_check(ord("A")),
	ataque: keyboard_check_pressed(vk_space),
	salto:  keyboard_check_pressed(ord("W"))
},
{ //gamepad1
	eje_x:  gamepad_axis_value(gamepad1,gp_axislh),
	ataque: gamepad_button_check_pressed(gamepad1,gp_face3),
	salto:  gamepad_button_check_pressed(gamepad1,gp_face1)
},
{ //gamepad2
	eje_x:  gamepad_axis_value(gamepad2,gp_axislh),
	ataque: gamepad_button_check_pressed(gamepad2,gp_face3),
	salto:  gamepad_button_check_pressed(gamepad2,gp_face1)
}
];

if (gamepad1 == noone && gamepad2 == noone)
	player1 = 0; //teclado
else
	if (gamepad2 == noone)
	{
		player1 = 1; //gamepad1
	}
	else
	{
		player1 = 1; //gamepad1
		player2 = 2; //gamepad2
	}