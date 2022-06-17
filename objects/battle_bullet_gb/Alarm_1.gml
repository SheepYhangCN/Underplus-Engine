image_alpha = 1
Anim_Create(id, "image_angle", (3 << 0), (1 << 0), angle_start, (angle_target - angle_start), time_move)
Anim_Create(id, "x", (3 << 0), (1 << 0), x, (x_target - x), time_move)
Anim_Create(id, "y", (3 << 0), (1 << 0), y, (y_target - y), time_move)
audio_stop_sound(snd_gb_charge)
audio_play_sound(snd_gb_charge, 0, false)
alarm[2] = ((time_move + time_release_delay) + 1)
