if(global.turn == TURNS.PLAYER) {
	with(pokemon) {
		global.active_starter = id
		for(var i = 0; i < ds_list_size(moveList); i++){
			instance_create_depth(200, 500 + 100 * i, 0, moveList[|i].button, {owner : moveList[|i]})
		}
	}

	with(obj_starters_button){
		instance_destroy();
	}
}