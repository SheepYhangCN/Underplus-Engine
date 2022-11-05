///@arg window_size
function Window_Size_Set(){
var window_size=argument[0]
if(instance_exists(obj_settings)){
obj_settings._window_size=window_size}
world._window_size=window_size
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.WINDOW_SIZE,window_size)
//Flag_Save(FLAG_TYPE.SETTINGS)
if(window_size=1){
window_set_size(640,480)
}else if(window_size=1.5){
window_set_size(960,720)
}else if(window_size=2){
window_set_size(1280,960)
}
}