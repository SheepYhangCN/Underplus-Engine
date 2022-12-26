Battle_SetTurnInfo(BATTLE_TURN.TIME,900)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,240)
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}I used to thought like this{pause}{clear}Until I saw Shian's scarf{sleep 15}&just dropped on the&ground,{sleep 15} with dust on it{pause}{clear}{warma_face 0}I suddenly feel at a loss, {sleep 15}&even don't know what to&do"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}我一直都是这么以为的{pause}{clear}直到我看见诗岸的围巾, {sleep 15}&就那样沾染些尘埃, {sleep 15}&孤零零的掉在地上{pause}{clear}{warma_face 0}我突然就感觉手足无措, {sleep 15}&甚至不知道怎么做才好"}