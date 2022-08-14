Battle_SetTurnInfo(BATTLE_TURN.TIME,0)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,65)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,283)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,283)

battle_enemy_utcsans.alarm[2]=-1
audio_stop_all()
_dialog=instance_create_depth(420, 120, 0, battle_dialog_enemy)
_dialog.text="{font 3}{scale 1}{voice 3}{utcsans_face 0}...{pause}{clear}"
if(global.language=0){
_dialog.text+="{utcsans_face 3}okay, {sleep 15}&maybe you are right."
_dialog.text+="{pause}{utcsans_face 1}&who said monsters have to&fight to death with human?"
_dialog.text+="{pause}{clear}{utcsans_face 3}maybe peace really can&be restored, {sleep 15}&making the future of&monsters bright.{pause}{clear}{utcsans_face 1}i always think things&too pessimistically."
_dialog.text+="{pause}{clear}{utcsans_face 3}so...{sleep 15}{utcsans_face 0}&i hope you can really&convince undyne and others."
_dialog.text+="{pause}{clear}{utcsans_face 1}papyrus just follow undyne&to do things,{sleep 15}{utcsans_face 0}&it's not hard to&convince with him."
_dialog.text+="{pause}{clear}{utcsans_face 3}and alphys...{sleep 15}{utcsans_face 1}&i think she will defection&quickly without undyne."
_dialog.text+="{pause}{clear}{utcsans_face 0}undyne is your big trouble...{sleep 15}{utcsans_face 1}&although she lookss careless,{sleep 15}{utcsans_face 3}&but inside her heart,{sleep 15}{utcsans_face 0}&is a kid who sticks&to justice."
_dialog.text+="{pause}{clear}{utcsans_face 3}that kid is full of&determination to change&the fate of the monster,{sleep 15}{utcsans_face 1}&it's not easy to make&her succumb to human."
_dialog.text+="{pause}{clear}{utcsans_face 0}what? {sleep 15}me?{pause}{clear}{utcsans_face 3}heh,{sleep 15}{utcsans_face 2}&i have already&\"defectioned\"."
_dialog.text+="{pause}{clear}{utcsans_face 0}chat was over.{sleep 15}{utcsans_face 2}&i hope you can escape from&the main fighting monster."
}else if(global.language=1){
_dialog.text+="{utcsans_face 3}好吧，{sleep 15}&也许你说的不错。"
_dialog.text+="{pause}{utcsans_face 1}&谁说怪物一定要和&人类拼个你死我活?"
_dialog.text+="{pause}{clear}{utcsans_face 3}说不定真的能恢复和平，{sleep 15}&让怪物的未来充满光明。{pause}{utcsans_face 1}&我总是把事情想得太悲观。"
_dialog.text+="{pause}{clear}{utcsans_face 3}那么...{sleep 15}{utcsans_face 0}&祝你真的能说服undyne&他们。"
_dialog.text+="{pause}{clear}{utcsans_face 1}papyrus不过是跟着&undyne做事罢了，{sleep 15}{utcsans_face 0}&说服他并不难。"
_dialog.text+="{pause}{clear}{utcsans_face 3}至于alphys...{sleep 15}{utcsans_face 1}&我想如果没有undyne&她很快就会倒戈。"
_dialog.text+="{pause}{clear}{utcsans_face 0}undyne才是你的大麻烦...{sleep 15}{utcsans_face 1}&她虽然大大咧咧的，{sleep 15}{utcsans_face 3}&但是在她的内心深处，{sleep 15}{utcsans_face 0}&其实是一个坚守正义的&小屁孩。"
_dialog.text+="{pause}{clear}{utcsans_face 3}那个小屁孩充满了&改变怪物命运的决心，{sleep 15}{utcsans_face 1}&试图让她屈服于人类&可不是一件容易事。"
_dialog.text+="{pause}{clear}{utcsans_face 0}什么?{sleep 15}你问我?{pause}{clear}{utcsans_face 3}呵，{sleep 15}{utcsans_face 2}我不是已经&“倒戈”了吗。"
_dialog.text+="{pause}{clear}{utcsans_face 0}聊天到此结束，{sleep 15}{utcsans_face 2}&希望你能在主战的&怪物手中逃出来。"
}