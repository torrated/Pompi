/// @description 

if (instance_exists(obj_settings) && obj_settings.estado <> ESTADO_PARTIDA.NORMAL) exit;

if (instance_exists(obj_player_1) || instance_exists(obj_player_2))
{
	if (instance_exists(obj_player_1))
		distancia_player1 = distance_to_object(obj_player_1);
	else
		distancia_player1 = 0;
	if (instance_exists(obj_player_2))
		distancia_player2 = distance_to_object(obj_player_2);
	else
		distancia_player2 = 0;

	if (distancia_player1 == 0)
		objetivo = obj_player_2;
	else if (distancia_player2 == 0)
		objetivo = obj_player_1;
	else if (distancia_player1 < distancia_player2 || distancia_player1 == distancia_player2)
		objetivo = obj_player_1;
	else if (distancia_player1 > distancia_player2)
		objetivo = obj_player_2;

	move_towards_point(objetivo.x,objetivo.y,objetivo.velocidad_x_inicial*0.5);

	if (objetivo.x > x)
		image_xscale = 1;
	else
		image_xscale = -1;
}