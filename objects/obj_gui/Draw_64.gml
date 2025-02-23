/// @description

// VERSION
var _color = draw_get_color();
var _align = draw_get_halign();

draw_set_color(c_white);
draw_set_halign(fa_center)
draw_text(display_get_gui_width()/2,745,"v0.8");


// NIVEL
if (room <> Pantalla_de_Carga && room <> Menu)
{
	var _outline = 1.1;
	var _nivel = room_get_name(room);
	_nivel = string_replace_all(_nivel,"Nivel_","");
	draw_set_color(c_black);
	draw_text_transformed(29,58,_nivel,2*_outline,2*_outline,0);
	draw_set_color(c_yellow);
	draw_text_transformed(30,60,_nivel,2,2,0);
}



// PAUSE
if (instance_exists(obj_settings) && obj_settings.pantalla_pausa)
{
	draw_set_color(c_white);
	draw_text(440,375,"PAUSE");
}
	

// 1UP
if (room <> Pantalla_de_Carga)
{
	if (instance_exists(obj_player_1))
	{
		draw_set_color(c_lime);
		draw_text_transformed(170,0,"1UP",2,2,0);
		draw_set_color(c_white);
		draw_text_transformed(170,30,string(obj_player_1.puntos+obj_pantalla_completa.puntos_player_1),2,2,0);
	
		for (var _i = 0; _i < obj_player_1.vidas; _i++)
		{
			draw_set_color(c_lime);
			draw_circle(15+(_i*31),750,15,false);
			draw_set_color(c_black)
			draw_circle(15+(_i*31),750,16,true);
		}
	}
	else if (room <> Menu)
	{
		draw_set_color(c_lime);
		draw_set_halign(fa_center);
		draw_text_transformed(200,0,"INSERT\nCOIN",2,2,0);
	}
}


// 2UP
if (room <> Pantalla_de_Carga)
{
	if (instance_exists(obj_player_2))
	{
		draw_set_color(c_aqua);
		draw_text_transformed(825,0,"2UP",2,2,0);

		draw_set_color(c_white);
		draw_text_transformed(825,30,string(obj_player_2.puntos+obj_pantalla_completa.puntos_player_2),2,2,0);
	
		for (var _i = 0; _i < obj_player_2.vidas; _i++)
		{
			draw_set_color(c_aqua);
			draw_circle(1010-(_i*31),750,15,false);
			draw_set_color(c_black)
			draw_circle(1010-(_i*31),750,16,true);
		}
	}
		
	else if (room <> Menu)
	{
		draw_set_color(c_aqua);
		draw_set_halign(fa_center);
		draw_text_transformed(750,0,"INSERT\nCOIN",2,2,0);
	}
}


// OTROS MENSAJES
if (mostrar_mensaje)
{	
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_text(display_get_gui_width()/2,display_get_gui_height()/2,mensaje);
}


// restaura valores anteriores
draw_set_color(_color);
draw_set_halign(_align);