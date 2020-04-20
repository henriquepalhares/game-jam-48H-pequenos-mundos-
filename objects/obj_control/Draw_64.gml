if(room == rm_play){
	var n = 1;
	draw_sprite(spr_GUI,0,0,0);
	repeat(global.vida){
		draw_sprite_ext(spr_formiga, 0, 30*n, 30, .7,.7, 0, c_white, .8);
		n++;
	}
	draw_set_color(c_white);
	draw_text(30,70,"Time Alive: "+string(global.tempo));
	draw_text(30,90,"level: "+string(global.level));
}