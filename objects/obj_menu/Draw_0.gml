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

draw_set_color(c_gray);
draw_text(display_get_gui_width()/2,200,"Move LEFT or RIGHT to select your player\nKeep in the middle to not use that input");

if (juego_puede_comenzar)
	draw_set_color(c_red);
else
	draw_set_color(c_gray);
draw_text(display_get_gui_width()/2,500,"Press attack to start the game");

if (opciones[0].posicion == 0 || opciones[1].posicion == 0 || opciones[2].posicion == 0)
{
	draw_set_color(c_lime);
	draw_text_transformed(170,0,"1UP",2,2,0);
}
if (opciones[0].posicion == 2 || opciones[1].posicion == 2 || opciones[2].posicion == 2)
{
	draw_set_color(c_aqua);
	draw_text_transformed(825,0,"2UP",2,2,0);
}

draw_set_halign(_halign);
draw_set_color(_color);