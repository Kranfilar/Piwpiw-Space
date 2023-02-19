spd = 5;
hspd = 0;
vspd = 0;
delay=0;

// movimentação player
 
	function movement () {	
	
		var key_right = keyboard_check(ord("D")),
			key_left = keyboard_check(ord("A")),
			key_down = keyboard_check(ord("S")),
			key_up = keyboard_check(ord("W")),

			h_move = key_right - key_left, 
			v_move = key_down - key_up;

		hspd = h_move*spd;
		vspd = v_move*spd;
	
		x += hspd;
		y += vspd;
	
		}
	
	
	

//tiro precinando com delay

	function shoot_delay (shoot_object, init_delay) {
		
		
		
		//variavel para atirtar e cancelar o tiro caso aperte o mouse e espaço ao mesmo tempo
		
		var key_shoot = keyboard_check(vk_space) - mouse_check_button(mb_left) ;
		
	    init_delay *= room_speed;
		
		
		
	//delay entre os tiros
	
	    if (delay<= 0 && key_shoot != 0) {
		
	        var _shoot_object = instance_create_layer(x,y,layer,shoot_object);
	        _shoot_object.vspeed = -5;
	        delay = init_delay;
		
	    } else {
		
	        delay--;
		
	    }
	}