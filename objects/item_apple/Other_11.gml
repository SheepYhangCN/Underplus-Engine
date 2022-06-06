//Dialog_Add("* Heal Item&{sleep 20}* Can make your HP max out.&{sleep 20}* And it is infinite.");
if(global.language=0){
	Dialog_Add("{font 1}* Apple&{sleep 20}* An apple a day, keeps the doctor away. &{sleep 20}* Can recover 40 HP.")
}else if(global.language=1){
	Dialog_Add("{font 0}* {font 3}苹果&{sleep 20}{font 0}* {font 3}一天一苹果，医生远离我。&{sleep 20}{font 0}* {font 3}可以恢复{font 0}40{font 3}点{font 0}HP{font 3}。")
}
Dialog_Start();
event_inherited();

