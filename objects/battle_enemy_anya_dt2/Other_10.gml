x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetEnemyActionNumber(_enemy_slot,0);
Battle_SetEnemyName(_enemy_slot,"Anya")
audio_stop_all()
Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
Player_SetLv(1)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
if(global.mode=GAME_MODE.HARD){
Battle_SetPlayerTempInv(30)
Battle_SetEnemyAtk(8)
}else if(global.mode=GAME_MODE.EASY){
Battle_SetPlayerTempInv(60)
Battle_SetEnemyAtk(4)
}else{
Battle_SetPlayerTempInv(45)
Battle_SetEnemyAtk(6)}
Battle_SetMenuMercyFleeEnabled(false)
global.shield=false
global.shield_useable=false
global.kr=false
Player_SetKR(0)

head = instance_create_depth(x+2, y-30, 0, anya_head)
body = instance_create_depth(x+2, y+15, 0, anya_body)
legs = instance_create_depth(x, y+65, 0, anya_legs)
animsin = 0
sinn = 2
audio_main=audio_play_sound(bgm_dt_p2_main,0,1)
//Player_SetName("Damian")
alarm[2]=1
var ba=instance_create_depth(0,room_height,0,battle_bg)
ba.image_blend=c_purple
ba.image_yscale=-1.5