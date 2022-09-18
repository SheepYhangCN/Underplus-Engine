_dialog=instance_create_depth(320, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 3}Ha,{sleep 15}&You really think that&you can sneak attac{alarm `battle_sponge_p2_turn10` 3 1}{end}"
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 3}哈，{sleep 15}&你真的以为你偷袭就能{alarm `battle_sponge_p2_turn10` 3 1}{end}"
}