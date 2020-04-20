if(room==rm_play){
	if(!audio_is_playing(snd_play_music)){
		audio_stop_all();
		audio_play_sound(snd_play_music,0.5,1);
	}
	global.tempo = 0;
	global.level =0;
}
