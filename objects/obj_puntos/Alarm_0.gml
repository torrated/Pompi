/// @description 

if (tiempo_en_pantalla <= 0)
	instance_destroy();
else
{
	tiempo_en_pantalla -= 1;
	alarm[0] = 1;
}