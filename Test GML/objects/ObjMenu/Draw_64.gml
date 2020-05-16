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