Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,283)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,283)
dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
dialog.text="{speed 3}{font 0}Dialog Test&{voice 1}Dialog Test&{font 4}{voice 3}Dialog Test&{font 5}对话测试{pause}{clear}{font 3}{voice 0}对话测试&{font 6}{voice 4}DIALOG TEST&{font 7}对话测试&{font 8}{voice 6}DIALOG TEST{pause}{clear}{font 9}{voice 0}对话测试&Dialog Test{font 10}&对话测试&Dialog Test"