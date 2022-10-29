///@arg slot
function Battle_SetMenuChoiceItemSecondary(){
	var SLOT = argument[0];
	var TXT = []
	if(global.language=LANGUAGE.ENGLISH){
	TXT[0] = ""
	TXT[1] = ""
	TXT[2] = "Use"
	TXT[3] = "Info"
	TXT[4] = "Drop"
	TXT[5] = ""
	TXT[6] = ""}
	if(global.language=LANGUAGE.SCHINESE){
	TXT[0] = ""
	TXT[1] = ""
	TXT[2] = "使用"
	TXT[3] = "说明"
	TXT[4] = "丢弃"
	TXT[5] = ""
	TXT[6] = ""}
	if(SLOT<3&&Item_IsValid(Item_Get(battle._menu_choice_item))){
		battle._menu_choice_item_secondary=SLOT;
		//更新文字
		var text="";
		var proc = battle._menu_choice_item_secondary+2;
		text+="{color `gray`}"+TXT[proc-2]+"&"
		text+="{color `gray`}"+TXT[proc-1]+"&{color `white`}"
		text+=TXT[proc]+"&"
		text+="{color `gray`}"+TXT[proc+1]+"&"
		text+="{color `gray`}"+TXT[proc+2]+"&"
		Battle_SetDialog5Line(text,true,true);
		return true;
	}else{
		return false;
	}
}
