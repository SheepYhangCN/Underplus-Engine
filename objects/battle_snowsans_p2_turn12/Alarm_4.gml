titr_head.image_index=7
_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{speed 3}{scale 1}{voice 3}...{sleep 20}papyrus,{sleep 15}&{titr_face 9}don't trust the human&anymore...{pause}{alarm `battle_snowsans_p2_turn12` 5 60}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{speed 5}{scale 1}{voice 3}...{sleep 20}papyrus,{sleep 15}&{titr_face 9}不要再相信那个人类了...{pause}{alarm `battle_snowsans_p2_turn12` 5 60}{end}"
}