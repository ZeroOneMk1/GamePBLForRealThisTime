/// @description Updating Camera

//Update Destination

if(instance_exists(focus)){
	xTo = focus.x;
	yTo = focus.y;
}

//Update Object Position

x += (xTo - x) / smoothness;
y += (yTo - y) / smoothness;

//Update Camera View

camera_set_view_pos(cam,x-wHalf,y-hHalf);
