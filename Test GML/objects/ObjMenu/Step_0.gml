/// @description Insert description here
// You can write your code in this editor

draw_set_font(MenuFont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);


for (var i = 0; i < menuItems; i++){
    var txt = menu[i];
    if(menuSelect == i){
        txt = string_insert("> ", txt, 0);
        var col = c_white;
    }else {
        var col = c_gray;
    }

    var xx = MenuX;
    var yy = MenuY - (MenuItemHeight * (i * 1.5));

    draw_set_color(col);
    draw_text(xx,yy,txt);
}
/// @description Insert description here
// You can write your code in this editor
w = keyboard_check_pressed(ord("W"));
s = keyboard_check_pressed(ord("S"));
enter = keyboard_check_pressed(vk_enter);
MenuX += (MenuXTarget - MenuX) / MenuSp;

if (MenuControl){
    if (w){
        menuSelect++;
        if(menuSelect >= menuItems){
            menuSelect = 0;
        }
    }
    if (s){
        menuSelect--;
        if(menuSelect < 0){
            menuSelect = menuItems - 1;
        }
    }
    if(enter){
        MenuXTarget = gWidth + 200;
        MenuCommitted = menuSelect;
        MenuControl = false;
    }
}

if (MenuX > gWidth + 150) and (MenuCommitted != -1){
    switch (MenuCommitted){
        case 2: room = room1; break;
        case 1:
        {
            if(!file_exists(SAVEFILE)){
                room = room2;
            }else{
                var file = file_text_open_read(SAVEFILE);
                var target = file_text_read_real(file);
                file_text_close(file);
                room = target;
            }break;
        }
        case 0: game_end(); break;

    }
}