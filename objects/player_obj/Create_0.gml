hspd = 0;
vspd = 0;
shooter_delay = 0;

// movimentação player
 
function movement () {	
	var key_right = keyboard_check(ord("D")),
		key_left = keyboard_check(ord("A")),
		key_down = keyboard_check(ord("S")),
		key_up = keyboard_check(ord("W")),
		key_sprint = keyboard_check(vk_shift),
		h_move = key_right - key_left, 
		v_move = key_down - key_up;
	if (key_sprint) {
		hspd = h_move*(player_speed)*1.75;
		vspd = v_move*(player_speed)*1.75;			
	} else {
		hspd = h_move*player_speed;
		vspd = v_move*player_speed;	
	}
		x += hspd;
		y += vspd;
	}
	
	
	

//tiro precinando com delay

function shoot_delay (shoot_object, init_delay) {
//variavel para atirtar e cancelar o tiro caso aperte o mouse e espaço ao mesmo tempo
	var key_shoot = keyboard_check(vk_space) - mouse_check_button(mb_left) ;
	init_delay *= room_speed;
//delay entre os tiros
	if (shooter_delay <= 0 && key_shoot != 0) {
	    var _shoot_object = instance_create_layer(x,y,layer,shoot_object);
	    _shoot_object.vspeed = -5;
	    shooter_delay = init_delay;
	} else {		
	    shooter_delay--;
	}
}