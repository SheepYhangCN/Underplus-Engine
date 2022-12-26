Battle_SetTurnInfo(BATTLE_TURN.TIME,1000)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,120)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,120)
depth=battle_enemy_warma.depth+1
_x=320
_y=battle_enemy_warma.y
var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Everyone... Everyone likes&you so much{pause}{clear}{warma_face 0}Why can't we be good&friends{pause}{clear}{warma_face 3}Why can't we...&live together happily......"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}大家...大家都是那么喜欢你{pause}{clear}{warma_face 0}我们为什么不能&成为好朋友{pause}{clear}{warma_face 3}为什么不能...&快乐的生活在一起......"}