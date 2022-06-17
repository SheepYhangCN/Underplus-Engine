battle_soul_blue.dir=DIR.RIGHT
battle_soul_blue.impact=true
Battle_MakeBoneWallTop(40,35,15)
Battle_MakeBoneWallBottom(40,35,15)
Battle_MakeBoneWallRight(40,35,15)
var temp=choose(0,1)
if(temp=0){
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x-100,battle_board.y-20,90,5,2,2,15)}
if(temp=1){
Blaster_Create_New(battle_bullet_gb_new,0,0,0,battle_board.x-100,battle_board.y+20,90,5,2,2,15)}
alarm[choose(0,1,2,3)]=100