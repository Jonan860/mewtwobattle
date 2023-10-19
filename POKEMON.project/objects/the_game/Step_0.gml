
if (global.state != "win") {
	if (!(audio_is_playing(sound_svenska) or  audio_is_playing(sound_norska))) {
		playNextMainTheme()
	}
	with(obj_pokemon){
		if(HP <= 0){
			if(id == global.mewtwo){
				other.winSetup(); exit;
			} else {
				audio_stop_all();
				room_goto(loser); exit;
			}
		}
	}
	
	if (global.turn == TURNS.MEWTWO and !instance_exists(obj_psy_cutter)){
		global.mewtwo.psyCutter.animationStart()
	}
	
	if(global.mewtwo.HP <= 0) {
		winSetup()
	}
	
}


	
	
