x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,2);
global.shield=false
global.shield_useable=false
Battle_SetEnemyName(_enemy_slot,"Sans")
if(global.language=LANGUAGE.ENGLISH){
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check Enemy Data")
Battle_SetEnemyActionName(_enemy_slot,1,"Talk")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Talk To Enemy")
}

if(global.language=LANGUAGE.SCHINESE){
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
Battle_SetEnemyActionName(_enemy_slot,1,"谈话")
Battle_SetEnemyActionInfo(_enemy_slot,1,"和敌人谈话")
}

Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
Player_SetLv(1)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetMenuMercyFleeEnabled(false)
audio_stop_all()