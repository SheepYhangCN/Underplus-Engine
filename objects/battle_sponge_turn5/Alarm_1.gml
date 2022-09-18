audio_play_sound(snd_cut,0,0)

//BlueSoulControl(DIR.DOWN)
var a=Battle_MakeBoneRight(battle_board.y-96,0,2,0,0,0,1,-1,battle_bullet_bubble)
a.depth-=1
a.x-=32
if(global.mode=GAME_MODE.HARD){
alarm[0]=40
}else{
alarm[0]=50}