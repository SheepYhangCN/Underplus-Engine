Battle_SetSoul(battle_soul_blue)
audio_play_sound(snd_ding,0,0)
//Battle_MakeBoneWallLeft(0,28,1145141919810)
//Battle_MakeBoneWallRight(0,28,1145141919810)
if(global.mode=2){
Battle_MakeBoneWallTop(0,48,800)
}else{
Battle_MakeBoneWallTop(0,40,800)}
Battle_SetBoardSize(64,64,24,24,879)
alarm[0]=1