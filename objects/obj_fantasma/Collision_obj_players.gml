/// @description 

if (other.object_index == obj_player_1 || other.object_index == obj_player_2)
{
	speed = 0;
	with (other)
	{
		if !(array_contains(golpeado_por,other.id))
		{
			array_insert(golpeado_por,-1,other.id);
			scr_player_hit(self);
		}
	}
}