if(global.language=0){
text="* (This is a chest.){sleep 15}&* (Do you want to use it?){sleep 15}&          {choice 0}Yes          {choice 1}No{choice `CHOICE`}{pause}{choice_box}{end}"}
if(global.language=1){
text="* (这是个箱子。){sleep 15}&* (你要使用吗?){sleep 15}&          {choice 0}是          {choice 1}否{choice `CHOICE`}{pause}{choice_box}{end}"}
Dialog_Add(text)
Dialog_Start()