///@arg room
function Player_GetRoomName() {
	var ROOM=argument[0];
	var name="{room_name_missing}"
	if(global.language=0){
	if(ROOM="room_lobby"){
	name="Lobby"
	}
	if(ROOM="room_logo"){
	name="Logo"
	}
	if(ROOM="room_battle"){
	name="Battle Room"
	}
	if(ROOM="room_menu"){
	name="Menu"
	}
	if(ROOM="room_warning"){
	name="Epilepsy Warning"
	}
	if(ROOM="room_gameover"){
	name="Game Over Room"
	}
	if(ROOM="room_shop"){
	name="Shop Room"
	}
	if(ROOM="room_empty"){
	name="Empty Room"
	}
	if(ROOM="room_games"){
	name="Select Games"
	}
	if(ROOM="room_settings"){
	name="Settings"
	}
	if(ROOM="room_credits"){
	name="Credits"
	}
	}else if(global.language=1){
	if(ROOM="room_lobby"){
	name="{font 0}大厅"
	}
	if(ROOM="room_logo"){
	name="{font 0}标题画面"
	}
	if(ROOM="room_battle"){
	name="{font 0}战斗房间"
	}
	if(ROOM="room_menu"){
	name="{font 0}菜单"
	}
	if(ROOM="room_warning"){
	name="{font 0}光敏性癫痫警告"
	}
	if(ROOM="room_gameover"){
	name="Game Over{font 0}房间"
	}
	if(ROOM="room_shop"){
	name="{font 0}商店房间"
	}
	if(ROOM="room_empty"){
	name="{font 0}空房间"
	}
	if(ROOM="room_games"){
	name="选择游戏"
	}
	if(ROOM="room_settings"){
	name="设置"
	}
	if(ROOM="room_credits"){
	name="制作名单"
	}
	}

	switch(ROOM){
		case -1:
			name="--";
			break;
	}
	return name;


}
