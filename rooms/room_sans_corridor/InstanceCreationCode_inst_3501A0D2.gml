visible=false
if(global.language=LANGUAGE.ENGLISH){
text="* Do you want to go back lobby?{sleep 15}&&          {choice 0}Yes          {choice 1}No{choice `CHOICE`}{pause}{choice_back_lobby}{end}"}
if(global.language=LANGUAGE.SCHINESE){
text="* 你想要回到大厅吗?{sleep 15}&&          {choice 0}是          {choice 1}否{choice `CHOICE`}{pause}{choice_back_lobby}{end}"}