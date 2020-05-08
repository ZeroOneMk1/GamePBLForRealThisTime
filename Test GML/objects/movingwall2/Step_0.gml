/// @description Insert description here
// You can write your code in this editor
y += horizontal_speed * dir;

if(y <= position_from || y >= position_to) {
	dir *= -1;
}
