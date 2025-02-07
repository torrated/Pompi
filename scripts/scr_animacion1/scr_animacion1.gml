/// @function                scr_animacion1(_instancia)
/// @description             ejecuta una animacion en la instancia
/// @param {Id.Instance}     _instancia    La instancia que se animará

function scr_animacion1(_instancia)
{
	if (global.animacion1_x == 0)
		global.animacion1_x = _instancia.x;
	if (global.animacion1_y == 0)
		global.animacion1_y = _instancia.y;

	_instancia.x = global.animacion1_x + random_range(-3,3);
	_instancia.y = global.animacion1_y + random_range(-3,3);
	
	global.animacion1_i-= 1;
	if (global.animacion1_i == 0)
	{
		global.animacion1_i = global.animacion1_duracion;
		
		//reiniciar la sala si quedan vidas
		if (_instancia.vidas > 0)
			obj_settings.alarm[0] = 1;
	
		//reiniciar el juego si no quedan vidas
		if (_instancia.vidas <= 0)
			obj_settings.alarm[1] = 1;
	}
}


global.animacion1_duracion = 60;
global.animacion1_i = global.animacion1_duracion;
global.animacion1_x = 0;
global.animacion1_y = 0;