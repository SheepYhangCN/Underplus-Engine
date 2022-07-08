x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyName(_enemy_slot,"Ink!Sans")
if(global.language=0){
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check Enemy Data")
Battle_SetEnemyActionName(_enemy_slot,1,"Flirt")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Flirt enemy")
}

if(global.language=1){
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
Battle_SetEnemyActionName(_enemy_slot,1,"调情")
Battle_SetEnemyActionInfo(_enemy_slot,1,"调情敌人")
}

Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
Player_SetLv(20)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetPlayerTempInv(60)
Battle_SetEnemyAtk(10)
Battle_SetMenuMercyFleeEnabled(false)