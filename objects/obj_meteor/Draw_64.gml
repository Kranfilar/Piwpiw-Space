var pc = (health_point / initial_health_point) * 100
if (health_point != initial_health_point) {
	draw_healthbar(x-16,y+32,x+20,y+36,pc,c_black,c_red,c_red,0,true,false);
}