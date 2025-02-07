/// @description Reinicia la sala

alarma_0 -= 1;

if (alarma_0 <= 0)
{
	alarma_0 = alarma_0_inicial;
	room_restart();
}
else
	alarm[0] = 1;