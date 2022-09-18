Battle_MakeBoneTop(battle_board.x-battle_board.left,24,2,0,0,0,1)
Battle_MakeBoneTop(battle_board.x+battle_board.right,24,-2,0,0,0,1)
audio_play_sound(snd_cut,0,0)
if(global.mode=GAME_MODE.HARD){alarm[1]=54}else{alarm[1]=58}