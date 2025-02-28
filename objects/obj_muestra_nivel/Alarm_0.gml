/// @description

alarma_i += 1;
if (alarma_i == duracion_alarma)
{	
	//pausa_inicio_nivel = false;
	obj_settings.estado = ESTADO_PARTIDA.NORMAL;
	instance_destroy(self,true);
}
else
{
	if (alarma_i >= duracion_pausa)
	{
		obj_settings.estado = ESTADO_PARTIDA.NORMAL;
		//pausa_inicio_nivel = false;
	}
	else
	{
		obj_settings.estado = ESTADO_PARTIDA.PAUSA_INICIO_NIVEL;
		//pausa_inicio_nivel = true;
	}
	alarm[0] = 1;
}