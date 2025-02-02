/// @description 


if (velocidad_horizontal > 1)
{
	velocidad_horizontal /= 2;
	move_and_collide(velocidad_horizontal * sentido,0,global.array_colisiones_normal);
}
else
{
	velocidad_horizontal = 0;
	move_and_collide(0,-velocidad_ascenso,global.array_colisiones_normal);
}


if ((velocidad_horizontal == 0) && (y == yprevious))
	alarm[0] = 1;