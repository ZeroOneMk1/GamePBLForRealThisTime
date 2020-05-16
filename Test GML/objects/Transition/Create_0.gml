/// @description Insert description here
// You can write your code in this editor
//size, variables, and mode setup

width = display_get_gui_width();
height = display_get_gui_height();
h_half = height * 0.5;
enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}
mode = TRANS_MODE.INTRO;
percent = 1;
target = room;