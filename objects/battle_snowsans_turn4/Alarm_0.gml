/*for(var i=battle_board.x-70+10;i<battle_board.x+70;i+=10){
/*var obj=Battle_MakeBoneBottom(i,0,0,0,0,0,1)
Anim_Create(obj,"length",0,0,1,39,10)
audio_play_sound(snd_bone_out,0,0)
Anim_Create(obj,"length",0,0,40,-35,5)}*/
if(lastet_dir=0){
var temp=choose(0,2,3)}
if(lastet_dir=1){
var temp=choose(1,2,3)}
if(lastet_dir=2){
var temp=choose(0,1,2)}
if(lastet_dir=3){
var temp=choose(0,1,3)}

audio_play_sound(snd_cut,0,0)

switch temp{
case 0:

var fuck=choose(0,1)
switch fuck{
case 0:
Battle_MakeBoneBottom(battle_board.x-64,120,3,1,0,0,1)
break
case 1:
Battle_MakeBoneTop(battle_board.x+64,120,-3,1,0,0,1)
break
}

var a=battle_soul.x-(battle_board.x-64)
var length=random_range(a-28,a+28)
if(length<=0){
length=a+32}
if(128-length-35<=0){
length=a-32}
battle_soul_blue.dir=270
battle_soul_blue.impact=true
Battle_MakeBoneWallBottom(50,35,15)
Battle_MakeBoneLeft(battle_board.y-64,length,2,0,0,0,1)
Battle_MakeBoneRight(battle_board.y-64,128-length-35,2,0,0,0,1)
break
case 1:

var fuck=choose(0,1)
switch fuck{
case 0:
Battle_MakeBoneBottom(battle_board.x-64,120,3,1,0,0,1)
break
case 1:
Battle_MakeBoneTop(battle_board.x+64,120,-3,1,0,0,1)
break
}

var a=battle_soul.x-(battle_board.x-64)
var length=random_range(a-28,a+28)
if(length<=0){
length=a+32}
if(128-length-35<=0){
length=a-32}
battle_soul_blue.dir=90
battle_soul_blue.impact=true
Battle_MakeBoneWallTop(50,35,15)
Battle_MakeBoneLeft(battle_board.y+64,length,-2,0,0,0,1)
Battle_MakeBoneRight(battle_board.y+64,128-length-35,-2,0,0,0,1)
break
case 2:

var fuck=choose(0,1)
switch fuck{
case 0:
Battle_MakeBoneLeft(battle_board.y-64,120,3,1,0,0,1)
break
case 1:
Battle_MakeBoneRight(battle_board.y+64,120,-3,1,0,0,1)
break
}

var a=battle_soul.y-(battle_board.y-64)
var length=random_range(a-28,a+28)
if(length<=0){
length=a+32}
if(128-length-35<=0){
length=a-32}
battle_soul_blue.dir=180
battle_soul_blue.impact=true
Battle_MakeBoneWallLeft(50,35,15)
Battle_MakeBoneTop(battle_board.x+64,length,-2,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x+64,128-length-35,-2,0,0,0,1)
break
case 3:

var fuck=choose(0,1)
switch fuck{
case 0:
Battle_MakeBoneLeft(battle_board.y-64,120,3,1,0,0,1)
break
case 1:
Battle_MakeBoneRight(battle_board.y+64,120,-3,1,0,0,1)
break
}

var a=battle_soul.y-(battle_board.y-64)
var length=random_range(a-28,a+28)
if(length<=0){
length=a+32}
if(128-length-35<=0){
length=a-32}
battle_soul_blue.dir=0
battle_soul_blue.impact=true
Battle_MakeBoneWallRight(50,35,15)
Battle_MakeBoneTop(battle_board.x-64,length,2,0,0,0,1)
Battle_MakeBoneBottom(battle_board.x-64,128-length-35,2,0,0,0,1)
break
}
lastet_dir=temp
if(global.mode=2){
alarm[0]=70
}else{
alarm[0]=80}