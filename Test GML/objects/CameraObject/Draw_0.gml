
/// @description Skrrra

draw_set_font(Courier);

draw_text(x + 40 - Wviewhalf,y + 100 - Hviewhalf,"vmov: "+string(focus.vmov));
draw_text(x + 40 - Wviewhalf,y + 150 - Hviewhalf,"hmov: "+string(focus.hmov));
draw_text(x + 40 - Wviewhalf,y + 200 - Hviewhalf,"vdir: "+string(focus.vdir));
draw_text(x + 40 - Wviewhalf,y + 250 - Hviewhalf,"hdir: "+string(focus.hdir));
draw_text(x + 40 - Wviewhalf,y + 300 - Hviewhalf,"aval: "+string(focus.aval));
draw_text(x + 40 - Wviewhalf,y + 350 - Hviewhalf,"dval: "+string(focus.dval));
draw_text(x + 40 - Wviewhalf,y + 400 - Hviewhalf,"X: "+string(focus.x));
draw_text(x + 40 - Wviewhalf,y + 450 - Hviewhalf,"Y: "+string(focus.y));
