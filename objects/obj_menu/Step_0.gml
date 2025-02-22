/// @description 

delay_0 = clamp(delay_0-1,0,tiempo_delay);
delay_1 = clamp(delay_1-1,0,tiempo_delay);
delay_2 = clamp(delay_2-1,0,tiempo_delay);

with (obj_controllers)
{
	if (controles[0].eje_x <> 0 && other.delay_0 == 0)
	{
		other.opciones[0].posicion = clamp(other.opciones[0].posicion+controles[0].eje_x,0,2);
		other.delay_0 = other.tiempo_delay;
	};
	if (controles[1].eje_x <> 0 && other.delay_1 == 0)
	{
		other.opciones[1].posicion = clamp(other.opciones[1].posicion+controles[1].eje_x,0,2);
		other.delay_1 = other.tiempo_delay;
	};
	if (controles[2].eje_x <> 0 && other.delay_2 == 0)
	{
		other.opciones[2].posicion = clamp(other.opciones[2].posicion+controles[2].eje_x,0,2);
		other.delay_2 = other.tiempo_delay;
	};
}


//miramos a ver si se puede empezar el juego
juego_puede_comenzar = false;
if (opciones[0].posicion == 0 && opciones[1].posicion == 1 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;
if (opciones[0].posicion == 2 && opciones[1].posicion == 1 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 0 && opciones[1].posicion == 2 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 0 && opciones[1].posicion == 1 && opciones[2].posicion == 2)
	juego_puede_comenzar = true;



if (opciones[0].posicion == 1 && opciones[1].posicion == 0 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;
if (opciones[0].posicion == 1 && opciones[1].posicion == 2 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 2 && opciones[1].posicion == 0 && opciones[2].posicion == 1)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 1 && opciones[1].posicion == 0 && opciones[2].posicion == 2)
	juego_puede_comenzar = true;



if (opciones[0].posicion == 1 && opciones[1].posicion == 1 && opciones[2].posicion == 0)
	juego_puede_comenzar = true;
if (opciones[0].posicion == 1 && opciones[1].posicion == 1 && opciones[2].posicion == 2)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 2 && opciones[1].posicion == 1 && opciones[2].posicion == 0)
	juego_puede_comenzar = true;

if (opciones[0].posicion == 1 && opciones[1].posicion == 2 && opciones[2].posicion == 0)
	juego_puede_comenzar = true;
	
	
if (juego_puede_comenzar)
{
	with (obj_controllers)
	{
		if (player1 <> noone && controles[player1].ataque)
			room_goto(Nivel_1);
		else if (player2 <> noone && controles[player2].ataque)
			room_goto(Nivel_1);
	}
}