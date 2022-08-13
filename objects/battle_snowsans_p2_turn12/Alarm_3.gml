_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
_dialog.template=1
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 4}{titr_face 11}{titr_body 8}SANS!{sleep 15}&I'M HERE TO HELP{utse_papy_face 3}{speed 10}...&YOU?{pause}{clear}{speed 2}{utse_papy_face 2}?!WHAT HAPPENED?{pause}{alarm `battle_snowsans_p2_turn12` 4 30}{end}"
}else if(global.language=1){
_dialog.text="{font 4}{speed 5}{scale 1}{voice 4}{titr_face 11}{titr_body 8}SANS!{sleep 15}&我来帮你{utse_papy_face 3}{speed 10} ...了？{pause}{clear}{speed 5}{utse_papy_face 2}？!发生肾么事了？{pause}{alarm `battle_snowsans_p2_turn12` 4 30}{end}"
}