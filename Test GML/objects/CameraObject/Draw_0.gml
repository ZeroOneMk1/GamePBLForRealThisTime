/// @description F3 menu etc.
// You can write your code in this editor

///@description Drawing F3
// You can write your code in this editor

draw_set_font(Minecraft);

draw_text(x-wHalf + 40,y-hHalf + 100,"vmov: "+string(focus.vmov));
draw_text(x-wHalf + 40,y-hHalf + 150,"hmov: "+string(focus.hmov));
draw_text(x-wHalf + 40,y-hHalf + 200,"vdir: "+string(focus.vdir));
draw_text(x-wHalf + 40,y-hHalf + 250,"hdir: "+string(focus.hdir));
draw_text(x-wHalf + 40,y-hHalf + 300,"aval: "+string(focus.aval));
draw_text(x-wHalf + 40,y-hHalf + 350,"dval: "+string(focus.dval));
draw_text(x-wHalf + 40,y-hHalf + 400,"X: "+string(focus.x));
draw_text(x-wHalf + 40,y-hHalf + 450,"Y: "+string(focus.y));
