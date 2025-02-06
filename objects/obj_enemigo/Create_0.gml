/// @description 

// Inherit the parent event
event_inherited();

sprite_quieto = spr_enemigo_idle;
sprite_movimiento = spr_enemigo;
sprite_salto = spr_enemigo;

puntos = 100;

velocidad_x_inicial = 3;

enum ESTADOS
{
    NORMAL,
	IDLE,
	SALTAR
};

estado = ESTADOS.NORMAL;
contador_idle_inicial = 30; // 60 = 1 segundo
contador_idle = contador_idle_inicial;