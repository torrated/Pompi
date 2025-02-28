/// @description

alarma_i += 1;
if (alarma_i == duracion_alarma)
{	
	obj_settings.estado = ESTADO_PARTIDA.NORMAL;
	instance_destroy(self,true);
}
else
{
	if (alarma_i >= duracion_pausa)
	{
		obj_settings.estado = ESTADO_PARTIDA.NORMAL;
	}
	else
	{
		obj_settings.estado = ESTADO_PARTIDA.PAUSA_INICIO_NIVEL;
	}
	alarm[0] = 1;
}