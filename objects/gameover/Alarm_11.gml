audio_stop_all()
fader.alpha=0
Player_Load(0)
Flag_Load(FLAG_TYPE.SETTINGS)
room_goto(asset_get_index(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.ROOM)))