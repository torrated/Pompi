/// @description 

eje_x = 0;
eje_y = 0;
ataque = 0;
salto = 0;
escape = 0;
evento_controller = false;

gamepad1 = noone;
gamepad2 = noone;

player1 = noone;
player2 = noone;

if (gamepad_is_connected(0))
	gamepad1 = 0;
	
if (gamepad_is_connected(1))
	gamepad2 = 1;

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

