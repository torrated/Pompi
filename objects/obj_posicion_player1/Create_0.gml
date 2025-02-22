/// @description 

if (obj_controllers.player1 <> noone && !instance_exists(obj_player_1))
{
	var _player1 = instance_create_layer(x,y,"Players",obj_player_1);
	_player1.estado = ESTADOS.NORMAL;
	_player1.golpeado_por = [];
	_player1.image_xscale = 1;
}