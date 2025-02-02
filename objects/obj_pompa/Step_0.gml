/// @description 


if (velocidad_horizontal > 1)
{
	velocidad_horizontal /= 2;
	move_and_collide(velocidad_horizontal * sentido,0,obj_colisiones);
}
else
{
	velocidad_horizontal = 0;
	move_and_collide(0,-velocidad_ascenso,obj_colisiones);
}


if ((velocidad_horizontal == 0) && (y == yprevious))
	alarm[0] = 1;