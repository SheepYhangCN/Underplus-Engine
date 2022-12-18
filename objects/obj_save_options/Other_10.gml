///@descr inst
if(instance_exists(_inst_name)){instance_destroy(_inst_name)}
if(instance_exists(_inst_lv)){instance_destroy(_inst_lv)}
if(instance_exists(_inst_time)){instance_destroy(_inst_time)}
if(instance_exists(_inst_room)){instance_destroy(_inst_room)}

if(instance_exists(inst_slot)){instance_destroy(inst_slot)}
if(instance_exists(inst_copy)){instance_destroy(inst_copy)}
if(instance_exists(inst_copy_index)){instance_destroy(inst_copy_index)}
if(instance_exists(inst_move)){instance_destroy(inst_move)}
if(instance_exists(inst_move_index)){instance_destroy(inst_move_index)}
if(instance_exists(inst_delete)){instance_destroy(inst_delete)}
if(instance_exists(inst_back)){instance_destroy(inst_back)}

//Player_Load()
Flag_Clear(FLAG_TYPE.INFO);
Flag_Load(FLAG_TYPE.INFO);
_inst_name=instance_create_depth(150,20,0,text_typer);
_inst_lv=instance_create_depth(318,20,0,text_typer);
_inst_lv.text=_prefix+"LV "+string(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.LV));
_inst_time=instance_create_depth(462,20,0,text_typer);
var time=Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.TIME);
var minute=time div 60;
var second=time mod 60;
_inst_time.text=_prefix+string(minute)+":"+(second<10 ? "0" : "")+string(second);
_inst_room=instance_create_depth(150,56,0,text_typer);
_inst_room.text=_prefix+"["+string(Flag_GetSaveSlot())+"] "+Player_GetRoomName(Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.ROOM,-1));
if(global.language=LANGUAGE.ENGLISH){
_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"EMPTY");
}else if(global.language=LANGUAGE.SCHINESE){
_inst_name.text=_prefix+Flag_Get(FLAG_TYPE.INFO,FLAG_INFO.NAME,"空");
}

inst_slot=instance_create_depth(80,50,0,text_typer)
inst_copy=instance_create_depth(70,120,0,text_typer)
inst_copy_index=instance_create_depth(460,120,0,text_typer)
inst_move=instance_create_depth(70,160,0,text_typer)
inst_move_index=instance_create_depth(460,160,0,text_typer)
inst_delete=instance_create_depth(70,200,0,text_typer)
inst_back=instance_create_depth(70,240,0,text_typer)
if(choice!=1&&Flag_GetSaveSlot()>0&&Flag_GetSaveSlot()<9){inst_slot.text=_prefix+"{scale 3}{font 0}<                   >"}
if(choice!=1&&Flag_GetSaveSlot()=0){inst_slot.text=_prefix+"{scale 3}{font 0}{color `gray`}<{color `white`}                   >"}
if(choice!=1&&Flag_GetSaveSlot()=9){inst_slot.text=_prefix+"{scale 3}{font 0}<                   {color `gray`}>"}
if(choice=1&&Flag_GetSaveSlot()>0&&Flag_GetSaveSlot()<9){inst_slot.text=_prefix+"{scale 3}{font 0}{color `yellow`}<                   >"}
if(choice=1&&Flag_GetSaveSlot()=0){inst_slot.text=_prefix+"{scale 3}{font 0}{color `gray`}<{color `yellow`}                   >"}
if(choice=1&&Flag_GetSaveSlot()=9){inst_slot.text=_prefix+"{scale 3}{font 0}{color `yellow`}<                   {color `gray`}>"}

if(choice!=2&&select>0&&select<9){inst_copy_index.text=_prefix+"< "+string(select)+"/9 >"}
if(choice!=2&&select=0){inst_copy_index.text=_prefix+"{color `gray`}< {color `white`}"+string(select)+"/9 >"}
if(choice!=2&&select=9){inst_copy_index.text=_prefix+"< "+string(select)+"/9{color `gray`} >"}
if(ok&&choice=2){
inst_copy_index.text=_prefix}else{
if(choice=2&&select>0&&select<9){inst_copy_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9 >"}
if(choice=2&&select=0){inst_copy_index.text=_prefix+"{color `gray`}< {color `yellow`}"+string(select)+"/9 >"}
if(choice=2&&select=9){inst_copy_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9{color `gray`} >"}
}

if(choice!=3&&select>0&&select<9){inst_move_index.text=_prefix+"< "+string(select)+"/9 >"}
if(choice!=3&&select=0){inst_move_index.text=_prefix+"{color `gray`}< {color `white`}"+string(select)+"/9 >"}
if(choice!=3&&select=9){inst_move_index.text=_prefix+"< "+string(select)+"/9{color `gray`} >"}
if(ok&&choice=3){
inst_move_index.text=_prefix}else{
if(choice=3&&select>0&&select<9){inst_move_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9 >"}
if(choice=3&&select=0){inst_move_index.text=_prefix+"{color `gray`}< {color `yellow`}"+string(select)+"/9 >"}
if(choice=3&&select=9){inst_move_index.text=_prefix+"{color `yellow`}< "+string(select)+"/9{color `gray`} >"}
}

if(global.language=LANGUAGE.ENGLISH){
if(choice=2){
if(ok){inst_copy.text=_prefix+"{color `red`}(Are you sure? It will overwrite your old save!)"
}else{inst_copy.text=_prefix+"{color `yellow`}Copy to"}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_copy.text=_prefix+"Copy to"}else{inst_copy.text=_prefix+"{color `gray`}Copy to"}
	}
if(choice=3){
if(ok){inst_move.text=_prefix+"{color `red`}(Are you sure? It will overwrite your old save!)"
}else{inst_move.text=_prefix+"{color `yellow`}Move to"}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_move.text=_prefix+"Move to"}else{inst_move.text=_prefix+"{color `gray`}Move to"}
	}

if(choice=4){
if(ok){inst_delete.text=_prefix+"{color `red`}(Are you sure? It will delete your save forever!)"
}else{inst_delete.text=_prefix+"{color `yellow`}Delete"}
}else{
if(file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_delete.text=_prefix+"Delete"}else{inst_delete.text=_prefix+"{color `gray`}Delete"}
	}
if(choice=5){
inst_back.text=_prefix+"{color `yellow`}Back"
}else{inst_back.text=_prefix+"Back"}
}
if(global.language=LANGUAGE.SCHINESE){
if(choice=2){
if(ok){inst_copy.text=_prefix+"{color `red`}(你确定吗? 这将会覆盖你的旧存档!)"
}else{inst_copy.text=_prefix+"{color `yellow`}复制至"}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_copy.text=_prefix+"复制至"}else{inst_copy.text=_prefix+"{color `gray`}复制至"}
	}
if(choice=3){
if(ok){inst_move.text=_prefix+"{color `red`}(你确定吗? 这将会覆盖你的旧存档!)"
}else{inst_move.text=_prefix+"{color `yellow`}移动至"}
}else{
if(Flag_GetSaveSlot()!=select&&file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_move.text=_prefix+"移动至"}else{inst_move.text=_prefix+"{color `gray`}移动至"}
	}
if(choice=4){
if(ok){inst_delete.text=_prefix+"{color `red`}(你确定吗? 这将会永久删除你的存档!)"
}else{inst_delete.text=_prefix+"{color `yellow`}删除"}
}else{
if(file_exists(working_directory+GAME_SAVE_NAME+"/file"+string(Flag_GetSaveSlot())+".ini")&&directory_exists(working_directory+GAME_SAVE_NAME+"/flag/"+string(Flag_GetSaveSlot()))){
	inst_delete.text=_prefix+"删除"}else{inst_delete.text=_prefix+"{color `gray`}删除"}
	}
if(choice=5){
inst_back.text=_prefix+"{color `yellow`}返回"
}else{inst_back.text=_prefix+"返回"}
}