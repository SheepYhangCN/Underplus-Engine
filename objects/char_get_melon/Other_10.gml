if(Item_Get(7)=-1){
if(global.language=LANGUAGE.SCHINESE){
Dialog_Add("* 你获得了西瓜。");}
if(global.language=LANGUAGE.ENGLISH){
Dialog_Add("* You got melon.");}

Dialog_Start();
Item_Add(item_melon);
audio_play_sound(snd_item_equip,0,false);
}