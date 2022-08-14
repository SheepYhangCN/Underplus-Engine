if(finish>0){

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
draw_set_color(c_yellow)
if(global.language=0){
draw_set_font(font_menu)
if(choice_previous=2){
draw_text_transformed(320,360,"Copied Save #"+string(Flag_GetSaveSlot())+" to Slot "+string(select_previous)+"!",2,2,0)}
if(choice_previous=3){
draw_text_transformed(320,360,"Moved Save #"+string(slot_previous)+" to Slot "+string(select_previous)+"!",2,2,0)}
if(choice_previous=4){
draw_text_transformed(320,360,"Deleted Save #"+string(slot_previous)+"!",2,2,0)}
}
if(global.language=1){
if(choice_previous=2){
draw_text_scribble(320,360,"[scale,2][font_chinese]已将[font_menu]"+string(Flag_GetSaveSlot())+"[font_chinese]号存档复制至槽位[font_menu]"+string(select_previous)+"[font_chinese]！")}
if(choice_previous=3){
draw_text_scribble(320,360,"[scale,2][font_chinese]已将[font_menu]"+string(slot_previous)+"[font_chinese]号存档移动至槽位[font_menu]"+string(select_previous)+"[font_chinese]！")}
if(choice_previous=4){
draw_text_scribble(320,360,"[scale,2][font_chinese]已删除[font_menu]"+string(slot_previous)+"[font_chinese]号存档！")}
}
draw_set_valign(fa_top)
draw_set_halign(fa_left)
finish-=1

}