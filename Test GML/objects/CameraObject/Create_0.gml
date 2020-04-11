/// @description Initializing Camera

cam = view_camera[0];

focus = HeartObject;

wHalf = camera_get_view_width(cam) / 2;
hHalf = camera_get_view_height(cam) / 2;

xTo = xstart;
yTo = ystart;

smoothness = 10;