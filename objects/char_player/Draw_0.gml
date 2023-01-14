draw_self();

if(Input_IsPressed(INPUT.CONFIRM)&&can_move&&global.debug=true){
	draw_set_color(c_red);
	if(dir==DIR.UP){
		draw_rectangle(x-sprite_width/2+15,y-5,x+sprite_width/2-15,y-sprite_height+5,true);
	}
	if(dir==DIR.DOWN){
		draw_rectangle(x-sprite_width/2+15,y-sprite_height+30,x+sprite_width/2-15,y+10,true);
	}
	if(dir==DIR.LEFT){
		draw_rectangle(x,y-sprite_height+22,x+sprite_width/2-15,y-2,true);
	}
	if(dir==DIR.RIGHT){
		draw_rectangle(x,y-sprite_height+22,x+sprite_width/2+10,y-2,true);
	}
}