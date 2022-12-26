Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I used to thought&we can be good friends,{sleep 15}&live together happily"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我原以为我们&可以做好朋友{sleep 15}&开开心心的生活在一起"}