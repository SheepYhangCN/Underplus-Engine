if(os_is_network_connected()=true){
np_setpresence_more("","",false)
if(global.language=0){
event_user(0)}
if(global.language=1){
event_user(1)}
np_update()
}