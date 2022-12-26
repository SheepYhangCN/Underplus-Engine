global.debug = 0;
global.undead = 0;
global.mode=GAME_MODE.NORMAL;
global.language=LANGUAGE.ENGLISH
global.battle=BATTLE.TEST
global.shop=SHOP.TEST
global.tas=false
global.kr=0
global.shield=false
global.shield_useable=false
global.shielding=false
global.shieldval=120
room_speed=60
//cursor_sprite=spr_cursor
window_set_size(640,480)

Anim_Init();

Input_Init();
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,vk_enter);
Input_Bind(INPUT.CONFIRM,INPUT_TYPE.KEYBOARD,0,ord("Z"));
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,vk_shift);
Input_Bind(INPUT.CANCEL,INPUT_TYPE.KEYBOARD,0,ord("X"));
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,vk_control);
Input_Bind(INPUT.MENU,INPUT_TYPE.KEYBOARD,0,ord("C"));
Input_Bind(INPUT.UP,INPUT_TYPE.KEYBOARD,0,vk_up);
Input_Bind(INPUT.DOWN,INPUT_TYPE.KEYBOARD,0,vk_down);
Input_Bind(INPUT.LEFT,INPUT_TYPE.KEYBOARD,0,vk_left);
Input_Bind(INPUT.RIGHT,INPUT_TYPE.KEYBOARD,0,vk_right);

Flag_Init();

Encounter_Init();

BGM_Init();

Dialog_Init();

Demo_Init();

Shop_Init();

instance_create_depth(0,0,0,camera);
instance_create_depth(0,0,0,fader);
instance_create_depth(0,0,0,border);
instance_create_depth(0,0,0,closed_captions);
instance_create_depth(0,0,depth,obj_debug)
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=browser_ie_mobile||os_browser=browser_ie_mobile){
instance_create_depth(0,0,depth-1,obj_left_analog)
instance_create_depth(0,0,depth-1,obj_touch_buttons)
//instance_create_depth(0,0,0,mobile_control)
}

application_surface_draw_enable(false);

//Border_SetEnabled(false);

show_debug_overlay(false);

Flag_Load(FLAG_TYPE.SETTINGS)
var default_lang=0
if(os_get_language()="zh"){default_lang=1}
Language_Set(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,default_lang))
//边框
border_=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)
if(border_=0){
Border_SetEnabled(false)}else{
Border_SetEnabled(true)
Border_SetSprite(Border_Get_Sprite(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.BORDER,0)))}
//全屏
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
if(Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.FULLSCREEN,1)=2){
window_set_fullscreen(true)}}
//音量
volume=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.VOLUME,1)
//模式
global.mode=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.MODE,0)
//窗口大小
if(!(os_type=os_android||os_type=os_ios||os_type=os_winphone)){
_window_size=Flag_Get(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.WINDOW_SIZE,1)
if(!Border_IsEnabled()&&window_get_fullscreen()=false){
Window_Size_Set(_window_size)}}

//Language_Set(LANGUAGE.SCHINESE)
room_goto(room_logo_warmtale)