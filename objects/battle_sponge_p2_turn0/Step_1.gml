audio = timer/60//*0.016666666666666666
if audio_is_playing(battle_enemy_sponge_p2.bgm)
{
    if (abs((audio_sound_get_track_position(battle_enemy_sponge_p2.bgm) - audio)) >= 0.01)
        audio_sound_set_track_position(battle_enemy_sponge_p2.bgm, audio)
}
