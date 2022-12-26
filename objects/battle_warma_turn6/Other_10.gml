Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Yiyu told me not to care&these{pause}{clear}But......{sleep 15}{warma_face 0}&I can't just await&everyone's doom"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}忆雨老师曾经告诉我&不要管这些{pause}{clear}可是......{sleep 15}{warma_face 0}&我不能坐以待毙"}