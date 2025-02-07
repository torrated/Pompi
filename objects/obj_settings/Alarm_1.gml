/// @description Reinicia el juego

alarma_1 -= 1;

if (alarma_1 <= 0)
{
	alarma_1 = alarma_1_inicial;
	game_restart();
}
else
	alarm[1] = 1;