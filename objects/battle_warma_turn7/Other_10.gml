Battle_SetTurnInfo(BATTLE_TURN.TIME,700)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,192)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,192)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y
temp=false
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I started to trace this{pause}{clear}Follow all the dust&and the traces of fighting{sleep 15}{warma_face 0}&I found one human being."}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我开始追查这件事{pause}{clear}顺着所有的尘埃&和战斗的痕迹{sleep 15}{warma_face 0}&我找到了一个人"}