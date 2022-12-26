Battle_SetTurnInfo(BATTLE_TURN.TIME,60)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}Umm...still continue..{pause}{clear}{warma_face 5}*Yawn*{pause}{clear}{warma_face 4}Sorry, &I have a little tired, &heheh{pause}{clear}{warma_face 1}Anyways, I want to say{sleep 15}&if you still willing&to be my friend{sleep 15}&then stop, and brought&everyone back!{pause}{clear}I trust you!"}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}唔...还不停下吗{pause}{clear}{warma_face 5}*哈欠*{pause}{clear}{warma_face 4}抱歉, &我都有点累了, &嘿嘿嘿{pause}{clear}{warma_face 1}所以呢, 我想说的是{sleep 15}&如果你还愿意&做我的好朋友{sleep 15}&那就停下, &然后把大家带回来吧!{pause}{clear}我相信你!"}