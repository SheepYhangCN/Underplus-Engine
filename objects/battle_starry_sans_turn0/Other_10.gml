Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{scale 1}{voice 3}hey, &long time no see.{pause}{starry_face 3}&so human are&all like this...{pause}{clear}even we come to above&the starry sky,{sleep 15}{starry_face 0}&you will still come to&seek your inner \"desire\"，{sleep 15}{starry_face 1}&isn't it?{pause}{clear}{starry_face 3}that's right,{sleep 15}&it's murdering,{sleep 15}&you seem to enjoy it.{pause}{clear}but you will pay for it...&{sleep 15}{starry_face 4}right here...{pause}{clear}{starry_face 3}...{sleep 25}{starry_face 1}a familiar scene, right?{pause}{clear}{starry_face 0}it's the begin of your jour,{sleep 15}{starry_face 3}&and also will be the&end of your jour....{pause}{clear}{skippable false}{black_cut 20}{starry_face 4}{sleep 20}{skippable true}{font 2}{voice -1}{color `red`}YOU WILL BE SMASHED&BY STARS IN THE STARRY."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{scale 1}{voice 3}嘿，好久不见啊。{pause}{starry_face 3}&果然人类都是这样的...{pause}{clear}即便是我们来到了&星空之上，{sleep 15}{starry_face 0}&你们也依然会来寻求&你们内心的“渴望”，{sleep 15}{starry_face 1}&不是吗？{pause}{clear}{starry_face 3}没错，{sleep 15}就是杀人，{sleep 15}&你似乎很喜欢这样做。{pause}{clear}但你迟早会付出代价的...&{sleep 15}{starry_face 4}就在此地...{pause}{clear}{starry_face 3}...{sleep 25}{starry_face 1}很熟悉的场景，对吧？{pause}{clear}{starry_face 0}既是你旅途的开始，{sleep 15}{starry_face 3}&也会是你旅途的终结...{pause}{clear}{skippable false}{black_cut 20}{starry_face 4}{sleep 20}{skippable true}{font 2}{voice -1}{color `red`}你 会 在 星 空 之 中&被 繁 星 粉 碎 !"
}