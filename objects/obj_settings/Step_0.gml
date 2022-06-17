//instance_create_depth(random(room_width+100),0,0,season_effect)
b=instance_create_depth(random(room_width+10), 0, 0, season_effect)
b.image_xscale=1
b.image_yscale=1
b.alarm[0]=-1
b.alarm[1]=1

if(global.language=0){
window_set_caption(GAME_NAME+" - Settings")
}else if(global.language=1){
window_set_caption(GAME_NAME+" - 设置")
}

if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)=0&&Border_IsEnabled()=true){
Border_SetEnabled(false)}
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)>0){
if(Border_IsEnabled()=false){
Border_SetEnabled(true)}
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)=1&&Border_GetSprite()!=spr_border_simple)
Border_SetSprite(spr_border_simple)}

if(window_get_fullscreen()=false){
fullscreen=1}
if(window_get_fullscreen()=true){
fullscreen=2}

if(choice<1){
choice=1}
if(choice>7){
choice=7}

if(window_size<1){
window_size=1}
if(window_size>2){
window_size=2}

if(fullscreen<1){
fullscreen=1}
if(fullscreen>2){
fullscreen=2}

if(border_var<0){
border_var=0}
if(border_var>1){
border_var=1}

if(mode_val<0){
mode_val=0}
if(mode_val>2){
mode_val=2}
global.mode=mode_val

if(border_var=0&&Border_IsEnabled()=true){
Border_SetEnabled(false)}
if(border_var>0){
if(Border_IsEnabled()=false){
Border_SetEnabled(true)}
Border_SetSprite(spr_border_simple)}

if(window_size=1){
if(choice=2){
window_size_text="{color `gray`}<{color `yellow`} 1x >"}else{
window_size_text="{color `gray`}<{color `white`} 1x >"}}
if(window_size=1.5){
window_size_text="< 1.5x >"}
if(window_size=2){
window_size_text="< 2x {color `gray`}>"}

if(global.language=0){
//全屏
if(fullscreen=1){
if(choice=3){
fullscreen_text="{color `gray`}<{color `yellow`} Off >"}else{
fullscreen_text="{color `gray`}<{color `white`} Off >"}}
if(fullscreen=2){
fullscreen_text="< On {color `gray`}>"}
//边框
if(border_var=0){
if(choice=6){
border_text="{color `gray`}<{color `yellow`} None >"}else{
border_text="{color `gray`}<{color `white`} None >"}}
if(border_var=1){
border_text="< Simple {color `gray`}>"}
//模式
if(mode_val=1){
if(choice=4){
modetext="{color `gray`}< {color `lime`}Easy {color `yellow`}>"}else{
modetext="{color `gray`}< {color `lime`}Easy {color `white`}>"}}
if(mode_val=0){
modetext="< Normal >"}
if(mode_val=2){
modetext="< {color `red`}Hard {color `gray`}>"}
}
if(global.language=1){
//全屏
if(fullscreen=1){
if(choice=3){
fullscreen_text="{color `gray`}<{color `yellow`} {font 3}关{font 1} >"}else{
fullscreen_text="{color `gray`}<{color `white`} {font 3}关{font 1} >"}}
if(fullscreen=2){
fullscreen_text="< {font 3}开{font 1} {color `gray`}>"}
//边框
if(border_var=0){
if(choice=6){
border_text="{color `gray`}<{color `yellow`} {font 3}无{font 1} >"}else{
border_text="{color `gray`}<{color `white`} {font 3}无{font 1} >"}}
if(border_var=1){
border_text="< {font 3}简单{font 1} {color `gray`}>"}
//模式
if(mode_val=1){
if(choice=4){
modetext="{color `gray`}< {color `lime`}{font 3}简单{font 1} {color `yellow`}>"}else{
modetext="{color `gray`}< {color `lime`}{font 3}简单{font 1} {color `white`}>"}}
if(mode_val=0){
modetext="< {font 3}普通{font 1} >"}
if(mode_val=2){
modetext="< {font 3}{color `red`}困难{font 1} {color `gray`}>"}
}

if(Input_IsPressed(INPUT.DOWN)){
if(choice<7){
audio_play_sound(snd_menu_switch,0,0)}
choice+=1
}
if(Input_IsPressed(INPUT.UP)){
if(choice>1){
audio_play_sound(snd_menu_switch,0,0)}
choice-=1
}
if(Input_IsPressed(INPUT.LEFT)){
if(choice=1&&global.language=1){
if(global.language=1){
audio_play_sound(snd_menu_confirm,0,0)}
Language_Set(0)
choice=1}
if(choice=2&&!(os_type=os_android||os_type=os_ios||os_type=os_winphone)&&fullscreen!=2){
if(window_size>1){
audio_play_sound(snd_menu_confirm,0,0)}
window_size-=0.5
Window_Size_Set(window_size)}
if(choice=3&&!(os_type=os_android||os_type=os_ios||os_type=os_winphone)&&fullscreen=2){
audio_play_sound(snd_menu_confirm,0,0)
window_set_fullscreen(false)
fullscreen=1
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,fullscreen)
}

if(choice=4){
if(mode_val=0){
mode_val=1
audio_play_sound(snd_menu_confirm,0,0)}
if(mode_val=2){
mode_val=0
audio_play_sound(snd_menu_confirm,0,0)}
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.MODE,mode_val)}

if(choice=6){
if(border_var>0){
audio_play_sound(snd_menu_confirm,0,0)}
border_var-=1
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,border_var)
}
//Flag_Save(FLAG_TYPE.SETTINGS)
}

if(Input_IsPressed(INPUT.RIGHT)){
if(choice=1&&global.language=0){
if(global.language=0){
audio_play_sound(snd_menu_confirm,0,0)}
Language_Set(1)
choice=1}

if(choice=2&&!(os_type=os_android||os_type=os_ios||os_type=os_winphone)&&fullscreen!=2&&Border_IsEnabled()=false){
if(window_size<2){
audio_play_sound(snd_menu_confirm,0,0)}
window_size+=0.5
Window_Size_Set(window_size)}

if(choice=3&&!(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=!browser_not_a_browser)&&fullscreen=1){
audio_play_sound(snd_menu_confirm,0,0)
window_set_fullscreen(true)
fullscreen=2
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,fullscreen)
}

if(choice=4){
if(mode_val=0){
mode_val=2
audio_play_sound(snd_menu_confirm,0,0)}
if(mode_val=1){
mode_val=0
audio_play_sound(snd_menu_confirm,0,0)}
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.MODE,mode_val)}

if(choice=6){
if(border_var<1){
audio_play_sound(snd_menu_confirm,0,0)}
border_var+=1
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,border_var)
}
//Flag_Save(FLAG_TYPE.SETTINGS)
}

if(global.language<0){
Language_Set(0)}
if(global.language>1){
Language_Set(1)}


if(choice=5&&Input_IsHeld(INPUT.LEFT)){
world.volume-=0.01
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.VOLUME,world.volume)}
if(choice=5&&Input_IsHeld(INPUT.RIGHT)){
world.volume+=0.01
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.VOLUME,world.volume)}

event_user(0)

if(choice=7&&Input_IsPressed(INPUT.CONFIRM)){
audio_play_sound(snd_menu_confirm,0,0)
Flag_Save(FLAG_TYPE.SETTINGS)
room_goto(room_menu)}
//room_goto(room_logo)}