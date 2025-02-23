/// @description Devuelve a la vida al enemigo si no explotada

if (instance_exists(obj_settings) && obj_settings.pausa) exit;

tiempo_explosion -= 1;
if (tiempo_explosion == 0)
{
	if (enemigo <> noone)
	{
		instance_activate_object(enemigo);
		enemigo.x = x;
		enemigo.y = y;
	}
	instance_destroy(self,true);
}
else
	alarm[0] = 1;