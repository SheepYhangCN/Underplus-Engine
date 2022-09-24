draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_white)
if(global.language=LANGUAGE.ENGLISH){
draw_set_font(font_dialog)
var text="Caution"}
if(global.language=LANGUAGE.SCHINESE){
draw_set_font(font_chinese)
var text="警告"}
draw_text_transformed_color(room_width/2,room_height/4,text,4,4,0,c_red,c_red,c_red,c_red,alpha)
draw_set_alpha(alpha)
if(global.language=LANGUAGE.ENGLISH){
var text="[c_white][scale,2]This AU is [c_red]IRRELEVANT[c_white] with Voltra's Storyshift,\nOnly the settings come from it."}
if(global.language=LANGUAGE.SCHINESE){
var text="[c_white][scale,2]此[font_dialog]AU[font_chinese]与[font_dialog]Voltra[font_chinese]的[font_dialog]Storyshift[font_chinese][c_red]「毫无关系」[c_white]，\n仅仅只是设定来源于它。"}
draw_text_scribble(room_width/2,room_height/2,text)
draw_set_alpha(1)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
if(global.language=LANGUAGE.ENGLISH){var text="Press Z or Enter to skip"}
if(global.language=LANGUAGE.SCHINESE){var text="[font_chinese]按下[font_dialog] Z [font_chinese]或[font_dialog] Enter [font_chinese]来跳过"}
draw_text_scribble(0,0,text)