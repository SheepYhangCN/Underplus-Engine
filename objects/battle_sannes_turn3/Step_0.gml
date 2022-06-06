if(Battle_GetTurnTime()=0){
Battle_SetSoul(battle_soul_red)
camera.angle=0
audio_play_sound(snd_hurt,0,0)
}