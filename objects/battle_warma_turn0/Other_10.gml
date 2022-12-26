Battle_SetTurnInfo(BATTLE_TURN.TIME,-1)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,64)

var inst=instance_create_depth(420,120,0,battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 3}......{pause}{clear}{warma_face 2}{speed 2}you still came{pause}{clear}{warma_face 3}Why......{pause}{clear}They...{sleep 15}&are so nice to you{pause}{clear}Nujiu, Shian, Tantan......{pause}{clear}It's...{sleep 15} no need&for doing these...{pause}{clear}We...{sleep 15} can just live here&together happily...{pause}{clear}Those happy smiles...{sleep 30}{warma_face 2}&are real...{pause}{clear}{warma_face 0}This must not be&your true heart{sleep 15}&I believe that I can&bring that \"you\" back{pause}{clear}{warma_face 3}Though, I will dead&where i stand...{sleep 15}&just like them...{pause}{clear}Let's begin."}
if(global.language=LANGUAGE.SCHINESE){inst.text="{voice VOICE.ASRIEL}{warma_face 3}{speed 5}......{pause}{clear}{warma_face 2}{speed 4}你还是来了{pause}{clear}{warma_face 3}为什么呢......{pause}{clear}明明......&{sleep 15}他们对你那么好{pause}{clear}怒九, 诗岸, 碳碳......{pause}{clear}明明...&{sleep 15}就不用这样子的...{pause}{clear}明明...{sleep 15}&就可以在一起&快乐生活下去的...{pause}{clear}那些快乐的笑容...{sleep 30}{warma_face 2}&是真的...{pause}{clear}{warma_face 0}这一定不是你的本心的{sleep 15}&我一定可以把&那个你带回来的{pause}{clear}{warma_face 3}即使, 我会像他们一样...{sleep 15}&死在这里...{pause}{clear}开始吧。"}
audio_stop_sound(bgm_warma)