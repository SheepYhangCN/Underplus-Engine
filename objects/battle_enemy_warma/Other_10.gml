x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,2);
global.shield=false
global.shield_useable=false
if(global.mode=GAME_MODE.HARD){global.kr=true}else{global.kr=false}
if(global.language=LANGUAGE.ENGLISH){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"Heal")
Battle_SetEnemyActionInfo(_enemy_slot,2,"{color `lime`}+Full HP")
}
Battle_SetEnemyName(_enemy_slot,"Warma")
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check enemy data")
Battle_SetEnemyActionName(_enemy_slot,1,"Ridicule")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Laugh at enemy")
}else if(global.language=LANGUAGE.SCHINESE){
if(global.mode=GAME_MODE.EASY){
Battle_SetEnemyActionNumber(_enemy_slot,3);
Battle_SetEnemyActionName(_enemy_slot,2,"治疗")
Battle_SetEnemyActionInfo(_enemy_slot,2,"{color `lime`}+满HP")
}
Battle_SetEnemyName(_enemy_slot,"沃玛")
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
Battle_SetEnemyActionName(_enemy_slot,1,"嘲笑")
Battle_SetEnemyActionInfo(_enemy_slot,1,"嘲笑敌人")
}
animsin = 0
sinn = 2
_face = 0
_body = 0
_legs= 0
headx = x+5
heady = y-102
bodyx = x-2
bodyy = y-30
legx = x
legy = y+50
alarm[1]=1
//alarm[2]=1
_hp=1
_hpmax=1
Battle_SetEnemyDEF(_enemy_slot,1);
Player_SetLv(19)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetFleeable(false)
Battle_SetMenuMercyFleeEnabled(false)
Item_Set(0,item_warma_hotland_fruit)
Item_Set(1,item_warma_corn)
Item_Set(2,item_warma_pepper)
Item_Set(3,item_warma_cyber_milktea)
Item_Set(4,item_warma_th)
Item_Set(5,item_warma_hell_tractor)
Item_Set(6,item_warma_xny)
Item_Set(7,item_yuhang)