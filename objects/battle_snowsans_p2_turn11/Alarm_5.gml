if(global.mode=GAME_MODE.NORMAL){
var xscale=0.3}
if(global.mode=GAME_MODE.EASY){
var xscale=0.2}
if(global.mode=GAME_MODE.HARD){
var xscale=0.5}
Blaster_Create_Advanced(0,0,100,battle_soul.y,0,0,xscale,2,1,20,spr_blaster,10,5)
if(global.mode=GAME_MODE.NORMAL){
alarm[5]=90}
if(global.mode=GAME_MODE.EASY){
alarm[5]=120}
if(global.mode=GAME_MODE.HARD){
alarm[5]=60}