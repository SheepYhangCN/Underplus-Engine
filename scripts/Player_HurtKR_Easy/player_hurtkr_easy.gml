// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Player_HurtKR_Easy(){
	var _random=irandom_range(1,3)
	if(_random!=1){
	var time = 0
    time += 1
    if (time == 2)
        time = 0
    if (time == 1)
    {
        if (Player_GetHp() > 1)
        {
            Player_Hurt(1)
            Player_SetKR((Player_GetKR() + 1))
        }
        else
            Player_SetKR((Player_GetKR() - 1))
        audio_stop_sound(snd_hurt)
        audio_play_sound(snd_hurt, 0, false)
    }}
    return;
}