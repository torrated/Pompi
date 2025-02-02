/// @description 


if (velocidad_horizontal > 1)
{
	x += velocidad_horizontal * sentido;
	velocidad_horizontal /= 2;
}
else
{
	velocidad_horizontal = 0;
	y -= velocidad_ascenso;
}