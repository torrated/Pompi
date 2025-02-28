/// @description 

// si el juego está en pausa, no se mueven 
if (instance_exists(obj_settings) && obj_settings.estado <> ESTADO_PARTIDA.NORMAL) exit;


// Inherit the parent event
event_inherited();


scr_path_1(self);

// sprites
switch (estado)
{
	case ESTADOS.NORMAL:	sprite_index = sprite_movimiento; break;
	case ESTADOS.IDLE:		sprite_index = sprite_quieto; break;
	case ESTADOS.SALTAR:	sprite_index = sprite_salto; break;
}