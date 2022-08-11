var temp=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
BlueSoulControl_Titr(temp)
switch temp{
case DIR.UP:
Battle_MakeBoneWallTop(40,60,15)
Battle_MakeBoneWallLeft(40,55,15)
Battle_MakeBoneWallRight(40,55,15)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(40,60,15)
Battle_MakeBoneWallLeft(40,55,15)
Battle_MakeBoneWallRight(40,55,15)
break
case DIR.LEFT:
Battle_MakeBoneWallBottom(40,55,15)
Battle_MakeBoneWallTop(40,55,15)
Battle_MakeBoneWallLeft(40,60,15)
break
case DIR.RIGHT:
Battle_MakeBoneWallBottom(40,55,15)
Battle_MakeBoneWallTop(40,55,15)
Battle_MakeBoneWallRight(40,60,15)
break
}

alarm[0]=70