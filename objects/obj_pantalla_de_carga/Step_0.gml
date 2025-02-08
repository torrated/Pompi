/// @description

for (var _i = 0; _i < array_length(objetos_a_cargar); _i++)
{
	if (instance_number(objetos_a_cargar[_i]) <= 0)
		todo_cargado = false;
}

if (todo_cargado)
{
	muestra_carga_completa = true;
	alarm[0] = 1;
}