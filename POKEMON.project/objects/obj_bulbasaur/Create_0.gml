event_inherited();
global.bulbasaur = id
HP = 100;
sound = sound_bulbasaur
vineWhip = createVineWhip()
growl = createGrowl()
ds_list_add(moveList, vineWhip, growl)
assignToAllInlist(moveList, "owner", id)