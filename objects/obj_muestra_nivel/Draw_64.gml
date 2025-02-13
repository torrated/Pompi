/// @description 
if (room <> Pantalla_de_Carga)
{
	var _outline = 1.005;
	var _nivel = room_get_name(room);
	var _color = draw_get_color();
	var _halign = draw_get_halign();
	var _valign = draw_get_valign();
	
	_nivel = string_replace_all(_nivel,"Nivel_","LEVEL ");
	draw_set_halign(fa_center);
	draw_set_color(c_aqua);
	draw_text_transformed(480,display_get_gui_height()/2,_nivel,2*_outline,2*_outline,0);
	draw_set_color(c_white);
	draw_text_transformed(480,display_get_gui_height()/2,_nivel,2,2,0);
	
	draw_set_color(_color);
	draw_set_halign(_halign);
	draw_set_valign(_valign);
}