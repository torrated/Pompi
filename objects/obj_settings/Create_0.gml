/// @description 

gravedad = 10;
pausa = false;
pantalla_pausa = false;

global.array_colisiones_normal = [obj_colisiones_plataformas,obj_colisiones_laterales,obj_colisiones_superior];
global.array_colisiones_salto = [obj_colisiones_laterales,obj_colisiones_superior];

alarma_0_inicial = 60;
alarma_0 = alarma_0_inicial;
alarma_1_inicial = 60;
alarma_1 = alarma_1_inicial;