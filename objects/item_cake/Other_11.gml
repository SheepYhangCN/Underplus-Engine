//Dialog_Add("* Heal Item&{sleep 20}* Can make your HP max out.&{sleep 20}* And it is infinite.");
if(global.language=0){
	Dialog_Add("{font 0}* Cake&{sleep 20}* A delicious Cake. &{sleep 20}* Can make your HP max out.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}蛋糕&{sleep 20}{font 0}* {font 3}一个美味的蛋糕。&{sleep 20}{font 0}* {font 3}可以让你的{font 0}HP{font 3}回满。")
}
Dialog_Start();
event_inherited();

