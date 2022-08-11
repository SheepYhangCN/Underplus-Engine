x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,2);
Battle_SetEnemyName(_enemy_slot,"Anya")
if(global.language=0){
Battle_SetEnemyActionName(_enemy_slot,0,"Check")
Battle_SetEnemyActionInfo(_enemy_slot,0,"Check Enemy Data")
Battle_SetEnemyActionName(_enemy_slot,1,"Insult")
Battle_SetEnemyActionInfo(_enemy_slot,1,"Insult enemy")
}

if(global.language=1){
Battle_SetEnemyActionName(_enemy_slot,0,"检查")
Battle_SetEnemyActionInfo(_enemy_slot,0,"查看敌人数据")
Battle_SetEnemyActionName(_enemy_slot,1,"辱骂")
Battle_SetEnemyActionInfo(_enemy_slot,1,"辱骂敌人")
}

Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
Player_SetLv(1)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
if(global.mode=2){
Battle_SetPlayerTempInv(45)
Battle_SetEnemyAtk(6)
}else if(global.mode=1){
Battle_SetPlayerTempInv(75)
Battle_SetEnemyAtk(2)
}else{
Battle_SetPlayerTempInv(60)
Battle_SetEnemyAtk(4)}
Battle_SetMenuMercyFleeEnabled(false)
var a=0
repeat(8){
Item_Set(a,item_peanut)
a+=1
}
global.shield=false
global.shield_useable=false
global.kr=false
Player_SetKR(0)

head = instance_create_depth(x+2, y-30, 0, anya_head)
body = instance_create_depth(x+2, y+15, 0, anya_body)
legs = instance_create_depth(x, y+65, 0, anya_legs)
animsin = 0
sinn = 2
alarm[2]=1