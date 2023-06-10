// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveStruct(_damage=0, _button = noone, _animation, _effect, _animationStart, _animationEnd, _sound) constructor{
damage = _damage
animation = _animation
animationStart = _animationStart
animationEnd = _animationEnd
effect = method(undefined, _effect)
button = _button
owner = noone
sound = _sound
getOpponent = function(){return ifElseReturn(owner == global.mewtwo, global.active_starter, global.mewtwo)}
}

function modifyStatBonus(pokemon, bonusString, increment){
var statBonus = variable_instance_get(pokemon, bonusString)
statBonus += increment
statBonus = max(min(statBonus, 6),-6)
variable_instance_set(pokemon, bonusString, statBonus)
}

function createTailWhip(){
return new moveStruct(, TailWhipButton,obj_tail_whip
,function(){modifyStatBonus(getOpponent(), "defence_bonus", -1)}
,animationStartBasic,animationEndStandard,sound_tail_whip)
}

function createDefenceCurl(){
return new moveStruct(, obj_defence_curl_button, obj_defence_curl,
function(){ modifyStatBonus(owner, "defence_bonus", 1)},animationStartBasic, defenceCurlAnimationEnd , sound_defence_curl)
}
function createGrowl(){
return new moveStruct(, obj_growl_button,  obj_growl,
function(){modifyStatBonus(getOpponent(), "attack_bonus", -1)}, growlAnimationStart, animationEndStandard,sound_growl)
}
function createEmber(){
return new moveStruct(20, obj_ember_button, obj_ember
,function(){do_damage(getOpponent())}, animationStartProjectile , animationEndStandard, sound_ember)
}
function createBubble(){
return new moveStruct(20, obj_bubble_button, obj_bubble
, function(){do_damage(getOpponent())}, animationStartProjectile, animationEndStandard, sound_bubble)
}
function createVineWhip(){
return new moveStruct(20, obj_vine_whip_button,  obj_vine_whip
, function(){do_damage(getOpponent())}, animationStartProjectile, animationEndStandard, sound_vine_whip )
}
function createPsyCutter(){
return new moveStruct(30, ,  obj_psy_cutter
, function(){do_damage(getOpponent()) }, animationStartProjectile, animationEndStandard, sound_psy_cutter)
}

function animationStartProjectile(){
	if(owner!= global.mewtwo){
		instance_create_depth(650,400,0,animation,{move : other})
	}
	else{
		instance_create_depth(global.mewtwo.x,global.mewtwo.y, 0, animation, {move : other})
	}
	audio_play_sound(sound,0,0)
	audio_play_sound(owner.sound,0,0)
}

function animationStartBasic(){
	instance_create_depth(0,0,0, animation, {move : other})
	audio_play_sound(sound,0,0)
	audio_play_sound(owner.sound,0,0)
}

function growlAnimationStart(){
	instance_create_depth(600,400,0,obj_growl, {move : other})
	audio_play_sound(sound,0,0)
}

function animationEndStandard(){
audio_stop_sound(sound)
effect()
switchTurn()		
}

function defenceCurlAnimationEnd(){
owner.sprite_index = object_get_sprite(owner.object_index)
effect()
switchTurn()
}

function switchTurn(){
	switch(global.turn){
	case TURNS.MEWTWO : global.turn = TURNS.PLAYER; exit;
	case TURNS.PLAYER : global.turn = TURNS.MEWTWO; exit;
	}
}


