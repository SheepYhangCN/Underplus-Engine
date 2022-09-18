x=Battle_GetEnemyCenterPosX(_enemy_slot)
y=Battle_GetEnemyCenterPosY(_enemy_slot)
animsin = 0
sinn = 2
_face_spr=spr_utcsans_face
_face = 3
_body = 0
_legs= 0
_hp=1
_hpmax=1
headx = x-1.6
heady = y-55
bodyx = x-1.6
bodyy = y+3
legx = x
legy = y+60
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
global.kr=false
Player_SetKR(0)
alarm[1]=1
Battle_SetEnemyName(_enemy_slot,"Sans");
Battle_SetEnemyActionNumber(_enemy_slot,1);
if(global.language=LANGUAGE.ENGLISH){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"Heal")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+Full HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
}else if(global.language=LANGUAGE.SCHINESE){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyActionName(_enemy_slot,1,"治疗")
Battle_SetEnemyActionInfo(_enemy_slot,1,"{color `lime`}+满HP")
}
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")

}
audio_stop_all()
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(1)
Player_SetHpMax(25)
Player_SetHp(Player_GetHpMax())
Battle_SetEnemyAtk(4)

if(global.mode=GAME_MODE.NORMAL){Battle_SetPlayerTempInv(75)}
if(global.mode=GAME_MODE.EASY){Battle_SetPlayerTempInv(90)}
if(global.mode=GAME_MODE.HARD){Battle_SetPlayerTempInv(60)}
global.shield=false
global.shield_useable=false
alarm[3]=1

Item_Set(0,item_utc_nothing)
Item_Set(1,item_utc_spaghetti)
Item_Set(2,item_utc_pain_killer)
Item_Set(3,item_utc_cake_piece)
Item_Set(4,item_utc_last_dream)
Item_Set(5,item_utc_last_dream)
Item_Set(6,item_utc_golden_flower_tea)
Item_Set(7,item_utc_determination)