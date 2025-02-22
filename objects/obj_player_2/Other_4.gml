/// @description 

event_inherited();

if (instance_exists(obj_posicion_player2))
{
	x = obj_posicion_player2.x;
	y = obj_posicion_player2.y;
}

estado = ESTADOS.NORMAL;
golpeado_por = [];
image_xscale = -1;