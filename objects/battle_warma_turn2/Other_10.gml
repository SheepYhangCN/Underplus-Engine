Battle_SetTurnInfo(BATTLE_TURN.TIME,770)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
depth=battle_enemy_warma.depth+1
_x=320//battle_enemy_warma.x//640+64
_y=battle_enemy_warma.y
temp=false
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I used to don't believe&these{pause}{clear}But when the dust fell...{sleep 15}&I don't know is I am&dreaming, {sleep 15}{warma_face 2}or this is the&true face of this world......{pause}{warma_face 0}{end}"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我曾经不愿意相信这一切{pause}{clear}但当尘埃飘落...{sleep 15}&我也不知道那是我在做梦, {sleep 15}&{warma_face 2}还是这个世界真实的模样......{pause}{warma_face 0}{end}"}