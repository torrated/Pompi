/// @description 

var _halign = draw_get_halign();
var _color = draw_get_color();

draw_set_color(c_white);
draw_set_halign(fa_center);

for (var _i = 0; _i < array_length(opciones); _i++)
{
	var _item = opciones[_i];
	draw_text(312+(200*_item.posicion),
	          300+(_i*50),
			  _item.texto);
}

if (juego_puede_comenzar)
	draw_set_color(c_white);
else
	draw_set_color(c_gray);

draw_text(display_get_gui_width()/2,500,"Press attack to start the game");

draw_set_halign(_halign);
draw_set_color(_color);
