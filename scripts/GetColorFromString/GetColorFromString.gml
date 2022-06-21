///@arg string
function GetColorFromString() {
	var STR=argument[0];

	var color=c_white;
	switch(STR){
		case "white":
			color=c_white;
			break;
		case "black":
			color=c_black;
			break;
		case "red":
			color=c_red;
			break;
		case "yellow":
			color=c_yellow;
			break;
		case "gray":
			color=c_gray;
			break;
		case "gray_dark":
			color=c_dkgray;
			break;
		case "gray_light":
			color=c_ltgray;
			break;
		case "lime":
			color=c_lime;
			break;
		case "purple":
			color=c_purple;
			break;
		case "orange":
			color=c_orange;
			break;
		case "blue":
			color=c_blue;
			break;
		case "aqua":
			color=c_aqua;
			break;
		case "grey":
			color=c_grey;
			break;
		case "green":
			color=c_green;
			break;
	}
	return color;


}
