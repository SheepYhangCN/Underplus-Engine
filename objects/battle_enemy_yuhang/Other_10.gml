x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,1);
global.shield=false
global.shield_useable=false
if(global.language=LANGUAGE.ENGLISH){
Battle_SetEnemyName(_enemy_slot,"Yuhang")
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check Enemy Data")
}

if(global.language=LANGUAGE.SCHINESE){
Battle_SetEnemyName(_enemy_slot,"宇航")
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
}
glass=true
animsin = 0
sinn = 2
_face = 0
_body = 0
_legs= 0
_hp=1
_hpmax=1
bodyx = x-7
bodyy = y-45
legx = x
legy = y+30
headx=bodyx
heady=bodyy-55
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(20)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
alarm[2]=1