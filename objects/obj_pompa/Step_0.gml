/// @description 


if (velocidad_horizontal > 1)
{
	velocidad_horizontal /= 2;
	var _array_colisiones = global.array_colisiones_normal;
	array_insert(_array_colisiones,-1,obj_enemigo); 
	var _lista = move_and_collide(velocidad_horizontal * sentido,0,_array_colisiones);
	for (var _i = 0; _i < array_length(_lista); _i++)
	{
		if (_lista[_i].object_index == obj_enemigo)
		{
			enemigo = _lista[_i];
			instance_destroy(_lista[_i],true);
			sprite_index = spr_pompa_enemigo;
		}
	}
}
else
{
	velocidad_horizontal = 0;
	move_and_collide(0,-velocidad_ascenso,global.array_colisiones_normal);
}


if ((velocidad_horizontal == 0) && (y == yprevious))
	alarm[0] = 1;