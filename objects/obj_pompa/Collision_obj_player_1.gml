/// @description 

if (enemigo <> noone)
{
	var _puntos = instance_create_layer(x,y,"Puntos",obj_puntos);
	_puntos.puntos = puntos;
	if (instance_exists(player) && instance_exists(obj_pantalla_completa))
	{
		if (player.object_index == obj_player_1)
			obj_pantalla_completa.puntos_player_1 += puntos;
		if (player.object_index == obj_player_2)
			obj_pantalla_completa.puntos_player_2 += puntos;
		//player.puntos += puntos;
	}
}
instance_destroy(self,true);