if(room == rm_play){
	randomize();
	repeat(2+(global.level div 4) ){
		var yy = random_range(-32,-500);
		var xx = random_range(32,room_width-32);
		instance_create_layer(xx,yy,"obstaculos",obj_galho);
		randomize();
	}
var chance = random(100);
	if (chance < 5-0.1*global.level){
		var yy = random_range(-256,-500);
		var xx = choose(-256,room_width+500);
		instance_create_layer(xx,yy,"vento",obj_vento);
	}

	
	var repete = random_range(2,6);
	alarm[0]=room_speed * repete;
}