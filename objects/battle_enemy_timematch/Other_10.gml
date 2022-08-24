x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,0);
global.shield=false
global.shield_useable=false

Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
Player_SetLv(1)
Player_SetHpMax(1)
Player_SetHp(Player_GetHpMax())
temp=false