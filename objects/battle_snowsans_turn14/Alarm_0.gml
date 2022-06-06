var _dir=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
if(global.mode=2){
var length=70}else{var length=60}
switch _dir{
case DIR.UP:
Battle_MakeBoneWallBottom(30,length,15)
Battle_MakeBoneWallTop(30,30,15)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(30,30,15)
Battle_MakeBoneWallTop(30,length,15)
break
case DIR.LEFT:
Battle_MakeBoneWallLeft(30,30,15)
Battle_MakeBoneWallRight(30,length,15)
break
case DIR.RIGHT:
Battle_MakeBoneWallLeft(30,length,15)
Battle_MakeBoneWallRight(30,30,15)
break
}
battle_soul_blue.dir=_dir
alarm[3]=10
alarm[0]=length