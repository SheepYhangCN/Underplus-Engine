_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 3}{scale 1}{voice 3}{speed 5}so,{sleep 15}&this is...&the end.{pause}{clear}......{pause}{clear}i am so sorry,{sleep 15}&i tried my best...{pause}{end_turn}{end}"
}
if(global.language=1){
_dialog.text="{font 3}{scale 1}{voice 3}{speed 5}所以，{sleep 15}&这就是...&结果了。{pause}{clear}......{pause}{clear}我很抱歉，{sleep 15}&我尽力了...{pause}{end_turn}{end}"
}