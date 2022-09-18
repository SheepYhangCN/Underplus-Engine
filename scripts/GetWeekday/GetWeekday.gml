///@arg weekday
function GetWeekday(){
var weekday=current_weekday
var result="ERROR"
if(argument_count>0){
weekday=argument[0]}
if(global.language=LANGUAGE.ENGLISH){
switch weekday{
case 0:
result="Sunday"
break
case 1:
result="Monday"
break
case 2:
result="Tuesday"
break
case 3:
result="Wednesday"
break
case 4:
result="Thursday"
break
case 5:
result="Friday"
break
case 6:
result="Saturday"
break
}}
if(global.language=LANGUAGE.SCHINESE){
switch weekday{
case 0:
result="周日"
break
case 1:
result="周一"
break
case 2:
result="周二"
break
case 3:
result="周三"
break
case 4:
result="周四"
break
case 5:
result="周五"
break
case 6:
result="周六"
break
}}
return result
}