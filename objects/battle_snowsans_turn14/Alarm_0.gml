var _dir=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
if(global.mode=2){
var length=40}else{var length=30}
switch _dir{
case DIR.UP:
Battle_MakeBoneWallBottom(30,length,10)
Battle_MakeBoneWallTop(30,30,10)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(30,30,10)
Battle_MakeBoneWallTop(30,length,10)
break
case DIR.LEFT:
Battle_MakeBoneWallLeft(30,30,10)
Battle_MakeBoneWallRight(30,length,10)
break
case DIR.RIGHT:
Battle_MakeBoneWallLeft(30,length,10)
Battle_MakeBoneWallRight(30,30,10)
break
}
Titr_BlueSoulControl(_dir)
//alarm[3]=10
alarm[0]=length+30