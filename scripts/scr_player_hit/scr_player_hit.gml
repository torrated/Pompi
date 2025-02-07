/// @function                scr_player_hit(_player)
/// @description             ejecuta la accion cuando el jugador es alcanzado por un enemigo
/// @param {Id.Instance}     _player    La instancia del player

function scr_player_hit(_player)
{
	//cambia el estado del player
	_player.estado = ESTADOS.MUERTO;
	
	//poner todo en pausa
	if (instance_exists(obj_settings))
		obj_settings.pausa = true;
	
	//reducir las vidas en 1
	_player.vidas -= 1;
}