/// @description 

// si el juego está en pausa, no se mueven 
if (instance_exists(obj_settings) && obj_settings.estado <> ESTADO_PARTIDA.NORMAL) exit;



// estado
if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+velocidad_y,global.array_colisiones_normal,false,false))
	en_el_suelo = true;
else
	en_el_suelo = false;


// cooldown para el salto
if (i_cooldown_salto < cooldown_salto)
	i_cooldown_salto -= 1;
if (i_cooldown_salto == 0)
	i_cooldown_salto = cooldown_salto;
	
	
	
// cooldown para las pompas
if (i_cooldown_pompas < cooldown_pompas)
	i_cooldown_pompas -= 1;
if (i_cooldown_pompas == 0)
{
	i_cooldown_pompas = cooldown_pompas;
	if (object_index <> obj_enemigo) //para seleccionar luego el sprite de idle o corriendo
	if (abs(mueve_eje_x) == 0)
		estado = ESTADOS.IDLE;
	else
		estado = ESTADOS.NORMAL;
}



// movimiento
var _origen_x = 0;
var _origen_y = 0;
if ((object_index == obj_player_1 || object_index == obj_player_2) && instance_exists(obj_controllers))
{
	_origen_x = obj_controllers.controles[control].eje_x;
	if (i_cooldown_salto == cooldown_salto)
	{
		_origen_y = obj_controllers.controles[control].salto;
		if (_origen_y == true)
			i_cooldown_salto -= 1;
	}
}
if ((object_index == obj_enemigo) && tecla_virtual_salto && en_el_suelo)
{
	_origen_y = tecla_virtual_salto;
	tecla_virtual_salto = 0;
}


// eje X
if (i_cooldown_pompas = cooldown_pompas)
	mueve_eje_x = _origen_x * velocidad_x;
else
	mueve_eje_x = 0;
	
if (object_index <> obj_enemigo && i_cooldown_pompas = cooldown_pompas) //para seleccionar luego el sprite de idle o corriendo
	if (abs(mueve_eje_x) == 0)
		estado = ESTADOS.IDLE;
	else
		estado = ESTADOS.NORMAL;
	
// eje Y
velocidad_y += obj_settings.gravedad;
velocidad_y = clamp(velocidad_y,-altura_salto,obj_settings.gravedad);
if (en_el_suelo)
	if (i_cooldown_salto == cooldown_salto-1 || object_index == obj_enemigo)
		velocidad_y -= _origen_y * altura_salto;

var _array = noone;
if (velocidad_y < 0)
	_array = global.array_colisiones_salto;
else
	_array = global.array_colisiones_normal;

move_and_collide(mueve_eje_x,
				velocidad_y,
				_array,
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
if (object_index == obj_player_1 || object_index == obj_player_2)
{
	if ((obj_controllers.controles[control].ataque) && (i_cooldown_pompas == cooldown_pompas))
	{
		var _pompa = instance_create_layer(x,y-(sprite_height/2),"Pompas",obj_pompa);
		_pompa.sentido = image_xscale;
		if (object_index == obj_player_1)
			_pompa.player = obj_player_1;
		if (object_index == obj_player_2)
			_pompa.player = obj_player_2;
		i_cooldown_pompas -= 1;
		if (sprite_ataque <> noone)
			estado = ESTADOS.ATAQUE;
	}
}