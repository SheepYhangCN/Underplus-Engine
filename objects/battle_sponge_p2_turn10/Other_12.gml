_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 3}Okay, {sleep 15}then, {sleep 15}&It's time to show&my special attack.{pause}{alarm `battle_sponge_p2_turn10` 0 180}{sponge_face 0}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 3}好吧，{sleep 15}那么，{sleep 15}&是时候放出我的&特殊攻击了。{pause}{alarm `battle_sponge_p2_turn10` 0 180}{sponge_face 0}{end}"
}