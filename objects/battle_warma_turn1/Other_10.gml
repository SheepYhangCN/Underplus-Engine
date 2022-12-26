Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)
depth=battle_enemy_warma.depth+1
_x=320//battle_enemy_warma.x//640+64
_y=battle_enemy_warma.y
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I don't know why&would you did these{pause}{clear}{warma_face 0}But that must be&not your true heart!{pause}{clear}Let me bring you back"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我不知道你为什么&会这么做{pause}{clear}{warma_face 0}但那一定不是你的真心!{pause}{clear}让我把你带回来吧"}