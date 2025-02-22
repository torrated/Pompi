/// @description 

if (obj_controllers.player2 <> noone && !instance_exists(obj_player_2))
{
	var _player2 = instance_create_layer(x,y,"Players",obj_player_2);
	_player2.estado = ESTADOS.NORMAL;
	_player2.golpeado_por = [];
	_player2.image_xscale = 1;
}