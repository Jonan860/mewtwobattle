// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function leftShiftList(list){
	var firstElement = list[|0]; 
	ds_list_delete(list, 0);  
	ds_list_add(list, firstElement); 
}

function assignToAllInlist(list, variableName, value){
	for (var i = 0; i < ds_list_size(list); i++) {
	    list[| i][$ variableName] = value;
	}
}