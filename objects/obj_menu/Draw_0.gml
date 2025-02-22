/// @description 

with (obj_controllers)
{
	var _halign = draw_get_halign();
	draw_set_halign(fa_center);
	if (player1 <> noone)
	{
		draw_text(display_get_gui_width()/2,200,"player1.eje_x: "+string(controles[player1].eje_x));
		draw_text(display_get_gui_width()/2,220,"player1.ataque: "+string(controles[player1].ataque));
		draw_text(display_get_gui_width()/2,240,"player1.salto: "+string(controles[player1].salto));
	}
	if (player2 <> noone)
	{
		draw_text(display_get_gui_width()/2,280,"player2.eje_x: "+string(controles[player2].eje_x));
		draw_text(display_get_gui_width()/2,300,"player2.ataque: "+string(controles[player2].ataque));
		draw_text(display_get_gui_width()/2,320,"player2.salto: "+string(controles[player2].salto));
	}
	
	draw_set_halign(_halign);
}