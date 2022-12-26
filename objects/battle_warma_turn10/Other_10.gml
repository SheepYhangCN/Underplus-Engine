Battle_SetTurnInfo(BATTLE_TURN.TIME,1200)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,192)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,192)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}...{pause}{warma_face 0}{end}"