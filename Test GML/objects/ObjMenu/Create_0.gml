/// @description Insert description here
// You can write your code in this editor


#macro SAVEFILE "SaveTheRoom.sav"

gWidth = display_get_gui_width();
gHeight = display_get_gui_height();
gMargin = 32;

MenuX = gWidth + 200;
MenuY = gHeight - gMargin;
MenuXTarget = gWidth - gMargin;
MenuSp = 25; //lower = faster
MenuFont = Minecraft;
MenuItemHeight = font_get_size(Minecraft);
MenuCommitted = -1;
MenuControl = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menuItems = array_length_1d(menu);
menuSelect = 2;