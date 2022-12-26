Battle_SetTurnInfo(BATTLE_TURN.TIME,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{speed 3}Yiyu always said something&like \"I hate human\"{pause}{clear}{warma_face 3}But,{sleep 15}{warma_face 4}&human are friendly too{pause}{clear}{warma_face 3}Although...{pause}{clear}Although......"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{speed 5}忆雨老师天天和我说什么&“我恨人类”之类的话{pause}{clear}{warma_face 3}但是, {sleep 30}{warma_face 4}&明明人类也是很友善的啊{pause}{clear}{warma_face 3}哪怕...{pause}{clear}哪怕......"}