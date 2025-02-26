/// @description 

mueve_eje_x = 0;
altura_salto_inicial = 64;
altura_salto = altura_salto_inicial;

velocidad_x_inicial = 5;
velocidad_y_inicial = 64;
velocidad_x = velocidad_x_inicial;
velocidad_y = velocidad_y_inicial;

en_el_suelo = false;

cooldown_pompas = 15;
i_cooldown_pompas = cooldown_pompas;
cooldown_salto = 15;
i_cooldown_salto = cooldown_salto;

sprite_quieto = noone;
sprite_movimiento = noone;
sprite_ataque = noone;
sprite_muerto = noone;

tecla_virtual_salto = 0;

vidas = 1;

enum ESTADOS
{
    NORMAL,
	IDLE,
	SALTAR,
	MUERTO,
	ATAQUE
};
estado = ESTADOS.NORMAL;

puntos = 0;

control = noone;