//Original By 天机Ceyase
///@arg min,max,except_value
function random_range_except(_min,_max,except_value){
	var num = random_range(_min,_max)
	if(is_array(except_value)){
	for(var i=0;i<array_length(except_value);i++){
		if(except_value[i] == num){
			return random_range_except(_min,_max,except_value)
		}
	}
	}else if(except_value == num){
		return random_range_except(_min,_max,except_value)
	}
	return num
}
///@arg min,max,except_value
function irandom_range_except(_min,_max,except_value){
	var num = irandom_range(_min,_max)
	if(is_array(except_value)){
	for(var i=0;i<array_length(except_value);i++){
		if(except_value[i] == num){
			return irandom_range_except(_min,_max,except_value)
		}
	}
	}else if(except_value == num){
		return irandom_range_except(_min,_max,except_value)
	}
	return num
}