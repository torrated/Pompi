/// @description

alarma_i += 1;
if (alarma_i == duracion_alarma)
	instance_destroy(self,true);
else
	alarm[0] = 1;