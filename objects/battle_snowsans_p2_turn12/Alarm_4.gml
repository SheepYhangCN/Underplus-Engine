titr_head.image_index=7
_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{speed 3}{scale 1}{voice 3}...{sleep 20}papyrus,{sleep 15}&{titr_face 9}don't trust the human&anymore...{pause}{alarm `battle_snowsans_p2_turn12` 5 60}{end}"
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}...{sleep 20}papyrus,{sleep 15}&{titr_face 9}不要再相信那个人类了...{pause}{alarm `battle_snowsans_p2_turn12` 5 60}{end}"
}