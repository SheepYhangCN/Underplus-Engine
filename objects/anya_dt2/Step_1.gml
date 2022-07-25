audio += 0.016666666666666666
if audio_is_playing(main_audio)
{
    if (abs((audio_sound_get_track_position(main_audio) - audio)) >= 0.01)
        audio_sound_set_track_position(main_audio, audio)
}
