/// @description 

tiempo_explosion -= 1;
if (tiempo_explosion == 0)
	instance_destroy(self,true);
else
	alarm[0] = 1;