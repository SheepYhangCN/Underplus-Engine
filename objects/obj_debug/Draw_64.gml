if(global.debug=1){
	draw_set_font(font_mars_needs_cunnilingus)
	draw_set_color(c_red)
    draw_text(5, 15, "D")
	draw_set_color(c_yellow)
    draw_text(20, 15, "E")
	draw_set_color(c_lime)
    draw_text(35, 15, "B")
	draw_set_color(c_aqua)
    draw_text(50, 15, "U")
	draw_set_color(c_orange)
    draw_text(65, 15, "G")
	//draw_set_color(c_yellow)
	rainbow+=1
	draw_set_color(make_color_hsv((rainbow % 255), 255, 255))
	draw_set_font(font_fzjcxs)
	if(global.language=LANGUAGE.ENGLISH){
	language="English"
	}else if(global.language=LANGUAGE.SCHINESE){
	language="简体中文"
	}
	draw_room="Current Room:"+string(room)+"("+room_get_name(room)+")"
	draw_fps="Current FPS:"+string(fps)+"/"+string(room_speed)+"("+string(fps_real)+")"
	draw_language="Current Language:"+string(language)
	draw_windowsize="Current Window Size:"+string(world._window_size)+"x("+string(window_get_width())+"x"+string(window_get_height())+")"
	draw_instance_count="Instance Count:"+string(instance_count)
	draw_mousexy="Mouse XY:["+string(mouse_x)+","+string(mouse_y)+"]"
	if(global.kr=0){
	draw_hp_kr="HP:["+string(Player_GetHp())+"/"+string(Player_GetHpMax())+"]"}
	if(global.kr=1){
	draw_hp_kr="HP(+KR):["+string(Player_GetHp())+"(+"+string(Player_GetKR())+")/"+string(Player_GetHpMax())+"]"}
if(room=room_games&&instance_exists(obj_games)){
	draw_choice="Choice:["+string(obj_games.choice_min)+"/"+string(obj_games.choice)+"/"+string(obj_games.choice_max)+"]"
	draw_phase="Phase:["+string(obj_games.phase)+"/"+string(obj_games.phases)+"]"
	draw_warning_color="Warning Color:["+string(obj_games.warning_color)+","+string(obj_games.warning_countdown)+"]"
	draw_text(0,175,draw_choice)
	draw_text(0,195,draw_phase)
	draw_text(0,215,draw_warning_color)}
if(room=room_menu&&instance_exists(menu)){
	draw_letter="Choice Naming Letter:"+string(menu._choice_naming_letter)
    draw_text(0, 175, draw_letter)
	}
if(Player_IsInBattle()){
	turn_timer=Battle_GetTurnTime()
	draw_soulxy="Soul XY:["+string(battle_soul.x)+","+string(battle_soul.y)+"]"
	draw_battle_button="Choice Button:"+string(Battle_GetMenuChoiceButton())
	draw_turn="Turn Number:"+string(Battle_GetTurnNumber())
	if(instance_exists(battle_turn)&&variable_instance_exists(battle_turn,"timer")&&battle_turn.timer!=-1){
	draw_turn_timer="Turn Timer:"+string(turn_timer)+"("+string(battle_turn.timer)+")"
	}else{
	draw_turn_timer="Turn Timer:"+string(turn_timer)}
	draw_enemy="Battle:"+string(global.battle)+"["+object_get_name(Encounter_GetEnemy(global.battle,0))+","+object_get_name(Encounter_GetEnemy(global.battle,1))+","+object_get_name(Encounter_GetEnemy(global.battle,2))+"]"
	draw_board="Board XY & Size:["+string(battle_board.x)+","+string(battle_board.y)+"],["+string(battle_board.up)+","+string(battle_board.down)+","+string(battle_board.left)+","+string(battle_board.right)+"]"
	draw_state="Battle State & Menu:["+string(Battle_GetState())+","+string(Battle_GetMenu())+"]"
    draw_text(0, 175, draw_soulxy)
    draw_text(0, 195, draw_battle_button)
    draw_text(0, 215, draw_turn)
    draw_text(0, 235, draw_turn_timer)
	draw_text(0, 255, draw_enemy)
	draw_text(0, 275, draw_board)
	draw_text(0, 295, draw_state)
	if(instance_exists(battle_soul_blue)||instance_exists(battle_soul_blue_aqua)){
	draw_text(0, 315, "Moving:"+string(battle_soul.moving))
	draw_text(0, 335, "Falling Speed(move):"+string(battle_soul.move))
	draw_text(0, 355, "Touched Board(bbb):"+string(battle_soul.bbb))
	draw_text(0, 375, "Gravity Jump:"+string(battle_soul._gravity_jump))
	draw_text(0, 395, "Dir:"+string(battle_soul.dir))
	}else if(instance_exists(battle_soul)){
	draw_text(0, 315, "Soul Image Angle:"+string(battle_soul.image_angle))}
	if(instance_exists(battle_soul_green)||instance_exists(battle_soul_green_aqua)){
	if(instance_exists(battle_soul_green_shield1)&&!instance_exists(battle_soul_green_shield2)){
	draw_text(0, 335, "Green Soul Angles:["+string(battle_soul.image_angle)+","+string(battle_soul_green_shield1.image_angle)+"]")}
	if(instance_exists(battle_soul_green_shield1)&&instance_exists(battle_soul_green_shield2)){
	draw_text(0, 335, "Green Soul Angles:["+string(battle_soul.image_angle)+","+string(battle_soul_green_shield1.image_angle)+","+string(battle_soul_green_shield2.image_angle)+"]")}
	}
	if(instance_exists(battle_soul_orange)||instance_exists(battle_soul_aqua_orange)){
	draw_text(0, 335, "Moveable:"+string(battle_soul.moveable))
	draw_text(0, 355, "Moving:["+string(battle_soul.moveup)+","+string(battle_soul.movedown)+","+string(battle_soul.moveleft)+","+string(battle_soul.moveright)+"]")
	}
}else{
	if(instance_exists(char_player)){
	draw_playerxy="Character XY:["+string(char_player.x)+","+string(char_player.y)+"]"
	draw_playerspeed="Character Move Speed:["+string(char_player.move_speed[DIR.UP])+","+string(char_player.move_speed[DIR.DOWN])+","+string(char_player.move_speed[DIR.LEFT])+","+string(char_player.move_speed[DIR.RIGHT])+"]"
	draw_playersprite="Character Sprite:"+sprite_get_name(char_player.sprite_index)+"["+string(int64(char_player.image_index))+"]"
	draw_playercanmove="Moveable:"+string(char_player.can_move)+"["+string(char_player.moveable)+","+string(char_player._moveable_box)+","+string(char_player._moveable_dialog)+","+string(char_player._moveable_encounter)+","+string(char_player._moveable_menu)+","+string(char_player._moveable_save)+","+string(char_player._moveable_warp)+"]"
	draw_playerflavor="Flavor:"+char_player.flavor
	draw_text(0, 175, draw_playerxy)
	draw_text(0, 195, draw_playerspeed)
	draw_text(0, 215, draw_playersprite)
	draw_text(0, 235, draw_playercanmove)
	draw_text(0, 255, draw_playerflavor)}
}
    draw_text(0, 35, draw_room)
    draw_text(0, 55, draw_fps)
    draw_text(0, 75, draw_language)
    draw_text(0, 95, draw_windowsize)
    draw_text(0, 115, draw_instance_count)
    draw_text(0, 135, draw_mousexy)
    draw_text(0, 155, draw_hp_kr)
	if(global.undead=1){
	draw_text(85,15,"Undead Mode")}
	}
