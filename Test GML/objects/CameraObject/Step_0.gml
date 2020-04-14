/// @description Insert description here
// You can write your code in this editor
if(instance_exists(focus)){
	xTo = focus.x;
	yTo = focus.y;
}

x += (xTo-x)/smoothness;
y += (yTo-y)/smoothness;

camera_set_view_pos(cam, x-Wviewhalf, y-Hviewhalf);