
if global.state!="win" and global.state!="winwin"{
	if !(audio_is_playing(sound_svenska) or  audio_is_playing(sound_norska)){

	}
	with(obj_pokemon)
	{
		if(HP<=0)
	{
		audio_stop_all();
	room_goto(loser);
	}}
	
	if (global.turn == TURNS.MEWTWO and !instance_exists(obj_psy_cutter)){
	global.mewtwo.psyCutter.animationStart()
}
	
	if(global.mewtwo.HP <= 0) winSetup()
	
}


	
	
