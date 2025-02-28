/// @description 

if (pantalla_completa && room <> Menu && room <> How_to_play && obj_settings.estado <> ESTADO_PARTIDA.END)
{
	if (instance_exists(obj_player_1))
		obj_player_1.puntos += puntos_player_1;
	if (instance_exists(obj_player_2))
		obj_player_2.puntos += puntos_player_2;
	if (room <> room_last)
	{
		room_goto_next();
	}
	else
	{
		obj_settings.estado = ESTADO_PARTIDA.END;
		alarm[0] = 120;
	}
};

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