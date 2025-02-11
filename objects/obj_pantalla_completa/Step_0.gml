/// @description 

if (pantalla_completa)
{
	room_goto_next();
}

var _pompas = 0;
with (obj_pompa)
{
	if (sprite_index = spr_pompa_enemigo)
		_pompas += 1;
}

if ((instance_number(obj_enemigo) == 0) && (room <> Pantalla_de_Carga) && (_pompas == 0))
{
	pantalla_completa = true;
}