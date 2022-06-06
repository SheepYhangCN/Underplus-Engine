///@desc Use
Dialog_Clear()
Dialog_Add("* 你装备了盾。")
Dialog_Start()

Item_Remove(_item_slot)
Item_Add(Item_GetArmor())
Item_SetArmor(item_shield)

//Item_Remove(_item_slot);

audio_play_sound(snd_item_equip,0,false);

event_inherited();