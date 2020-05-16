/// @description Insert description here
// You can write your code in this editor




if(place_meeting(x+hmov,y,deathblock)){
	if(hsp > 0){
		game_set_speed(60,gamespeed_fps);
		SlideTransition(TRANS_MODE.GOTO,room);
	}
	while(!place_meeting(x+sign(hmov),y,deathblock)){
		x = x + sign(hmov);
	}
	hmov = 0;
}

if(hmov > 2)or(hmov < -2){
	debug_event(hmov);
}

//VERTICAL COLLISIONS AND MOVEMENT TRANSFER;

if(place_meeting(x,y+vmov,deathblock)){
	if(vsp > 0){
		game_set_speed(60,gamespeed_fps);
		SlideTransition(TRANS_MODE.GOTO,room);;
	}
	while(!place_meeting(x,y+sign(vmov),deathblock)){
		y = y + sign(vmov);
	}
	
	vmov = 0;
}

