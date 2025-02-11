/// @description 

if (enemigo <> noone)
{
	var _puntos = instance_create_layer(x,y,"Puntos",obj_puntos);
	_puntos.puntos = puntos;
	if (instance_exists(player))
		player.puntos += puntos;
}
instance_destroy(self,true);