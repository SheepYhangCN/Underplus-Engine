///@desc Name Check
var text="";
var valid=true;
if(global.language=0){
switch(string_lower(_naming_name)){
	default:
		text="{font 1}Is this name correct?"
		break;
	case "yuhang":
		if(global.debug=0){
		text="No you can't !!1!11"
		valid=false}
		break;
	case "aaaaaa":
	case "aaaaa":
	case "aaaa":
	case "aaa":
	case "aa":
	case "a":
	case "111111":
	case "11111":
	case "1111":
	case "111":
	case "11":
	case "1":
	case "123456":
	case "654321":
	case "147258":
		text="{font 1}Not very creative...?"
		break;
//	case "alphys":
//		text=Lang_GetString("menu.confirm.title.alphys");
//		valid=false;
//		break;
//	case "alphy":
//		text=Lang_GetString("menu.confirm.title.alphy");
//		break;
//	case "asgore":
//		text=Lang_GetString("menu.confirm.title.asgore");
//		valid=false;
//		break;
//	case "toriel":
//		text=Lang_GetString("menu.confirm.title.toriel");
//		valid=false;
//		break;
//	case "asriel":
//		text=Lang_GetString("menu.confirm.title.asriel");
//		valid=false;
//		break;
//	case "flowey":
//		text=Lang_GetString("menu.confirm.title.flowey");
//		valid=false;
//		break;
//	case "sans":
//		text=Lang_GetString("menu.confirm.title.sans");
//		valid=false;
//		break;
//	case "papyru":
//		text=Lang_GetString("menu.confirm.title.papyru");
//		break;
//	case "undyne":
//		text=Lang_GetString("menu.confirm.title.undyne");
//		valid=false;
//		break;
//	case "mtt":
//	case "metta":
//	case "mett":
//		text=Lang_GetString("menu.confirm.title.mtt");
//		break;
//	case "chara":
//		text=Lang_GetString("menu.confirm.title.chara");
//		break;
	case "frisk":
		text="{font 1}Tips:Please use Delete key&to switch Hard Mode"
		global.hardmode=1;
		break;
	case "":
		text="{font 1}OMG that's a awesome name&really awesome i love it"
		break;
	case "gms":
	case "gms2":
	case "gml":
	case "yyg":
	case "yygame":
		text="{font 1}damn it YoYoGames!"
		break;
	case "tml":
	case "ute":
		text="{font 1}UNDERTALE Engine Forever!"
		break;
	case "fuck":
	case "fucku":
	case "fku":
	case "fkyou":
	case "nigger":
	case "damn":
	case "damnit":
	case "shit":
		text="{font 1}Language!"
		break;
	case "dick":
	case "penis":
	case "cunt":
	case "vulva":
	case "ass":
	case "butt":
	case "jiba":
		text="{font 1}WHAT?"
		break;
	case "kris":
	case "susie":
	case "ralsei":
	case "noelle":
	case "berdly":
		text="{font 0}{scale 2.5}<DELTARUNE>"
		break;
	case "player":
		text="{font 1}You."
		break;
	case "ptfk":
		text="omg it's ptfk 11111"
		break;
	case "cxx":
		text="omg it's cxx 11111"
		break;
	case "yst":
		text="omg it's YuanSaTion 11111"
		break;
	case "ax":
	case "anxing":
		text="omg it's AnXing 11111"
		break;
	case "hf":
		text="omg it's HF 11111"
		break;
	case "666":
	case "6666":
	case "66666":
	case "666666":
		text="Devil."
		break;
}
}else if(global.language=1){
switch(string_lower(_naming_name)){
	default:
		text="{font 3}是这个名字没错吗?"
		break;
	case "yuhang":
		if(global.debug=0){
		text="不你不能!!1!11"
		valid=false}
		break;
	case "aaaaaa":
	case "aaaaa":
	case "aaaa":
	case "aaa":
	case "aa":
	case "a":
	case "111111":
	case "11111":
	case "1111":
	case "111":
	case "11":
	case "1":
	case "123456":
	case "654321":
	case "147258":
		text="{font 3}不是很有创造性...?"
		break;
	case "frisk":
		text="{font 3}提示:请使用{font 0}Delete{font 3}键&来开关困难模式"
		global.hardmode=1;
		break;
	case "":
		text="{font 3}噢我的天哪那可真是个好名字&真的太棒了我爱死这个名字了"
		break;
	case "gms":
	case "gms2":
	case "gml":
	case "yyg":
	case "yygame":
		text="{font 0}YoYoGames{font 3}给爷死{font 0}!"
		break;
	case "tml":
	case "ute":
		text="{font 0}UNDERTALE Engine{font 3}永远滴神{font 0}!"
		break;
	case "sb":
	case "shabi":
	case "fuck":
	case "fucku":
	case "fku":
	case "fkyou":
	case "nigger":
	case "damn":
	case "damnit":
	case "shit":
	case "nmsl":
	case "nimabi":
	case "nmb":
	case "cnm":
	case "naotan":
	case "wdnmd":
		text="{font 3}这可太有素质了"
		break;
	case "dick":
	case "penis":
	case "cunt":
	case "vulva":
	case "ass":
	case "butt":
	case "jiba":
		text="{font 3}¿你不对劲"
		break;
	case "kris":
	case "susie":
	case "ralsei":
	case "noelle":
	case "berdly":
		text="{font 0}{scale 2.5}<DELTARUNE>"
		break;
	case "player":
		text="{font 3}你。"
		break;
	case "ptfk":
		text="我趣事拼图方块大跌11111"
		break;
	case "cxx":
		text="我趣事cxx大跌11111"
		break;
	case "yst":
		text="我趣事益生堂大跌11111"
		break;
	case "ax":
	case "anxing":
		text="我趣事暗星大跌11111"
		break;
	case "hf":
		text="我趣事幻风大跌11111"
		break;
	case "114514":
		text="你是一个一个一个哼哼啊啊啊啊啊啊啊啊啊啊"
		break;
	case "666":
	case "6666":
	case "66666":
	case "666666":
		text="西方的恶魔"
		break;
}}

_confirm_title=text;
_confirm_valid=valid;