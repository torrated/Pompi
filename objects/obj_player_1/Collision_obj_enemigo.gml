/// @description 

if !(array_contains(golpeado_por,other.id))
{
	array_insert(golpeado_por,-1,other.id);
	scr_player_hit(self);
}