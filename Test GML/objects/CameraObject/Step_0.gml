///@description Stepslmao

if(instance_exists(focus)){
	xTo = focus.x
	yTo = focus.y
}

xTo += (xTo - x) / smoothness;
yTo += (yTo - y) / smoothness;

camera_set_view_pos(cam, x - Wviewhalf, y - Hviewhalf);