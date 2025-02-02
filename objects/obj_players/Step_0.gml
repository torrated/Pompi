/// @description 

// estado
if (collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+velocidad_y,obj_colisiones,false,false))
	en_el_suelo = true;
else
	en_el_suelo = false;


// cooldown
if (i_cooldown_pompas < cooldown_pompas)
	i_cooldown_pompas -= 1;
if (i_cooldown_pompas == 0)
{
	i_cooldown_pompas = cooldown_pompas;
	sprite_index = sprite_quieto;
}



// movimiento
if (instance_exists(obj_controllers))
{
	// eje X
	mueve_eje_x = obj_controllers.eje_x * velocidad_x;
	
	// eje Y
	velocidad_y += obj_settings.gravedad;
	velocidad_y = clamp(velocidad_y,-altura_salto,obj_settings.gravedad);
	if (en_el_suelo)
		velocidad_y -= obj_controllers.salto * altura_salto;
		
	move_and_collide(mueve_eje_x,
					 velocidad_y,
					 obj_colisiones);
}


// sprites
if (mueve_eje_x <> 0)
	image_xscale = sign(mueve_eje_x);


// ataque
if (instance_exists(obj_controllers))
{
	if ((obj_controllers.ataque) && (i_cooldown_pompas == cooldown_pompas))
	{
		var _pompa = instance_create_layer(x,y,"Pompas",obj_pompa);
		_pompa.sentido = image_xscale;
		i_cooldown_pompas -= 1;
		if (sprite_ataque <> noone)
			sprite_index = sprite_ataque;
	}
}