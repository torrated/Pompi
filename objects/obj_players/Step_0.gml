/// @description 

// movimiento
if (instance_exists(obj_controllers))
{
	var _mueve_x = obj_controllers.eje_x * velocidad_x;
	var _mueve_y = obj_controllers.eje_y * velocidad_y;
	if (obj_controllers.ataque)
		show_message("ataque");//Debug
	if (obj_controllers.salto)
		show_message("salto");// debug
		
	move_and_collide(_mueve_x,_mueve_y,obj_colisiones);
}