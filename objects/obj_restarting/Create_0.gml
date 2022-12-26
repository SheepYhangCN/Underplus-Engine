alarm[0]=90
depth=DEPTH_UI.GAME
Camera_Reset()
audio_stop_all()
fader.alpha=0
Anim_Destroy(all)
instance_destroy(obj_console)
global.debug=false
instance_destroy(obj_debug)
show_debug_overlay(false);
global.undead = 0
instance_destroy(closed_captions)
Border_SetEnabled(false)
with(obj_left_analog){instance_destroy()}
with(obj_touch_buttons){instance_destroy()}
with(mobile_control){instance_destroy()}
if(global.language=LANGUAGE.ENGLISH){subtitle="[font_menu]"+choose("Hold on","Please sit and relax","although here have no meaning","maybe reboot is faster","relax is most important","remember to look faraway","you need to wait for 90/60 second","wait the shop still not finished?","honestly i dont know why here is this","UTE public code lib: OneZhazha","___: Remove __'s code, let him eat shit.","TML: dont fucking make game if\nyou dont want to learn coding","Tips: Hold \"T\" \"A\" \"S\" can enable tas mode","Tips: This idea from Underxxxx by Walar","game_restart();","open-source is good","why dont you try OMORITALE?","/ban @a","Current world enabled experimental gameplay","GameFucker Stupid 2","Have you GameMaker today?")}
if(global.language=LANGUAGE.SCHINESE){subtitle=choose("请稍后","我知道你很急[font_dialog], [font_chs]但是急也没用","我知道你很急[font_dialog], [font_chs]但是你先别急","请坐和放宽","虽然这个界面毫无意义","不知道重开游戏会不会比这快","或许你该做做提肛运动","休息最重要","玩久了记得多多眺望远处","根据代码所写[font_dialog], [font_chs]此处一共需要等待整整[font_dialog]90/60[font_chs]秒","我去[font_dialog], [font_chs]商店还没做完吗[font_dialog], [font_chs]急急急","出道即巅峰[font_dialog], [font_chs]雪镇杉成为宇航最优质的战斗","说实话我也不知道为什么有这个界面存在","[font_dialog]UTE[font_chs]公用素材库[font_dialog]: [font_chs]渣渣","___[font_dialog]: [font_chs]删掉 __的代码 让他去吃屎","[font_dialog]Ctrl+C[font_chs]是第一生产力","抄自己的代码那能叫抄吗[font_dialog], [font_chs]那叫循环利用[font_dialog], [font_chs]环↑保↓","糖萌芦[font_dialog]: [font_chs]不学代码你做你[c_white][spr_horse][c_gray]的游戏[font_dialog]?","↓↑","你知道吗[font_dialog]: [font_chs]按下键盘[font_menu]\"T\" \"A\" \"S\"[font_chs]三个键可以开启变速","独有名词翻译非常麻烦[font_dialog], [font_chs]我的评价是保留原文","杉斯[font_dialog]or[font_chs]衫斯[font_dialog]or[font_chs]鳝丝","你知道吗[font_dialog]: [font_chs]这个界面灵感来源于[font_dialog]Walar[font_chs]的[font_dialog]Underxxxx","好的随机文本[font_dialog], [font_chs]爱来自没有人","[font_dialog]game_restart();","盲猜会有人在这刷随机文本","开源是好文明","为什么不了解了解[font_dialog]OMORITALE[font_chs]呢[font_dialog]?","何乐而不为","[font_dialog]1145141919810","[font_dialog]/ban @a","当前世界启用了实验性玩法","[font_dialog]GameFucker Stupid 2","今天你[font_dialog]GameMaker[font_chs]了吗[font_dialog]?","抵制不良游戏, 拒绝盗版游戏。注意自我保护, 谨防受骗上当。\n适度游戏益脑, 沉迷游戏伤身。合理安排时间, 享受健康生活。")}