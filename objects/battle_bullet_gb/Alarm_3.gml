image_yscale = 1
Anim_Create(id, "image_index", 0, 0, 0, 3, 6)
Anim_Create(id, "_beam_scale", 0, 0, 0, _beam_scale_default, 8)
audio_stop_sound(snd_gb_release)
var sid = audio_play_sound(snd_gb_release, 0, false)
audio_sound_pitch(sid, 1.2)
//Camera_Shake(5, 5, 1, 1, 1, 1)
alarm[4] = 6
alarm[5] = 8
alarm[6] = (time_release_stay + 1)
