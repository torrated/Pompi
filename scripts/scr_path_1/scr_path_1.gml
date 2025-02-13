/// @function				scr_path_1
/// @param {obj_enemigo}	_enemigo	El enemigo que seguirá la ruta
/// @description			Ruta sencilla alrededor del nivel

function scr_path_1(_enemigo)
{
	if (_enemigo.estado == ESTADOS.NORMAL)
	{
		var _sentido = _enemigo.image_xscale;
		var _resultado = move_and_collide(_sentido*_enemigo.velocidad_x_inicial,0,global.array_colisiones_normal);
	
		var _velocidad_total = abs(_enemigo.x-_enemigo.xprevious) + abs(_enemigo.y-_enemigo.yprevious);
	
		if (irandom_range(0,300) <= 1)
		{
			_enemigo.estado = ESTADOS.IDLE;
			_enemigo.image_xscale = irandom_range(0,1);
			if (_enemigo.image_xscale == 0) _enemigo.image_xscale = -1;
			exit;
		}
		
		if (array_length(_resultado) > 0)
		{
			_enemigo.image_xscale *= -1;
			_enemigo.estado = ESTADOS.IDLE;
			exit;
		}
	}
	
	
	if (_enemigo.estado == ESTADOS.IDLE)
	{
		_enemigo.contador_idle -= 1;
		if (_enemigo.contador_idle == 0)
		{
			_enemigo.contador_idle = _enemigo.contador_idle_inicial;
			var _eleccion = irandom_range(1,2);
			switch (_eleccion)
			{
				case 1: _enemigo.estado = ESTADOS.SALTAR; break;
				case 2: _enemigo.estado = ESTADOS.NORMAL; break;
			}
			exit;
		}
	}
	
	
	if (_enemigo.estado == ESTADOS.SALTAR)
	{
		_enemigo.tecla_virtual_salto = 1;
		_enemigo.estado = ESTADOS.IDLE;
		exit;
	}
}