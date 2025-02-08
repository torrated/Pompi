/// @description 

// si el juego está en pausa, no se mueven 
if (instance_exists(obj_settings) && obj_settings.pausa) exit;



// estado
if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+velocidad_y,global.array_colisiones_normal,false,false))
	en_el_suelo = true;
else
	en_el_suelo = false;


// cooldown para las pompas
if (i_cooldown_pompas < cooldown_pompas)
	i_cooldown_pompas -= 1;
if (i_cooldown_pompas == 0)
{
	i_cooldown_pompas = cooldown_pompas;
	estado = ESTADOS.NORMAL;
}



// movimiento
var _origen_x = 0;
var _origen_y = 0;
if ((object_index == obj_player_1) && instance_exists(obj_controllers))
{
	_origen_x = obj_controllers.eje_x;
	_origen_y = obj_controllers.salto;
}
if ((object_index == obj_enemigo) && tecla_virtual_salto && en_el_suelo)
{
	_origen_y = tecla_virtual_salto;
	tecla_virtual_salto = 0;
}


// eje X
mueve_eje_x = _origen_x * velocidad_x;
	
// eje Y
velocidad_y += obj_settings.gravedad;
velocidad_y = clamp(velocidad_y,-altura_salto,obj_settings.gravedad);
if (en_el_suelo)
	velocidad_y -= _origen_y * altura_salto;
		
if (velocidad_y < 0)
	move_and_collide(mueve_eje_x,
						velocidad_y,
						global.array_colisiones_salto,
						undefined,
						undefined,
						undefined,
						velocidad_x_inicial,
						velocidad_y_inicial
						);
else
	move_and_collide(mueve_eje_x,
					velocidad_y,
					global.array_colisiones_normal,
					undefined,
					undefined,
					undefined,
					velocidad_x_inicial,
					velocidad_y_inicial
					);


// sprites de sentido
if (mueve_eje_x <> 0)
	image_xscale = sign(mueve_eje_x);


// ataque
if ((object_index == obj_player_1) && instance_exists(obj_controllers))
{
	if ((obj_controllers.ataque) && (i_cooldown_pompas == cooldown_pompas))
	{
		var _pompa = instance_create_layer(x,y,"Pompas",obj_pompa);
		_pompa.sentido = image_xscale;
		_pompa.player = self;
		i_cooldown_pompas -= 1;
		if (sprite_ataque <> noone)
			estado = ESTADOS.ATAQUE;
	}
}