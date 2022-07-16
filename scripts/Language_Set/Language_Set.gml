// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Language_Set(){
global.language=argument[0]
Encounter_Custom()
room_restart()
Flag_Set(FLAG_TYPE.SETTINGS,FLAG_SETTINGS.LANGUAGE,argument[0])
//Flag_Save(FLAG_TYPE.SETTINGS)
}