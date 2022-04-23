
	draw_set_halign(fa_right)
	draw_set_font(fnt_health)
	draw_set_color(c_white)
	draw_text(global.camera_width - 10,10,"Wave: " + string(curr_wave) + "/" + string(max_waves))
	draw_text(global.camera_width - 10, 10 + string_height("Test"), "Enemies: " + string(global.enemiesLeft))
	draw_text(global.camera_width - 10, 10 + string_height("Test")*2, "Active Enemies: " + string(instance_number(obj_enemy_parent)))
	
	draw_set_halign(fa_middle)
	draw_set_valign(fa_middle)
	// when the player dies, create a text effect
	if (display_dead_text){
		
		dead_text_size += (1 - dead_text_size)/15;
		dead_text_size = max(dead_text_size,1)
		

		draw_set_font(fnt_game_over)
		
		draw_text_transformed(global.camera_width/2,global.camera_height/2,death_text,dead_text_size,dead_text_size,0)
		draw_set_font(fnt_health)
		
		if (dead_text_size <= 1.1){
			draw_text(global.camera_width/2, global.camera_height/2  + string_height("Hello") + 25,	"Press R to Restart")
		}
		
	
		
		
		
	}
	
	if (wave_delay_timer > 0){
		draw_text(global.camera_width/2,global.camera_height/4, "Time Until Next Wave: " + string(wave_delay_timer div room_speed))
	}
	

	
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
	
	draw_text(10,20 + string_width("H"),"Kills: " + string(global.totalKills))
	

