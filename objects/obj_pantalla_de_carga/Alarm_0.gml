/// @description 


if (espera_carga_completa <= 0)
	//room_goto(Nivel_1);
	room_goto(Menu);
else
{
	espera_carga_completa -= 1;
	alarm[0] = 1;
}