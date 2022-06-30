var _random=choose(0,1)
if(_random=0){
Battle_MakeBoneWallLeft(60,128,60)
Blaster_Create_Advanced(0,0,330,200,0,-90,1.5,2,0,20,spr_blaster,40,20)}
if(_random=1){
Battle_MakeBoneWallRight(60,128,60)
Blaster_Create_Advanced(0,0,310,200,0,-90,1.5,2,0,20,spr_blaster,40,20)}
alarm[0]=120