/// @description Insert description here
// You can write your code in this editor
move.owner.image_xscale*=-1
	alarm_counter-=1
	if (alarm_counter>0){
	alarm[0]=5
	}
	
	if(alarm_counter == 0){
	instance_destroy()
	}