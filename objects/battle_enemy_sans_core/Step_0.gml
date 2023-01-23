if(global.language=LANGUAGE.ENGLISH){
window_set_caption(GAME_NAME+" - Undertale: the Core Encounter Sans Fight")
if(_hp<=0){
//show_error("This is an Error message, If u see this message, please tell the author",true)
}
}else if(global.language=LANGUAGE.SCHINESE){
window_set_caption(GAME_NAME+" - Undertale: 核心之遇 Sans战")
if(_hp<=0){
//show_error("这是一条错误信息 如果你看到了此消息 请尽快告诉作者 并且尽量记录下此信息出现前的一切行为",true)
}}
global.battle=BATTLE.SANS_CORE

if(keyboard_check_pressed(ord("C"))&&Battle_GetTurnNumber()=0&&battle_sans_core_turn0.timer<1500){
hint=0
audio_sound_set_track_position(bgm,1519/60)
audio=1519/60
battle_sans_core_turn0.timer=1499
with(battle_dialog_enemy){instance_destroy()}
}

if(keyboard_check_pressed(ord("H"))&&global.mode!=GAME_MODE.HARD){
hint=0
item_used+=1
item_used_hint=60
Player_SetKR(0)
Player_Heal(114514)
audio_play_sound(snd_item_heal,0,0)
}