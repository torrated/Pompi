/// @description 

var _linea = 0;
var _i = 32;

with (obj_controllers)
{
	//draw_text(960,_linea,"obj_controllers"); _linea += _i;
	//draw_text(960,_linea,"eje x: "+string(eje_x)); _linea += _i;
	//draw_text(960,_linea,"ataque: "+string(ataque)); _linea += _i;
	//draw_text(960,_linea,"salto: "+string(salto)); _linea += _i;
	//draw_text(960,_linea,"escape: "+string(escape)); _linea += _i;
	// _linea += _i;
}

with (obj_player_1)
{
	draw_text(960,_linea,"obj_player_1"); _linea += _i;
	draw_text(960,_linea,"vidas: "+string(vidas)); _linea += _i;
	draw_text(960,_linea,"altura_salto: "+string(altura_salto)); _linea += _i;
	draw_text(960,_linea,"velocidad_y: "+string(velocidad_y)); _linea += _i;

}

with (obj_enemigo)
{
	draw_text(960,_linea,"obj_enemigo"); _linea += _i;
	//draw_text(960,_linea,"array_length(resultado): "+string(array_length(resultado))); _linea += _i;
}