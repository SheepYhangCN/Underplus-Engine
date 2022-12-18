function Battle_End() {
	if(file_exists(working_directory+GAME_SAVE_NAME+"/file10.ini")){file_delete(working_directory+GAME_SAVE_NAME+"/file10.ini")}
	if(directory_exists(working_directory+GAME_SAVE_NAME+"/flag/10")){directory_destroy(working_directory+GAME_SAVE_NAME+"/flag/10")}
	var room_return=Flag_Get(FLAG_TYPE.TEMP,FLAG_TEMP.BATTLE_ROOM_RETURN);
	if(room_exists(room_return)){
		fader.alpha=1;
		room_goto(room_return);
		Fader_Fade(-1,0,20);
		BGM_Resume(0);
		BGM_SetVolume(0,0);
		BGM_SetVolume(0,1,50);
	}


}
