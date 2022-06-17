var temp1=choose(0,1)
if(temp1=0){
Battle_MakeBoneBottom(battle_board.x+100,120,-3,1,0,0,1)}
if(temp1=1){
Battle_MakeBoneBottom(battle_board.x-100,120,3,1,0,0,1)}
audio_play_sound(snd_cut,0,0)
alarm[2]=90