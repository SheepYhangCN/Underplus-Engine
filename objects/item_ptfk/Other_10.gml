///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
var a=irandom_range(1,3)
if(Player_IsInBattle()&&global.kr!=true){
if(global.language=0){
	Dialog_Add("* You ate Ptfk.{sleep 20}&* You lost 1 HP.{pause}{clear}* You have "+string(a)+" frame more&  invincible time now!")
}else if(global.language=1){
	Dialog_Add("* 你吃了拼图方块。{sleep 20}&* 你失去了1点HP。{pause}{clear}* 你现在多了"+string(a)+"帧的无敌时间！")
}
}else{
if(global.language=0){
	Dialog_Add("* You ate Ptfk.{sleep 20}&* You lost 1 HP.")
}else if(global.language=1){
	Dialog_Add("* 你吃了拼图方块。{sleep 20}&* 你失去了1点HP。")
}
}
Dialog_Start();

Player_Hurt(1);

if(Player_IsInBattle()&&global.kr!=true){Battle_SetPlayerTempInv(Battle_GetPlayerTempInv()+a)}

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();