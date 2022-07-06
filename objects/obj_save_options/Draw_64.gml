if(finish>0){

draw_set_valign(fa_middle)
draw_set_halign(fa_center)
if(global.language=0){
draw_set_font(font_menu)
if(choice_previous=2){
draw_text_transformed_color(320,360,"Copied Save #"+string(Flag_GetSaveSlot())+" to Slot "+string(select_previous)+"!",2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1)}
if(choice_previous=3){
draw_text_transformed_color(320,360,"Moved Save #"+string(slot_previous)+" to Slot "+string(select_previous)+"!",2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1)}
if(choice_previous=4){
draw_text_transformed_color(320,360,"Deleted Save #"+string(slot_previous)+"!",2,2,0,c_yellow,c_yellow,c_yellow,c_yellow,1)}
}
if(global.language=1){
draw_set_font(font_fzxs12_18)
if(choice_previous=2){
draw_text_color(320,360,"已将"+string(Flag_GetSaveSlot())+"号存档复制至槽位"+string(select_previous)+"！",c_yellow,c_yellow,c_yellow,c_yellow,1)}
if(choice_previous=3){
draw_text_color(320,360,"已将"+string(slot_previous)+"号存档移动至槽位"+string(select_previous)+"！",c_yellow,c_yellow,c_yellow,c_yellow,1)}
if(choice_previous=4){
draw_text_color(320,360,"已删除"+string(slot_previous)+"号存档！",c_yellow,c_yellow,c_yellow,c_yellow,1)}
}
draw_set_valign(fa_top)
draw_set_halign(fa_left)
finish-=1

}