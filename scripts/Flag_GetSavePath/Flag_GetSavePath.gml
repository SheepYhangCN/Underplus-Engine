///@arg type,*slot
function Flag_GetSavePath() {
	var SLOT=Flag_GetSaveSlot()
	var TYPE=argument[0];
	if(argument_count>1){
	SLOT=argument[1]}

	var result="./"+GAME_SAVE_NAME+"./flag/";
	switch(TYPE){
		case FLAG_TYPE.STATIC:
			result+=string(SLOT)+"/static";
			break;
		case FLAG_TYPE.DYNAMIC:
			result+=string(SLOT)+"/dynamic";
			break;
		case FLAG_TYPE.INFO:
			result+=string(SLOT)+"/info";
			break;
		case FLAG_TYPE.SETTINGS:
			result+="settings";
			break;
		case FLAG_TYPE.DEMO:
			result+="demo/"+string(SLOT);
			break;
		
		default:
			result="";
			break;
	}

	return result;


}
