audio_stop_all()
fader.alpha=0
var save_slot=Flag_GetSaveSlot()
Player_Load(10)
Flag_SetSaveSlot(save_slot)
room_goto(room_battle)