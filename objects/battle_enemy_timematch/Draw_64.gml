if(global.language=0){draw_text_scribble(10,10,"[scale,3][font_crypt_of_tomorrow]Press X or Shift to quit")}
if(global.language=1){draw_text_scribble(10,10,"[scale,2][font_chinese]按下[font_dialog] X [font_chinese]或[font_dialog] Shift [font_chinese]来退出")}
draw_set_halign(fa_right)
if(string_length(string(Battle_GetTurnTime() div 60 mod 60))=1){
var _string="0"+string(Battle_GetTurnTime() div 60 mod 60)
}else{
var _string=string(Battle_GetTurnTime() div 60 mod 60)
}
draw_text_scribble(room_width-10,10,"[scale,4][font_crypt_of_tomorrow]0"+string(Battle_GetTurnTime() div 60 div 60)+":"+_string)
draw_set_halign(fa_left)