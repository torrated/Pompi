/// @description 

var _linea = 0;
var _i = 32;

if (instance_exists(obj_controllers))
{
	draw_text(960,_linea,"obj_controllers"); _linea += _i;
	draw_text(960,_linea,"eje x: "+string(obj_controllers.eje_x)); _linea += _i;
	draw_text(960,_linea,"ataque: "+string(obj_controllers.ataque)); _linea += _i;
	draw_text(960,_linea,"salto: "+string(obj_controllers.salto)); _linea += _i;
	draw_text(960,_linea,"escape: "+string(obj_controllers.escape)); _linea += _i;
	 _linea += _i;
}

if (instance_exists(obj_players))
{
	draw_text(960,_linea,"obj_players"); _linea += _i;
	draw_text(960,_linea,"mueve_eje_x: "+string(obj_players.mueve_eje_x)); _linea += _i;
	draw_text(960,_linea,"velocidad x: "+string(obj_players.x-obj_players.xprevious)); _linea += _i;
	draw_text(960,_linea,"velocidad y: "+string(obj_players.y-obj_players.yprevious)); _linea += _i;
	 _linea += _i;
}