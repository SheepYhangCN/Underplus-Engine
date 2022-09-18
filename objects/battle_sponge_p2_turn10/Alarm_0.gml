_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 1}Yep, {sleep 15}&just nothing.{pause}{sponge_face 3}&You will only stay with&me until forever.{pause}{clear}{sponge_face 4}There won't be your&turn anymore.{pause}{sponge_face 0}{alarm `battle_sponge_p2_turn10` 6 180}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 1}没错，{sleep 15}&啥都没有。{pause}{sponge_face 3}&你只会和我在这里&待到永远。{pause}{clear}{sponge_face 4}你不会再有回合了。{pause}{sponge_face 0}{alarm `battle_sponge_p2_turn10` 6 180}{end}"
}