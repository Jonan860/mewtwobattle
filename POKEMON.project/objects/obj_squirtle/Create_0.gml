event_inherited();
global.squirtle = id
HP=100;
	sound = sound_squirtle
	bubble = createBubble()
	defenceCurl= createDefenceCurl()
	moveList = ds_list_create()
	ds_list_add(moveList, bubble, defenceCurl)
	assignToAllInlist(moveList, "owner", id)
	
	defenceCurlSprite = spr_defence_curl