///@description Drawing F3
// You can write your code in this editor

draw_set_font(Courier);

draw_text(40,100,"vmov: "+string(vmov));
draw_text(40,150,"hmov: "+string(hmov));
draw_text(40,200,"vdir: "+string(vdir));
draw_text(40,250,"hdir: "+string(hdir));
draw_text(40,300,"aval: "+string(aval));
draw_text(40,350,"dval: "+string(dval));
draw_text(40,400,"X: "+string(x));
draw_text(40,450,"Y: "+string(y));

draw_self();