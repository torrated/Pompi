/// @description 

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