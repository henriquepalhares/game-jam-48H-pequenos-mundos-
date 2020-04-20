if(!audio_is_playing(snd_menu_music)){
	audio_stop_all();
	audio_play_sound(snd_menu_music,1,0.5);
}