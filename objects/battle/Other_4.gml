//生成实例
instance_create_depth(0,0,0,battle_fader);
instance_create_depth(0,0,0,battle_board);
instance_create_depth(0,0,0,battle_ui);
instance_create_depth(32+53.5,432+20,0,battle_button_fight);
instance_create_depth(185+53.5,432+20,0,battle_button_act);
instance_create_depth(345+53.5,432+20,0,battle_button_item);
instance_create_depth(500+53.5,432+20,0,battle_button_mercy);
//Anim_Create(battle_button,"y",0,ANIM_EASE.OUT,452+70,-70,15)
Battle_SetSoul(battle_soul_red);
if(instance_exists(battle_soul)){
battle_soul.x=battle_button_fight.x-47
battle_soul.y=battle_button_fight.y}
Dialog_Clear()

var ENCOUNTER=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.ENCOUNTER);
var BGM=Encounter_GetBGM(ENCOUNTER);
if(audio_exists(BGM)){
	BGM_Play(5,BGM);
}

//初始化敌人
var proc=0;
repeat(3){
	Battle_SetEnemy(_enemy_object[proc],proc);
	proc+=1;
}

Battle_SetNextState(BATTLE_STATE.MENU);

//调用事件
Battle_CallEnemyEvent(BATTLE_ENEMY_EVENT.BATTLE_START);

Battle_GotoNextState();