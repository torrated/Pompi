/// @description 

eje_x = keyboard_check(ord("D")) - keyboard_check(ord("A"));
eje_y = keyboard_check(ord("S")) - keyboard_check(ord("W"));

ataque = keyboard_check_pressed(ord("N"));
salto = keyboard_check_pressed(ord("M"));

escape = keyboard_check_pressed(vk_escape);