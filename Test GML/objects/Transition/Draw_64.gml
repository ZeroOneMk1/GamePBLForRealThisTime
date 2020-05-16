/// @description Insert description here
// You can write your code in this editor
// draws the bars

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(c_white);
	draw_rectangle(0,0,width,percent*h_half,false);
	draw_rectangle(0,height,width,height-(percent*h_half),false);
}

draw_set_color(c_yellow);
draw_text(50,50,string(percent));
