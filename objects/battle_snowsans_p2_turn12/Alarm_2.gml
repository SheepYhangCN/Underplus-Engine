titr_head.image_index=7
_dialog=instance_create_depth(340, 110, 0, battle_dialog_enemy)
if(global.language=0){
_dialog.text="{font 4}{scale 1}{voice 3}so,{sleep 20}{titr_face 8}&this is the end...{pause}{clear}{titr_face 7}...{sleep 20}well,{sleep 15}{titr_face 10}{titr_body 9}{titr_legs `spr_sans_leg`}&i am going to grillby's{pause}{utse_papy}{end}"
}else if(global.language=1){
_dialog.text="{font 5}{speed 5}{scale 1}{voice 3}所以，{sleep 20}{titr_face 8}&这就是结局了...{pause}{clear}{titr_face 7}...{sleep 20}好了，{sleep 15}{titr_face 10}{titr_body 9}{titr_legs `spr_sans_leg`}&我要去grillby's了{pause}{utse_papy}{end}"
}