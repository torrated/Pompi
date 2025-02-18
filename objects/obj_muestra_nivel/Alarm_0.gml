/// @description

alarma_i += 1;
if (alarma_i == duracion_alarma)
{	
	pausa_inicio_nivel = false;
	instance_destroy(self,true);
}
else
{
	if (alarma_i >= duracion_pausa)
	{
		obj_settings.pausa = false;
		pausa_inicio_nivel = false;
	}
	else
	{
		obj_settings.pausa = true;
		pausa_inicio_nivel = true;
	}
	alarm[0] = 1;
}