if (type == 1){
    image_blend = #4040FF}
if (type == 2){
    image_blend = #ED008C}
surface_set_target(Battle_GetBoardSurface());{
	draw_self();
}surface_reset_target();