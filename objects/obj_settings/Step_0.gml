/// @description 

if (instance_exists(obj_controllers) 
      && obj_controllers.escape 
	  && room <> Pantalla_de_Carga
	  && room <> Menu
	)
{
	if (
		(instance_exists(obj_muestra_nivel) && obj_muestra_nivel.pausa_inicio_nivel == false)
		||
		(!instance_exists(obj_muestra_nivel))
		)
	{
		pausa = !pausa;
		pantalla_pausa = !pantalla_pausa;
	}
}