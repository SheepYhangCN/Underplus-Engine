//Dialog_Add("* Can't throw trash anywhere.");
Dialog_Add("{font 3}* 你TM扔我瓜是吧?");
Dialog_Start();

Item_Remove(_item_slot);
audio_play_sound(snd_item_swallow,0,false);

instance_destroy();