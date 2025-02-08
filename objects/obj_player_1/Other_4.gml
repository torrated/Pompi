/// @description 

event_inherited();

if (instance_exists(obj_posicion_player1))
{
	x = obj_posicion_player1.x;
	y = obj_posicion_player1.y;
}

estado = ESTADOS.NORMAL;
golpeado_por = [];
image_xscale = 1;