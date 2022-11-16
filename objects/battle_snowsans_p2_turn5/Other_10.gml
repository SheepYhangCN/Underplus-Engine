Battle_SetTurnInfo(BATTLE_TURN.TIME,800)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_UP,240)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_DOWN,64)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_LEFT,192)
Battle_SetTurnInfo(BATTLE_TURN.BOARD_RIGHT,192)

/*_dialog=instance_create_depth(420, 110, 0, battle_dialog_enemy)
if(global.language=LANGUAGE.ENGLISH){
_dialog.text="{font 3}{voice 3}{titr_face 3}honesty,{sleep 15}{titr_face 1}&take my advice,{sleep 15}&kiddo.{pause}{clear}{titr_face 3}some day,{sleep 15}&you have to learn to&{color `red`}quit{color `black`} from difficulties.{pause}{clear}{color `red`}{voice -1}{titr_face 4}and i promise that is today."
}else if(global.language=LANGUAGE.SCHINESE){
_dialog.text="{font 3}{voice 3}{speed 5}{titr_face 3}说实话, {sleep 15}{titr_face 1}&听听我的忠告吧, {sleep 15}&孩子。{pause}{clear}{titr_face 3}总有一天, {sleep 15}&你要学会知难而{color `red`}退出{color `black`}。{pause}{clear}{color `red`}{voice -1}{titr_face 4}而我保证那绝对就是&今天了。"
}