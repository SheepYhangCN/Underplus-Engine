Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

dialog=instance_create_depth(420,110,0,battle_dialog_enemy)
if(global.language=LANGUAGE.SCHINESE){
dialog.text="{font 3}{voice 3}...&{titr_face 1}哇哦 那可真是意外。{pause}{clear}{titr_face 3}...&事实上, &{sleep 15}如果我们还是朋友...{pause}{clear}{titr_face 4}{speed 10}{color `red`}那 就 再 也 别 回 来 了 。"}
if(global.language=LANGUAGE.ENGLISH){
dialog.text="{font 3}{voice 3}...&{titr_face 1}wow that's my unexpected.{pause}{clear}{titr_face 3}...&actually,&{sleep 15}if we are still friends...{pause}{clear}{titr_face 4}{speed 8}{color `red`}YOU'LL NEVER COME BACK."}