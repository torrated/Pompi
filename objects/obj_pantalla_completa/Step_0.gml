/// @description 

if (pantalla_completa)
{
	room_goto_next();
}

if ((instance_number(obj_enemigo) == 0) && (room <> Pantalla_de_Carga))
{
	pantalla_completa = true;
}