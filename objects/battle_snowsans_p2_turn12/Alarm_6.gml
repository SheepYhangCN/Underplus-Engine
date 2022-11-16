_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
_dialog.template=1
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 4}{scale 1}{voice 4}{utse_papy_face 1}SANS...{pause}{clear}{speed 10}...{speed 3}I UNDERSTOOD.{pause}{clear}HUMAN,{sleep 15}&YOU NEED TO HAVE&A LESSON.{pause}{clear}BUT, NOT NOW.{pause}{alarm `battle_snowsans_p2_turn12` 10 1}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 4}{speed 5}{scale 1}{voice 4}{utse_papy_face 1}SANS...{pause}{clear}{speed 10}...{speed 5}我明白了。{pause}{clear}人类, {sleep 15}&你需要被上一课。{pause}{clear}但, 不是现在。{pause}{alarm `battle_snowsans_p2_turn12` 10 1}{end}"
}