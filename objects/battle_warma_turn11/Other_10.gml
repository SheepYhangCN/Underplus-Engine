Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y

var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
inst.text="{voice VOICE.ASRIEL}{skippable false}{warma_face 3}...{sleep 15}3&{sleep 50}...{sleep 5}2&{sleep 50}...{sleep 5}{warma_face 0}1{sleep 50}...{end}"

soultemp=false
moving=false
temp=false
temp1=0
basey=battle_board.y
angle=45