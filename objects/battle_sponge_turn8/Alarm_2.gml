Battle_MakeBoneBottom(battle_board.x+240,152,-6,1,0,0,1,-1,battle_bullet_bone,bone_body,spatula_end)
audio_play_sound(snd_cut,0,0)
if(global.mode=GAME_MODE.HARD){
alarm[2]=60
}else{
alarm[2]=80}