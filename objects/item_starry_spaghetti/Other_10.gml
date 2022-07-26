///@desc Use
if(global.language=0){
	Dialog_Add("* You ate spaghetti.{sleep 15}&* It tastes ok...?")
}else if(global.language=1){
	Dialog_Add("* 你吃了意大利面。{sleep 15}&* 感觉味道还行...?")
}
Dialog_Start();
Item_Remove(_item_slot);
Battle_SetPlayerTempSpd(battle_enemy_starry_sans.item_temp)
battle_enemy_starry_sans.item_temp=Battle_GetPlayerTempSpd()
Battle_SetPlayerTempSpd(Battle_GetPlayerTempSpd()+Player_GetSpdTotal()*0.2)
battle_enemy_starry_sans.alarm[4]=-1
battle_enemy_starry_sans.alarm[5]=-1
battle_enemy_starry_sans.alarm[4]=30
battle_enemy_starry_sans.alarm[5]=60*10

audio_play_sound(snd_item_heal,0,false);

event_inherited();