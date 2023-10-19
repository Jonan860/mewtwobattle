if (x + y < 100){
	instance_destroy(); exit;
}

if (!audio_is_playing(move.sound)){
	audio_play_sound(move.sound, 0, 0)
}