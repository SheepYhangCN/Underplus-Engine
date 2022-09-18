var dir=choose(DIR.UP,DIR.DOWN,DIR.LEFT,DIR.RIGHT)
if(dir=DIR.UP){
Battle_MakeBoneWallTop(30,30,20)}
if(dir=DIR.DOWN){
Battle_MakeBoneWallBottom(30,30,20)}
if(dir=DIR.LEFT){
Battle_MakeBoneWallLeft(30,30,20)}
if(dir=DIR.RIGHT){
Battle_MakeBoneWallRight(30,30,20)}
BlueSoulControl_Titr(dir)
if(global.mode=GAME_MODE.NORMAL){
alarm[3]=60}
if(global.mode=GAME_MODE.EASY){
alarm[3]=70}
if(global.mode=GAME_MODE.HARD){
alarm[3]=50}
