Blaster_Create_New(battle_bullet_gb_new,0,0,0,80,260,90,10,1.8,2,10)
battle_soul_blue.dir=DIR.UP
battle_soul_blue.impact=true
if(global.mode=GAME_MODE.NORMAL){
alarm[choose(1,3,4)]=50}
if(global.mode=GAME_MODE.EASY){
alarm[choose(1,3,4)]=60}
if(global.mode=GAME_MODE.HARD){
alarm[choose(1,3,4)]=40}
