/// @description English

//date
//new year
if(current_month=1&&current_day=1){
Dialog_Add("{font 0}* "+string(current_year)+" Happy New Year!&{sleep 20}{font 1}* Hope you can achieve your dream in a new year!")}
//feb,29th
if(current_month=2&&current_day=29){
Dialog_Add("{font 0}* OMG&{sleep 20}* Is Leap Year!")}
//april fool day
if(current_month=4&&current_day=1){
Dialog_Add("* Never Gonna Give You Up~{sleep 20}{clear}* Never Gonna Let You Down~{sleep 20}{clear}* Never Gonna Run Around And&  Desert You~{sleep 20}{clear}* Never Gonna Make You Cry~{sleep 20}{clear}* Never Gonna Say Good Bye~{sleep 20}{clear}* Never Gonna Tell A Lie And&  Hurt You~{sleep 20}{clear}* 愚人节快乐Happy April Day:D")}
//school open
if(current_month=9&&current_day=1){
Dialog_Add("{font 0}* School is opened(sad){sleep 20}* ?why are you still here")}
//christmas eve
if(current_month=12&&current_day=24){
Dialog_Add("{font 0}* Merry Christmas Eve!")}
//christmas
if(current_month=12&&current_day=25){
Dialog_Add("{font 0}* Merry Christmas!")}

//season
if(current_month>=3&&current_month<=5){
Dialog_Add("{font 0}* It's Spring now{sleep 15}&* Everything is growing")}
if(current_month>=6&&current_month<=8){
Dialog_Add("{font 0}* WTF It's Summer now{sleep 15}&* It's so hot that i'm gonna&  eat millions of ice cream")}
if(current_month>=9&&current_month<=11){
Dialog_Add("{font 0}* It's Autumn now...{sleep 15}&* Remember to keep warm")}
if(current_month=12||current_month<=2){
Dialog_Add("{font 0}* It's Winter now{sleep 15}&* ice cream is so delicious")}

//time
if(current_hour=0){
Dialog_Add("{font 0}* Dude, it's 00:00 now{sleep 15}&  why are you haven't sleep{sleep 20}&* (i am sleep at midnight too XD)")}
if(current_hour>0&&current_hour<4){
Dialog_Add("{font 0}* play games at night{sleep 20}&* I wish you a sudden death soon/j")}
if(current_hour=4||current_hour=5){
Dialog_Add("{font 0}* you get up so early (yawn){sleep 20}&* or you haven't sleep")}
if(current_hour=6){
Dialog_Add("{font 0}* you get up so early (yawn)")}
if(current_hour=7||current_hour=8){
Dialog_Add("{font 0}* Good morning~{sleep 20}&* Have a Nice day!")}
if(current_hour<12&&current_hour>8&&!(current_hour=11&&current_minute=45)){
Dialog_Add("{font 0}* Good morning~{sleep 20}&* How are you today{sleep 20}&* I'm bad now XD")}
if(current_hour=12){
Dialog_Add("{font 0}* why are you play games at noon")}
if(current_hour>12&&current_hour<18){
Dialog_Add("{font 0}* Good afternoon~{sleep 20}&* Did you take a nap{sleep 20}&* i haven't XD")}
if(current_hour>=18&&current_hour<=21){
Dialog_Add("{font 0}* Good evening~{sleep 20}&* How was your day")}
if(current_hour=22||current_hour=23){
Dialog_Add("{font 0}* It's late now{sleep 20}&* You should go to sleep")}