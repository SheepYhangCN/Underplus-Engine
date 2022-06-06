// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Shop_RefreshTyper(){
///@arg *left
///@arg *right
///@arg *state
///@arg *info
shop._typer_left_refresh = true;
shop._typer_right_refresh = true;
shop._typer_state_refresh = true;
shop._typer_info_refresh = true;

if(argument_count > 0)
shop._typer_left_refresh = argument[0];
if(argument_count > 1)
shop._typer_right_refresh = argument[1];
if(argument_count > 2)
shop._typer_state_refresh = argument[2];
if(argument_count > 3)
shop._typer_info_refresh = argument[3];

with(shop)
event_user(0);
}