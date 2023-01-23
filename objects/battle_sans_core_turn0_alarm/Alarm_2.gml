battle_enemy_sans_core._face=7
_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 3}{sans_core_face 9}ok,{sleep 15}&i was careless{pause}{clear}here has no place&for me to dodge{pause}{clear}heh...{pause}{alarm `battle_sans_core_turn0_alarm` 3 180}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 3}{sans_core_face 9}好吧,{sleep 15}&我大意了{pause}{clear}这里根本无地可躲{pause}{clear}呵...{pause}{alarm `battle_sans_core_turn0_alarm` 3 180}{end}"
}