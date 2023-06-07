/// @description Insert description here
// You can write your code in this editor

if (x+y<100){
	instance_destroy()
}

if (!audio_is_playing(move.sound)){
	audio_play_sound(move.sound,0,0)
}