var temp=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
var temp1=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
Titr_BlueSoulControl(temp)
switch temp{
case DIR.UP:
Battle_MakeBoneWallTop(40,30,15)
Blaster_Create_Advanced(0,0,battle_soul.x,150,0,-90,1,2,0,20,spr_blaster,20,10)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(40,30,15)
Blaster_Create_Advanced(0,0,battle_soul.x,150,0,-90,1,2,0,20,spr_blaster,20,10)
break
case DIR.LEFT:
Battle_MakeBoneWallLeft(40,30,15)
Blaster_Create_Advanced(0,0,100,battle_soul.y,0,0,1,2,0,20,spr_blaster,20,10)
break
case DIR.RIGHT:
Battle_MakeBoneWallRight(40,30,15)
Blaster_Create_Advanced(0,0,100,battle_soul.y,0,0,1,2,0,20,spr_blaster,20,10)
break
}
switch temp1{
case DIR.UP:
Battle_MakeBoneWallTop(40,30,15)
Blaster_Create_Advanced(0,0,battle_soul.x,150,0,-90,1,2,1,20,spr_blaster,20,10)
break
case DIR.DOWN:
Battle_MakeBoneWallBottom(40,30,15)
Blaster_Create_Advanced(0,0,battle_soul.x,150,0,-90,1,2,1,20,spr_blaster,20,10)
break
case DIR.LEFT:
Battle_MakeBoneWallLeft(40,30,15)
Blaster_Create_Advanced(0,0,100,battle_soul.y,0,0,1,2,1,20,spr_blaster,20,10)
break
case DIR.RIGHT:
Battle_MakeBoneWallRight(40,30,15)
Blaster_Create_Advanced(0,0,100,battle_soul.y,0,0,1,2,1,20,spr_blaster,20,10)
break
}

alarm[0]=80