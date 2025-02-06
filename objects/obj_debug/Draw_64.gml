/// @description 

var _linea = 0;
var _i = 32;

with (obj_controllers)
{
	draw_text(960,_linea,"obj_controllers"); _linea += _i;
	draw_text(960,_linea,"eje x: "+string(eje_x)); _linea += _i;
	draw_text(960,_linea,"ataque: "+string(ataque)); _linea += _i;
	draw_text(960,_linea,"salto: "+string(salto)); _linea += _i;
	draw_text(960,_linea,"escape: "+string(escape)); _linea += _i;
	 _linea += _i;
}

with (obj_players)
{
	draw_text(960,_linea,"obj_players"); _linea += _i;
	draw_text(960,_linea,"mueve_eje_x: "+string(mueve_eje_x)); _linea += _i;
	draw_text(960,_linea,"velocidad x: "+string(x-xprevious)); _linea += _i;
	draw_text(960,_linea,"velocidad y: "+string(y-yprevious)); _linea += _i;
	draw_text(960,_linea,"en el suelo: "+string(en_el_suelo)); _linea += _i;
	 _linea += _i;
}

with (obj_enemigo)
{
	draw_text(960,_linea,"obj_enemigo"); _linea += _i;
	//draw_text(960,_linea,"array_length(resultado): "+string(array_length(resultado))); _linea += _i;
}