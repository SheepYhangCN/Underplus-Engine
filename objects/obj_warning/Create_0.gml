audio_play_sound(snd_ding,0,0)
temp=0
if(global.language=LANGUAGE.ENGLISH){
dialog=instance_create_depth(135,10,0,text_typer)
dialog.text="{scale 3}{instant true}{color `red`}Epilepsy Warning"
dialog1=instance_create_depth(40,60,0,text_typer)
dialog1.text="{font 1}{scale 2}{instant true}This game contains flickering screens and&other screen effects that may cause epilepsy.&For patients with epilepsy, please turn off&the game or be fully prepared. For players&with unidentified epilepsy who experience&dizziness, blurred vision, eye or face&twitching, limb twitching, disorientation,&confusion or brief loss of consciousness,&please close the game immediately and&ask for help from a family member or&a doctor."
dialog2=instance_create_depth(180,440,0,text_typer)
dialog2.text="{scale 2}{instant true}{color `gray`}[Press Z or Enter]"
}else if(global.language=LANGUAGE.SCHINESE){
dialog=instance_create_depth(170,10,0,text_typer)
dialog.text="{font 0}{scale 3}{instant true}{color `red`}光敏性癫痫警告"
dialog1=instance_create_depth(75,60,0,text_typer)
dialog1.text="{font 0}{scale 2}{instant true}本游戏含有闪烁的画面等&会引起光敏性癫痫的画面效果。&对于有光敏性癫痫的患者, &请关闭游戏或做好充足准备。&对于未查明有光敏性癫痫的玩家, &如果出现头晕目眩、视力模糊、&眼睛或面部抽搐、四肢抽搐、迷失方向感、&精神错乱或短暂的意识丧失等症状, &请立即关闭游戏并求助家属或医生。"
dialog2=instance_create_depth(200,440,0,text_typer)
dialog2.text="{font 0}{scale 2}{instant true}{color `gray`}[按下 Z 或 Enter]"}