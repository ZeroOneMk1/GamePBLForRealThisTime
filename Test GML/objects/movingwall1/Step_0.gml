/// @description Insert description here
// You can write your code in this editor
x += horizontal_speed * dir;

if(x <= position_from || x >= position_to) {
	dir *= -1;
}
