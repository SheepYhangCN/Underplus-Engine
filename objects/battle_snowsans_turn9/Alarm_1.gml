var temp=choose(0,1)
switch temp{
case 0:
Battle_MakeBoneBottom(battle_board.x-160,120,3,1,0,0,1)
break
case 1:
Battle_MakeBoneBottom(battle_board.x+160,120,-3,1,0,0,1)
break
}
audio_play_sound(snd_cut,0,0)
alarm[1]=80