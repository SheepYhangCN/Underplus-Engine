Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,room_height/3*2)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,room_height/3)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,room_width/2)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,room_width/2)
Battle_SetBoardSize(room_height/3*2,room_height/3,room_width/2,room_width/2,0)
fader.alpha=0
audio_stop_sound(snd_ding)
