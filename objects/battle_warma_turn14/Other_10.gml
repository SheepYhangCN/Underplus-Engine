Battle_SetTurnInfo(BATTLE_TURN.TIME,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}With your power, {sleep 15}{warma_face 0}&it must be able to&bring everyone back{pause}{clear}{warma_face 3}After all, {sleep 15}{warma_face 4}&it's cool to travel&through timelines{pause}{clear}{warma_face 3}So, please......{pause}{warma_face 0}{end}"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}你的那个能力, {sleep 15}{warma_face 0}&一定可以把大家带回来的{pause}{clear}{warma_face 3}毕竟, {sleep 15}能在时间之间旅行, {sleep 15}{warma_face 4}&本来就是很酷的啊{pause}{clear}{warma_face 3}所以, 求你了......{pause}{warma_face 0}{end}"}