///@arg *obj,*xstart,*ystart,*type,*targetx,*targety,*target_angle,*wait_time,*xscale,*yscale,*beam_time
function Blaster_Create_New(){
	var blaster = battle_bullet_gb_new
	var xx = 0
	var yy = 0
	var xscale = 2
	var yscale = 2
	var type = 0
	if(argument_count>0){
	blaster = argument[0]}
	if(argument_count>1){
    xx = argument[1]}
	if(argument_count>2){
    yy = argument[2]}
    bb = instance_create_depth(xx, yy, (DEPTH_BATTLE.BULLET_OUTSIDE_HIGH << 0), blaster)
	if(argument_count>3){
	type = argument[3]}
	if(argument_count>4){
    var idealxx = argument[4]
    bb.idealx = idealxx}
	if(argument_count>5){
    var idealyy = argument[5]
    bb.idealy = idealyy}
	if(argument_count>6){
    var idealrott = argument[6]
    bb.idealrot = idealrott}
	if(argument_count>7){
    var pp = argument[7]
    bb.pause = pp}
	if(argument_count>8){
    xscale = argument[8]}
	if(argument_count>9){
    yscale = argument[9]}
	if(argument_count>10){
    var time = argument[10]
    bb.beam_time = time}
	bb.type=type
    bb.image_xscale = xscale
    bb.image_yscale = yscale
}