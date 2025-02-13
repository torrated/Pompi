/// @description 

if (instance_exists(obj_settings) && obj_settings.pausa) exit;

if (velocidad_horizontal > 1)
{
	velocidad_horizontal /= 2;

	var _lista = move_and_collide(velocidad_horizontal * sentido,0,global.array_colisiones_normal);

	if (collision_circle(x,y,24,obj_enemigo,false,true)	&& (puntos == 0))
	{
		enemigo = collision_circle(x,y,24,obj_enemigo,false,true);
		x = enemigo.x;
		y = enemigo.y-(enemigo.sprite_height/2);
		puntos = enemigo.puntos;
			
		instance_deactivate_object(enemigo);
		sprite_index = spr_pompa_enemigo;
	}
}
else
{
	velocidad_horizontal = 0;
	move_and_collide(0,-velocidad_ascenso,obj_colisiones_superior);
}


if ((velocidad_horizontal == 0) && (y == yprevious))
	alarm[0] = 1;