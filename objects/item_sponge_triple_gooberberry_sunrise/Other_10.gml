///@desc Use
if(global.language=LANGUAGE.ENGLISH){
	var a=choose("Oh I'm a Goofy Goober, yeah.","You're a Goofy Goober, yeah.","We're all Goofy Goobers, yeah.","Goofy Goofy Goober Goober yeah!")
	Dialog_Add("{font 0}* You ate {font 1}Triple Gooberberry Sunrise{font 0}.{sleep 15}&* "+a+"{sleep 15}&* You recovered 30x3 HP.")
}else if(global.language=LANGUAGE.SCHINESE){
	var a=choose("噢我是Goofy Goober，耶。","你是Goofy Goober，耶。","我们都是Goofy Goobers，耶。","Goofy Goofy Goober Goober耶！")
	Dialog_Add("{font 0}* 你吃掉了三层Gooberberry日出。{sleep 15}&* "+a+"{sleep 15}&* 你恢复了30x3点HP。")
}
Dialog_Start();
Player_Heal(30*3);
Item_Remove(_item_slot);

audio_play_sound(snd_item_heal,0,false);

event_inherited();