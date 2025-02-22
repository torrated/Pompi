/// @description 

tiempo = 0;
tiempo_i = 0;
mostrar_mensaje = false;


/// @function				muestra_mensaje_tiempo
/// @param {String}	_mensaje	El mensaje a mostrar
/// @param {Real}	_tiempo	El tiempo en frames que dura el mensajke
/// @description			Muestra un mensaje en pantalla un tiempo indicado
function muestra_mensaje_tiempo(_mensaje, _tiempo)
{
	mostrar_mensaje = true;
	mensaje = _mensaje;
	tiempo = _tiempo;
	tiempo_i = 0;
}