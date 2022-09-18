audio_play_sound(snd_cut,0,0)

//BlueSoulControl(DIR.DOWN)
var a=Battle_MakeBoneLeft(battle_board.y-96,0,2,0,0,0,1,-1,battle_bullet_bubble)
a.depth-=1
a.x+=32
if(global.mode=GAME_MODE.HARD){
alarm[1]=40
}else{
alarm[1]=50}