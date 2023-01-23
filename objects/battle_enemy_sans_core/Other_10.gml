x = Battle_GetEnemyCenterPosX(_enemy_slot)
y = Battle_GetEnemyCenterPosY(_enemy_slot)
Battle_SetEnemySpareable(_enemy_slot,0);
Battle_SetMenuMercyFleeEnabled(0);
global.kr=1
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
Battle_SetPlayerTempAtk(9999999999);
Battle_SetEnemyDEF(_enemy_slot,1);
_hp = 1
_hpmax = 1
audio_stop_all()
Player_SetLv(13)
Player_SetHpMax(Player_GetLvHpMax(Player_GetLv()))
Player_SetHp(Player_GetHpMax())
Battle_SetEnemyAtk(2)
global.shield=false
global.shield_useable=false
var a=instance_create_depth(0,10,0,battle_bg)
a.sprite_index=spr_battle_bg_core
a.image_xscale=1
a.image_yscale=1

animsin = 0
sinn = 2
headx = x-1
heady = y-30
bodyx = x-1
bodyy = y+13
legx = x
legy = y+60
_face_spr=spr_sans_face
legspr=spr_sans_leg
_face = 3
_body = 0
_legs= 0
sweat=0
alarm[2]=1
audio=0
bgm=audio_play_sound(bgm_sans_core,0,0)
item_used=0
item_used_hint=0