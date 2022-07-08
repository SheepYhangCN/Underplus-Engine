///@desc Use
//Dialog_Add("* You ate TML.&{sleep 20}* Undertale Engine Forever!&{sleep 20}* Your HP is maxed out.");
var a=false
var _random=irandom_range(1,100)
if(_random<=5&&global.kr=true&&Player_GetHp()>10){a=true}

if(a){
if(global.language=0){
	Dialog_Add("* You ate Cxx.{sleep 20}&* You lost 1 HP.{pause}{clear}&* He is believe in you,&  your KR disappeared!")
}else if(global.language=1){
	Dialog_Add("* 你吃了Cxx。{sleep 20}&* 你失去了1点HP。{pause}{clear}&* 他相信着你，你的KR消失了！")
}
}else if(Player_GetHp<=10){
if(global.language=0){
	Dialog_Add("* You ate Cxx.{sleep 20}&* Your HP was maxed out.")
}else if(global.language=1){
	Dialog_Add("* 你吃了Cxx。{sleep 20}&* 你的HP已满。")
}
}else{
if(global.language=0){
	Dialog_Add("* You ate Cxx.{sleep 20}&* You lost 1 HP.{sleep 20}&* Your KR was cleared.")
}else if(global.language=1){
	Dialog_Add("* 你吃了Cxx。{sleep 20}&* 你失去了1点HP。{sleep 20}&* 你的KR清空了。")
}
}

Dialog_Start();

if(Player_GetHp()>10){
Player_Hurt(1);}

Player_SetHp(Player_GetHp()+Player_GetKR())

Player_SetKR(0)

if(Player_GetHp()<=10){Player_Heal(9999999999);}

if(a){global.kr=false}

Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();