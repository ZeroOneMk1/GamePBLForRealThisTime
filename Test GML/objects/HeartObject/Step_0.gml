///@description Movements
d = keyboard_check(ord("D"));
a = keyboard_check(ord("A"));
spce = keyboard_check_pressed(vk_space);
cntspce = keyboard_check(vk_space);
w = keyboard_check(ord("W"));
s = keyboard_check(ord("S"));

// MAKING MOVEMENT SPEED UP AND DOWN INSTEAD OF BEING 0 OR 1;

if(a) && (aval<1){
	aval = aval + accsp;
}else if(!a) && (aval>0){
	aval = aval - accsp;
}

if(aval > 1){
	aval = 1;
}

if(d) && (dval<1){
	dval = dval + accsp;
}else if(!d) && (dval>0){
	dval = dval - accsp;
}

if(dval > 1){
	dval = 1;
}

//CALCULATING DIRECTION AND SPEED OF MOVEMENTS;

if(cntspce){
	grv = 0.15;
}else{
	grv = 0.4;
}

hdir = dval - aval;

vdir = s - w;

hmov = hdir * hsp;

vmov += grv;

//SUPER JUMP FOR BUGTESTING AND DEVCHEATS;

if(keyboard_check_pressed(ord("J"))){
	if(vsp == -10){
		vsp = -14;
	}else if(vsp == -14){
		vsp = -10;
	}
}

//WALL GRAB;

if(place_meeting(x+1,y,WallObject)) and (d-a == 1){
	vmov = vmov / 1.5;
}else if(place_meeting(x-1,y,WallObject)) and (d-a == -1){
	vmov = vmov / 1.5;
}

//JUMP AND WALLJUMP;

if(spce) && ((place_meeting(x,y+1,WallObject))or(place_meeting(x+1,y,WallObject))or(place_meeting(x-1,y,WallObject))){
	
		vmov = vsp;
}

//HORIZONTAL COLLISIONS AND MOVEMENT TRANSFER;

if(place_meeting(x+hmov,y,WallObject)){
	
	while(!place_meeting(x+sign(hmov),y,WallObject)){
		x = x + sign(hmov);
	}
	hmov = 0;
}

if(hmov > 2)or(hmov < -2){
	debug_event(hmov);
}

//VERTICAL COLLISIONS AND MOVEMENT TRANSFER;

if(place_meeting(x,y+vmov,WallObject)){
	
	while(!place_meeting(x,y+sign(vmov),WallObject)){
		y = y + sign(vmov);
	}
	
	vmov = 0;
}

//DASH;

/*if(keyboard_check_pressed(ord("E"))){
	
	if(d-a != 0){
		
		hmov = dashdis * sign(d-a);
	}
	
	if(s-w != 0){
		
		vmov = dashdis * sign(s-w) / 10;
	}
}
*/

if(keyboard_check_pressed(ord("E"))){
	x = 100
	y = 100
}

x = x + hmov;

y = y + vmov;

//SPRITE MANAGEMENT;

if(hdir > 0){
	sprite_index = HeartSpriteRWalk;
}else if(hdir < 0){
	sprite_index = HeartSpriteLWalk;
}else if(keyboard_check(vk_shift)){
	sprite_index =  HeartSpriteIdleFast;
}else if(hdir == 0){
	sprite_index = HeartSpriteIdle;
}

/* CRASHES THE GAME
i = 0;
while(i > -1){
	 i = i + 1;
}
*/

