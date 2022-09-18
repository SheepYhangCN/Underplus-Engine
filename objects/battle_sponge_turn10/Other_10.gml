Battle_SetTurnInfo(BATTLE_TURN.TIME,1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)
audio_stop_sound(bgm_sponge_p1)
battle_enemy_sponge.alarm[2]=-1

_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 8}{sponge_face 4}Hey, listen{pause}{clear}I want to talk with you.{pause}{clear}{sponge_face 3}Look,{sleep 15} I always believe that&you are a good person&from the bottom of&your heart.{pause}{clear}{sponge_face 0}So, why don't we&sit down,{sleep 15} and talk, {sleep 15}&and become good friend?{pause}{clear}{sponge_face 1}Come on Plankton, {sleep 15}&I'm trust you."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 8}{sponge_face 4}嘿，听着{pause}{clear}我想和你谈谈。{pause}{clear}{sponge_face 3}你看，{sleep 15}&我始终相信你打心底&还是个好人。{pause}{clear}{sponge_face 0}所以，为何我们不坐下来，{sleep 15}&好好的谈谈，{sleep 15}&并且成为好朋友呢？{pause}{clear}{sponge_face 1}来吧Plankton，{sleep 15}&我相信你。"
}