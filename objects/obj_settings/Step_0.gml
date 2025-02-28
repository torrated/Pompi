/// @description 

if (instance_exists(obj_controllers) && obj_controllers.escape 
	  //&& room <> Pantalla_de_Carga
	  //&& room <> Menu
	)
{
	//if (
	//	(instance_exists(obj_muestra_nivel) && obj_muestra_nivel.pausa_inicio_nivel == false)
	//	||
	//	(!instance_exists(obj_muestra_nivel))
	//	)
	//{
		//pausa = !pausa;
		//pantalla_pausa = !pantalla_pausa;
		obj_settings.poner_en_pausa();
	//}
}

//if (room <> Menu && room <> Pantalla_de_Carga && obj_settings.estado <> ESTADO_PARTIDA.PAUSA)
if (obj_settings.estado == ESTADO_PARTIDA.NORMAL)
	i_temporizador_fantasma -= 1;

if (i_temporizador_fantasma <= 0)
{
	instance_create_layer(display_get_gui_width(),0,"Enemigos",obj_fantasma);
	i_temporizador_fantasma = temporizador_fantasma;
}