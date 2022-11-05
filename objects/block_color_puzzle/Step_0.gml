block_enabled=false
switch image_blend{
	case c_red://红色
	block_enabled=true
	break
}
if(moving=false&&place_meeting(x,y,char_player)&&!position_meeting(x+10,y+9,char_player)){
	char_player.moveable=false
	Anim_Create(char_player,"x",0,0,char_player.x,x+10-char_player.x,5)
	Anim_Create(char_player,"y",0,0,char_player.y,y+10-char_player.y,5)}
if(position_meeting(x+10,y+9,char_player)){
	if(temp=false){
		switch image_blend{
		case c_fuchsia://粉色
			alarm[2]=16
		break
		case c_lime://绿色
			alarm[2]=16
		break
		case c_orange://橙色
			alarm[2]=16
			char_player.flavor="Orange"
		break
		case c_yellow://黄色
			alarm[0]=6
			audio_play_sound(snd_shock,0,0)
		break
		case c_purple://紫色
			alarm[1]=6
			char_player.flavor="Lemon"
		break
		case c_blue://蓝色
			alarm[2]=16
			if(char_player.flavor="Orange"){
				alarm[0]=6
				audio_play_sound(snd_water,0,0)
			}
			event_user(0)
		break
		}
		temp=true
	}
	if(moveable=true){
	if(Input_IsHeld(INPUT.UP)&&!Input_IsHeld(INPUT.DOWN)){
		char_player.dir=DIR.UP
		event_user(1)
		if(moveable1){
		moving=true
		moveable=false
		Anim_Create(char_player,"y",0,0,char_player.y,-20,10)
		Anim_Create(char_player,"image_index",0,0,0,2,10)
		alarm[2]=16
		alarm[3]=12}
	}
	if(Input_IsHeld(INPUT.DOWN)&&!Input_IsHeld(INPUT.UP)){
		char_player.dir=DIR.DOWN
		event_user(1)
		if(moveable1){
		moving=true
		moveable=false
		Anim_Create(char_player,"y",0,0,char_player.y,20,10)
		Anim_Create(char_player,"image_index",0,0,0,2,10)
		alarm[2]=16
		alarm[3]=12}
	}
	if(Input_IsHeld(INPUT.LEFT)&&!Input_IsHeld(INPUT.RIGHT)){
		char_player.dir=DIR.LEFT
		event_user(1)
		if(moveable1){
		moving=true
		moveable=false
		Anim_Create(char_player,"x",0,0,char_player.x,-20,10)
		Anim_Create(char_player,"image_index",0,0,0,2,10)
		alarm[2]=16
		alarm[3]=12}
	}
	if(Input_IsHeld(INPUT.RIGHT)&&!Input_IsHeld(INPUT.LEFT)){
		char_player.dir=DIR.RIGHT
		event_user(1)
		if(moveable1){
		moving=true
		moveable=false
		Anim_Create(char_player,"x",0,0,char_player.x,20,10)
		Anim_Create(char_player,"image_index",0,0,0,2,10)
		alarm[2]=16
		alarm[3]=12}
	}}
}else{
alarm[2]=-1
moveable=false
with(char_player){
if(!place_meeting(x,y,block_color_puzzle)){
char_player.moveable=true}}
temp=false}