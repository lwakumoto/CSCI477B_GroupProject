/// @description Spawn enemies

repeat(irandom_range(5,8)*curr_wave){
	var rand_x = random_range(0,room_width)
	var rand_y = random_range(0,2000)
	
	while (collision_circle(rand_x,rand_y,50,obj_obstacle,true,true)){
		var rand_x = random_range(0,room_width)
		var rand_y = random_range(0,2000)	
	}	

	
	var enemy_type = obj_enemy
	var enemy_chooser = random_range(0,100)
	if (enemy_chooser <= 35){
		enemy_type = obj_enemy	
	}
	else if(enemy_chooser <= 50){
		enemy_type = obj_enemy_crawler	
	}
	else if(enemy_chooser <= 65){
		enemy_type = obj_enemy_spitter	
	}
	else if(enemy_chooser <= 80){
		enemy_type = obj_enemy_animal
	}
	else if(enemy_chooser <= 95){
		enemy_type = obj_enemy_boomer
	}
	else{
		enemy_type = obj_enemy_car
	}
		instance_create_layer(rand_x,rand_y,"Enemies",enemy_type)
}