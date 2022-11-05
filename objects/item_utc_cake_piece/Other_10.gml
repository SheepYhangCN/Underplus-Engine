///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	Dialog_Add("* You ate the Cake Piece.{sleep 15}&* Extremely delicious.{pause}{clear}* ...{sleep 15}But you still don't want&  to eat that pile of cream.{sleep 15}&* You lost 10 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	Dialog_Add("* 你吃下了蛋糕碎片。{sleep 15}&* 味道绝顶。{pause}{clear}* ...{sleep 15}&  但你还是不想去吃那堆奶油。&* 你失去了10 HP。")
}
Dialog_Start();
Player_Hurt(10);
Item_Remove(_item_slot);

audio_play_sound(snd_hurt,0,false);

event_inherited();