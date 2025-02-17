/// @description Busca mandos siendo conectados o desconectados

switch(async_load[? "event_type"])
{
	case "gamepad discovered":
								if (async_load[? "pad_index"] == 0)
									obj_gui.muestra_mensaje_tiempo("Gamepad player 1 connected",120);
								if (async_load[? "pad_index"] == 1)
									obj_gui.muestra_mensaje_tiempo("Gamepad player 2 connected",120);
								obj_settings.poner_en_pausa();
								break;
	case "gamepad lost":
								if (async_load[? "pad_index"] == 0)
									//show_message("Gamepad player 1 disconnected");
									obj_gui.muestra_mensaje_tiempo("Gamepad player 1 disconnected",120);
								if (async_load[? "pad_index"] == 1)
									obj_gui.muestra_mensaje_tiempo("Gamepad player 2 disconnected",120);
								obj_settings.poner_en_pausa();
								break;
}