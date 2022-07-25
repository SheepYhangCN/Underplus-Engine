//---Audio_Play && Shake_Setting---
audio_stop_sound(snd_gb_release);
audio_play_sound(snd_gb_release,0,0);
audio_stop_sound(snd_science_gb_shoot);
audio_play_sound(snd_science_gb_shoot,0,0);
audio_stop_sound(snd_gb_release2);
var sid=audio_play_sound(snd_gb_release2,0,0);
audio_sound_pitch(sid,1.2);
if(fire_shake_type=-1){
}else if(fire_shake_type=0){
Camera_Shake(6,6,1,1,2,2);
}else if(fire_shake_type=1)
Camera_Shake(4,4,1,1,2,2);