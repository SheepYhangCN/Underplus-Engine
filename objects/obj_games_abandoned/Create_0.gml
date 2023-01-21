depth=DEPTH_UI.TEXT

image_speed=0
image_index=2
choice=0
phase=0
phases=true
temp=0
quit=0
_shop=0
enabled=true
pressed_x=0
pressed_y=0

if(instance_exists(obj_left_analog)||instance_exists(obj_touch_buttons)||instance_exists(mobile_control)){
if(global.language=LANGUAGE.ENGLISH){CC_Add("{font 1}This screen supports screen touch&Tap back button(mobile) or backspace&key(desktop) to switch the&mobile controller.",90)}
if(global.language=LANGUAGE.SCHINESE){CC_Add("此页面支持触屏操作&按下返回键(移动端)或退格键&(桌面端)来切换移动端控制。",90)}
if(instance_exists(obj_left_analog)){instance_destroy(obj_left_analog)}
if(instance_exists(obj_touch_buttons)){instance_destroy(obj_touch_buttons)}
if(instance_exists(mobile_control)){instance_destroy(mobile_control)}}