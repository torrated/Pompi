/// @description 

// movimiento
if (instance_exists(obj_controllers))
{
	x += obj_controllers.eje_x * velocidad_x;
	y += obj_controllers.eje_y * velocidad_y;
	if (obj_controllers.ataque)
		show_message("ataque");//Debug
	if (obj_controllers.salto)
		show_message("salto");// debug
}