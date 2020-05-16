/// @description Insert description here
// You can write your code in this editor

y += vertical_speed *dir;
 
 if(y >= position_from || y <= position_to) {
	 dir *= -1;
 }