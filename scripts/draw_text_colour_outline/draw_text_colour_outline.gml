///@arg x,y,string,c1,c2,alpha,outline_c1,outline_c2,outline_alpha,outline_width,precision,xscale,yscale,angle
function draw_text_colour_outline(){
    for (var i = 0; i < 360; i += (360 / argument[10])){
        draw_text_transformed_color((argument[0] + lengthdir_x(argument[9], i)), (argument[1] + lengthdir_y(argument[9], i)), string(argument[2]), argument[11], argument[12], argument[13], argument[6], argument[6], argument[7], argument[7], argument[8])}
    draw_text_transformed_color(argument[0], argument[1], string(argument[2]), argument[11], argument[12], argument[13], argument[3], argument[3], argument[4], argument[4], argument[5])
    return;
}