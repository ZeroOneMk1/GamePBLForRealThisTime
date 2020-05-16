/// @description Insert description here
// You can write your code in this editor

if(place_meeting(x,y, HeartObject)){
	if(myTextbox == noone){
		myTextbox = instance_create_layer(x,y,"Text", obj_textbox);
		myTextbox.text = myText;
		myTextbox.name = myName;
	}
} else {
	if (myTextbox != noone){
	instance_destroy(myTextbox);
	myTextbox = noone;
	}
}