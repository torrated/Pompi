/// @description

var todo_cargado = true;

for (var _i = 0; _i < array_length(objetos_a_cargar); _i++)
{
	if (instance_number(objetos_a_cargar[_i]) <= 0)
		todo_cargado = false;
}

if (todo_cargado)
{
	alarm[0] = 1;
}