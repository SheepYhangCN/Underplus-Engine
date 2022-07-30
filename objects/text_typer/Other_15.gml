///@desc Group & Macro
ds_map_add(_map_macro,"true",true);
ds_map_add(_map_macro,"false",false);

ds_map_add(_map_macro,"DIR.UP",DIR.UP);
ds_map_add(_map_macro,"DIR.DOWN",DIR.DOWN);
ds_map_add(_map_macro,"DIR.LEFT",DIR.LEFT);
ds_map_add(_map_macro,"DIR.RIGHT",DIR.RIGHT);

ds_map_add(_map_macro,"FONT.DIALOG",0);
ds_map_add(_map_macro,"FONT.MENU",1);
ds_map_add(_map_macro,"FONT.BATTLE",2);
ds_map_add(_map_macro,"font.sans",3);
ds_map_add(_map_macro,"font.papyrus",4);
ds_map_add(_map_macro,"font.gaster",5);
ds_map_add(_map_macro,"font.fzxs_dtm",6);
ds_map_add(_map_macro,"font.fzxs_dotum",7);
ds_map_add(_map_macro,"font.inksans",8);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);
ds_map_add(_map_macro,"voice.toriel",2);
ds_map_add(_map_macro,"voice.sans",3);
ds_map_add(_map_macro,"voice.papyrus",4);
ds_map_add(_map_macro,"voice.asgore",5);
ds_map_add(_map_macro,"voice.gaster",6);
ds_map_add(_map_macro,"voice.chara",7);

_group_font[0,0]=font_dialog
_group_font_scale_x[0,0]=1;
_group_font_scale_y[0,0]=1;
_group_font_space_x[0,0]=0;
_group_font[0,1]=font_chinese
_group_font_scale_x[0,1]=1;
_group_font_scale_y[0,1]=1;
_group_font_space_x[0,1]=1
_group_font_space_y[0]=0;

_group_font[1,0]=font_menu
_group_font_scale_x[1,0]=1;
_group_font_scale_y[1,0]=1;
_group_font_space_x[1,0]=0;
_group_font[1,1]=font_chinese
_group_font_scale_x[1,1]=1;
_group_font_scale_y[1,1]=1;
_group_font_space_x[1,1]=0
_group_font_space_y[1]=0;

_group_font[2,0]=font_battle
_group_font_scale_x[2,0]=1;
_group_font_scale_y[2,0]=1;
_group_font_space_x[2,0]=0;
_group_font[2,1]=font_chinese
_group_font_scale_x[2,1]=1;
_group_font_scale_y[2,1]=1;
_group_font_space_x[2,1]=1
_group_font_space_y[2]=0;

_group_font[3,0]=font_sans
_group_font_scale_x[3,0]=1;
_group_font_scale_y[3,0]=1;
_group_font_space_x[3,0]=1;
_group_font[3,1]=font_sans
_group_font_scale_x[3,1]=1;
_group_font_scale_y[3,1]=1;
_group_font_space_x[3,1]=1;
_group_font_space_y[3]=0;

_group_font[4,0]=font_papyrus
_group_font_scale_x[4,0]=1;
_group_font_scale_y[4,0]=1;
_group_font_space_x[4,0]=1;
_group_font[4,1]=font_papyrus
_group_font_scale_x[4,1]=1;
_group_font_scale_y[4,1]=1;
_group_font_space_x[4,1]=1;
_group_font_space_y[4]=0;

_group_font[5,0]=font_wingdings
_group_font_scale_x[5,0]=1;
_group_font_scale_y[5,0]=1;
_group_font_space_x[5,0]=0;
_group_font[5,1]=font_wingdings
_group_font_scale_x[5,1]=1;
_group_font_scale_y[5,1]=1;
_group_font_space_x[5,1]=0;
_group_font_space_y[5]=0;

_group_font[6,0]=font_fzxs12_18
_group_font_scale_x[6,0]=0.5
_group_font_scale_y[6,0]=0.5
_group_font_space_x[6,0]=1
_group_font[6,1]=font_fzxs12_18
_group_font_scale_x[6,1]=0.5
_group_font_scale_y[6,1]=0.5
_group_font_space_x[6,1]=1
_group_font_space_y[6]=-5

_group_font[7,0]=font_fzxs14_24
_group_font_scale_x[7,0]=0.5
_group_font_scale_y[7,0]=0.5
_group_font_space_x[7,0]=1
_group_font[7,1]=font_fzxs14_24
_group_font_scale_x[7,1]=0.5
_group_font_scale_y[7,1]=0.5
_group_font_space_x[7,1]=1
_group_font_space_y[7]=-5

_group_font[8,0]=font_inksans
_group_font_scale_x[8,0]=1
_group_font_scale_y[8,0]=1
_group_font_space_x[8,0]=1
_group_font[8,1]=font_sans
_group_font_scale_x[8,1]=1
_group_font_scale_y[8,1]=1
_group_font_space_x[8,1]=1
_group_font_space_y[8]=1

_group_voice[0,0]=snd_text_voice_default;
_group_voice[1,0]=snd_text_voice_typer;
_group_voice[2,0]=snd_text_voice_toriel;
_group_voice[3,0]=snd_text_voice_sans;
_group_voice[4,0]=snd_text_voice_papyrus;
_group_voice[5,0]=snd_text_voice_asgore;
_group_voice[6,0]=asset_get_index("snd_text_voice_gaster"+string(irandom_range(1,7)))
_group_voice[7,0]=snd_text_voice_chara

_group_face[0]=face;
_group_face[1]=face_sans;