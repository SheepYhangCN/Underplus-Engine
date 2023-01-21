pressed_x = event_data[? "posX"]
pressed_y = event_data[? "posY"]

#region 标签页
if(pressed_y>=5&&pressed_y<=59){
if(phases){
if(pressed_x>=5&&pressed_x<=317&&image_index!=2){audio_play_sound(snd_menu_confirm,0,0);image_index=2}
if(pressed_x>=323&&pressed_x<=634&&image_index!=3){audio_play_sound(snd_menu_confirm,0,0);image_index=3}
}else{
if(pressed_x>=5&&pressed_x<=317&&image_index!=0){audio_play_sound(snd_menu_confirm,0,0);image_index=0}
if(pressed_x>=323&&pressed_x<=634&&image_index!=1){audio_play_sound(snd_menu_confirm,0,0);image_index=1}}
}
#endregion
#region 阶段选择(战斗)
if(image_index mod 2 = 0){
switch choice{
default:
	phases=false
	enabled=true
	break
case 0://雪镇杉
	phases=true
	enabled=true
	break
case 1://阿尼亚
	phases=true
	enabled=true
	break
case 2://原杉
	phases=true
	enabled=false
	break
case 3://utc杉
	phases=false
	enabled=true
	break
case 4://海绵宝宝
	phases=true
	enabled=true
	break
case 5://沃玛
	phases=false
	enabled=true
	break
case 6://核心杉
	phases=false
	enabled=false
	break
}
#endregion
#region 阶段选择(小游戏)
}else{
switch choice{
default:
	phases=false
	enabled=true
	break
case 0://3分钟大风车
	phases=false
	enabled=true
	break
}}
#endregion

#region 标签页
if(pressed_y>=5&&pressed_y<=59){
if(phases){
if(pressed_x>=5&&pressed_x<=317&&image_index!=2){audio_play_sound(snd_menu_confirm,0,0);image_index=2}
if(pressed_x>=323&&pressed_x<=634&&image_index!=3){audio_play_sound(snd_menu_confirm,0,0);image_index=3}
}else{
if(pressed_x>=5&&pressed_x<=317&&image_index!=0){audio_play_sound(snd_menu_confirm,0,0);image_index=0}
if(pressed_x>=323&&pressed_x<=634&&image_index!=1){audio_play_sound(snd_menu_confirm,0,0);image_index=1}}
}
#endregion

//游戏选择
if(pressed_x>=5&&pressed_x<=194){
#region 商店
if(temp=false&&pressed_y>=433&&pressed_y<=474){
audio_play_sound(snd_menu_confirm,0,0)
temp=1
_shop=1
fader.color=c_black
fader.alpha=0
Anim_Create(fader,"alpha",0,0,0,1,20)
alarm[0]=21
}
#endregion
}