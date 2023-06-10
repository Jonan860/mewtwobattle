/// @description Insert description here
// You can write your code in this editor
global.active_starter = noone
global.turn = TURNS.PLAYER
mainJukebox = ds_list_create()
ds_list_add(mainJukebox, sound_norska, sound_svenska)

playNextMainTheme = function(){
	leftShiftList(mainJukebox)
	audio_play_sound(mainJukebox,0,0)
}

winSetup = function(){
	global.state="win"
	audio_stop_sound(sound_svenska)
	audio_stop_sound(sound_norska)
	instance_create_depth(850,600,0,obj_win_girl);
	instance_create_depth(400,650,0,obj_poke_ball_button);
	if !audio_is_playing(sound_elite_four){
		audio_play_sound(sound_elite_four,0,1)
		audio_sound_gain(sound_elite_four, 1, 0)
	}
	with(obj_pokemon){
		if (id != global.mewtwo) instance_destroy()
		}
	with(obj_move_button){instance_destroy()}
	with(obj_switch){instance_destroy()}
	with(obj_damage_button){instance_destroy()}
	}
