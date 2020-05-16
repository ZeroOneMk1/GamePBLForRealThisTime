/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor

//draw textbox
draw_sprite(spr_box, 0, 0, 0);

//draw text
if(charCount < string_length(text[page])){
	charCount += 0.3;
}

textPart = string_copy(text[page], 1, charCount);


draw_set_halign(fa_center)
draw_text(0+(boxWidth/2),0+yBuffer,name);
draw_set_halign(fa_left)
draw_text_ext(0+xBuffer,0+stringHeight+yBuffer, textPart, stringHeight, boxWidth); 