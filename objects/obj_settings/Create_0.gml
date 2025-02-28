/// @description 

gravedad = 10;
//pausa = false;
//pantalla_pausa = false;

global.array_colisiones_normal = [obj_colisiones_plataformas,obj_colisiones_laterales];
global.array_colisiones_salto = [obj_colisiones_laterales,obj_colisiones_superior];

alarma_0_inicial = 60;
alarma_0 = alarma_0_inicial;
alarma_1_inicial = 60;
alarma_1 = alarma_1_inicial;

temporizador_fantasma = 60*10;
i_temporizador_fantasma = temporizador_fantasma;

function poner_en_pausa()
{
	switch (estado)
	{
		case ESTADO_PARTIDA.NORMAL: estado = ESTADO_PARTIDA.PAUSA; break;
		case ESTADO_PARTIDA.PAUSA: estado = ESTADO_PARTIDA.NORMAL; break;
	}
	//pantalla_pausa = !pantalla_pausa;
};

enum ESTADO_PARTIDA
{
    NORMAL,
	PAUSA,
	PLAYER_HIT,
	PAUSA_INICIO_NIVEL,
	MENU,
	SECUENCIA
};
estado = ESTADO_PARTIDA.MENU;