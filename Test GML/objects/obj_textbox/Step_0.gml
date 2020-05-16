/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(ord("B"))){
	if(page+1 < array_length_1d(text)){
		page += 1;
	} else {
		instance_destroy();
		instance_destroy(triggertextbox);
	}
}
