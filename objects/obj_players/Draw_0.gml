/// @description 

draw_self();

switch (estado)
{
	case ESTADOS.IDLE: sprite_index = sprite_quieto; break;
	case ESTADOS.MUERTO: sprite_index = sprite_muerto; scr_animacion1(self); break;
	case ESTADOS.NORMAL: sprite_index = sprite_movimiento; break;
	case ESTADOS.SALTAR: sprite_index = sprite_movimiento; break;
	case ESTADOS.ATAQUE: sprite_index = sprite_ataque; break;
}