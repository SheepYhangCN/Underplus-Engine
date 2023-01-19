audio += 1/60//*0.016666666666666666
if audio_is_playing(bgm)
{
    if (abs((audio_sound_get_track_position(bgm) - audio)) >= 0.01)
        audio_sound_set_track_position(bgm, audio)
}
