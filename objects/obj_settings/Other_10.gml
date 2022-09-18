if(instance_exists(title)){
instance_destroy(title)}
if(instance_exists(language)){
instance_destroy(language)}
if(instance_exists(language_index)){
instance_destroy(language_index)}
if(instance_exists(size)){
instance_destroy(size)}
if(instance_exists(size_index)){
instance_destroy(size_index)}
if(instance_exists(fullscreen_obj)){
instance_destroy(fullscreen_obj)}
if(instance_exists(fullscreen_obj_index)){
instance_destroy(fullscreen_obj_index)}
if(instance_exists(mode)){
instance_destroy(mode)}
if(instance_exists(mode_index)){
instance_destroy(mode_index)}
if(instance_exists(volume)){
instance_destroy(volume)}
if(instance_exists(border_obj)){
instance_destroy(border_obj)}
if(instance_exists(border_obj_index)){
instance_destroy(border_obj_index)}
if(instance_exists(backtext)){
instance_destroy(backtext)}


language = instance_create_depth(70, 80, 0, text_typer)
language_index = instance_create_depth(450, 80, 0, text_typer)
size = instance_create_depth(70, 120, 0, text_typer)
size_index = instance_create_depth(450, 120, 0, text_typer)
fullscreen_obj=instance_create_depth(70, 160, 0, text_typer)
fullscreen_obj_index=instance_create_depth(450, 160, 0, text_typer)
mode=instance_create_depth(70, 200, 0, text_typer)
mode_index=instance_create_depth(450, 200, 0, text_typer)
volume=instance_create_depth(70, 240, 0, text_typer)
border_obj=instance_create_depth(70, 280, 0, text_typer)
border_obj_index=instance_create_depth(450, 280, 0, text_typer)
backtext=instance_create_depth(70, 320, 0, text_typer)

if(global.language=LANGUAGE.ENGLISH){
title = instance_create_depth(260, 30, 0, text_typer)
title.text = (prefix + "Settings")
language.text = (prefix + "Language")
language_index.text = (prefix + "{color `gray`}<{color `white`} English >")
size.text = (prefix + "Window Size")
fullscreen_obj.text = (prefix + "Fullscreen")
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=!browser_not_a_browser){
fullscreen_obj_index.text = (prefix + "{color `red`}N/A")}else{
fullscreen_obj_index.text = (prefix + fullscreen_text)}
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||fullscreen=2||Border_IsEnabled()=true){
size_index.text = (prefix + "{color `red`}N/A")}else{
size_index.text = (prefix + window_size_text)}
mode.text = (prefix + "Mode")
mode_index.text = (prefix + modetext)
volume.text=(prefix + "Volume")
border_obj.text = (prefix + "Border")
border_obj_index.text = (prefix + border_text)
backtext.text = (prefix + "Save \\& Back")

}else if(global.language=LANGUAGE.SCHINESE){
title = instance_create_depth(275, 30, 0, text_typer)
title.text = (prefix + "设置")
language.text = (prefix + "语言")
language_index.text = (prefix + "< 简体中文 {color `gray`}>")
size.text = (prefix + "窗口大小")
fullscreen_obj.text = (prefix + "全屏")
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||os_browser=!browser_not_a_browser){
fullscreen_obj_index.text = (prefix + "{color `red`}不可用")}else{
fullscreen_obj_index.text = (prefix + fullscreen_text)}
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||fullscreen=2||Border_IsEnabled()=true){
size_index.text = (prefix + "{color `red`}不可用")}else{
size_index.text = (prefix + window_size_text)}
mode.text = (prefix + "模式")
mode_index.text = (prefix + modetext)
volume.text=(prefix + "音量")
border_obj.text = (prefix + "边框")
border_obj_index.text = (prefix + border_text)
backtext.text = (prefix + "保存并返回")}
if(choice=1){
if(global.language=LANGUAGE.ENGLISH){
language.text = (prefix + "{color `yellow`}" + "Language")
language_index.text = (prefix + "{color `gray`}<{color `yellow`} English >")
}else if(global.language=LANGUAGE.SCHINESE){
language.text = (prefix + "{color `yellow`}" + "语言")
language_index.text = (prefix + "{color `yellow`}< 简体中文 {color `gray`}>")}}

if(choice=2){
if(global.language=LANGUAGE.ENGLISH){
size.text = (prefix + "{color `yellow`}" + "Window Size")
}else if(global.language=LANGUAGE.SCHINESE){
size.text = (prefix + "{color `yellow`}" + "窗口大小")}
if(os_type=os_android||os_type=os_ios||os_type=os_winphone||fullscreen=2||Border_IsEnabled()=true){
if(global.language=LANGUAGE.ENGLISH){
size_index.text = (prefix + "{color `red`}N/A")
}else if(global.language=LANGUAGE.SCHINESE){
size_index.text = (prefix + "{color `red`}不可用")}
}else{
size_index.text = (prefix + "{color `yellow`}" + window_size_text)}}

if(choice=3){
if(global.language=LANGUAGE.ENGLISH){
fullscreen_obj.text = (prefix + "{color `yellow`}" + "Fullscreen")
}else if(global.language=LANGUAGE.SCHINESE){
fullscreen_obj.text = (prefix + "{color `yellow`}" + "全屏")}
if(os_type=os_android||os_type=os_ios||os_type=os_winphone){
if(global.language=LANGUAGE.ENGLISH){
fullscreen_obj_index.text = (prefix + "{color `red`}N/A")
}else if(global.language=LANGUAGE.SCHINESE){
fullscreen_obj_index.text = (prefix + "{color `red`}不可用")}
}else{
fullscreen_obj_index.text = (prefix + "{color `yellow`}" + fullscreen_text)}}

if(choice=4){
if(global.language=LANGUAGE.ENGLISH){
mode.text = (prefix + "{color `yellow`}Mode")
}else if(global.language=LANGUAGE.SCHINESE){
mode.text = (prefix + "{color `yellow`}模式")}
mode_index.text = (prefix + "{color `yellow`}" +modetext)}

if(choice=5){
if(global.language=LANGUAGE.ENGLISH){
volume.text = (prefix + "{color `yellow`}Volume")
}else if(global.language=LANGUAGE.SCHINESE){
volume.text = (prefix + "{color `yellow`}音量")}}

if(choice=6){
if(global.language=LANGUAGE.ENGLISH){
border_obj.text = (prefix + "{color `yellow`}Border")
}else if(global.language=LANGUAGE.SCHINESE){
border_obj.text = (prefix + "{color `yellow`}边框")}
border_obj_index.text = (prefix + "{color `yellow`}" + border_text)}

if(choice=7){
if(global.language=LANGUAGE.ENGLISH){
backtext.text = (prefix + "{color `yellow`}Save \\& Back")
}else if(global.language=LANGUAGE.SCHINESE){
backtext.text = (prefix + "{color `yellow`}保存并返回")}}