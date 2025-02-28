/// @description 

if (instance_exists(obj_controllers) && obj_controllers.escape)
{
	obj_settings.poner_en_pausa();
}

if (obj_settings.estado == ESTADO_PARTIDA.NORMAL)
	i_temporizador_fantasma -= 1;

if (i_temporizador_fantasma <= 0)
{
	instance_create_layer(display_get_gui_width(),0,"Enemigos",obj_fantasma);
	i_temporizador_fantasma = temporizador_fantasma;
};