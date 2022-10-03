if(!instance_exists(_inst)){
	if(!Dialog_IsEmpty()){
		_inst=instance_create_depth(60,(_top ? 30 : 340),0,text_typer);
		_inst.text="{scale 2}{voice 0}{speed 2}{space_y 2}{shadow true}{gui true}{depth "+string(DEPTH_UI.FADER-2)+"}";
		_inst.text+=Dialog_Get();
		_inst.text+="{pause}{end}";
	}else{
		instance_destroy();
	}
}

//选择
if(_choice>0){
if(_top=true){
if(_choice_select=1&&_choice>=1){
souly=197}
if(_choice_select=2&&_choice>=2){
souly=227}
if(_choice_select=3&&_choice>=3){
souly=257}
if(_choice_select=4&&_choice>=4){
souly=287}
if(_choice_select=5&&_choice=5){
souly=317}
}else if(_top=false){
if(_choice_select=1&&_choice>=1){
souly=288}
if(_choice_select=2&&_choice>=2){
souly=258}
if(_choice_select=3&&_choice>=3){
souly=228}
if(_choice_select=4&&_choice>=4){
souly=198}
if(_choice_select=5&&_choice=5){
souly=168}}

if(_choice_select>_choice){
_choice_select=1}
if(_choice_select<1){
_choice_select=_choice}

//切换选择
if(_top=true){
if(Input_IsPressed(INPUT.UP)&&_choice!=1){
	_choice_select-=1
	audio_play_sound(snd_menu_switch,0,0)
}
if(Input_IsPressed(INPUT.DOWN)&&_choice!=1){
	_choice_select+=1
	audio_play_sound(snd_menu_switch,0,0)
}}else if(_top=false){
if(Input_IsPressed(INPUT.UP)&&_choice!=1){
	_choice_select+=1
	audio_play_sound(snd_menu_switch,0,0)
}
if(Input_IsPressed(INPUT.DOWN)&&_choice!=1){
	_choice_select-=1
	audio_play_sound(snd_menu_switch,0,0)
}}

if(Input_IsPressed(INPUT.CONFIRM)){
	Player_SetTextTyperChoice(_choice_select-1)
	audio_play_sound(snd_menu_confirm,0,0)
}
}