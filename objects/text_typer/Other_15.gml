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
ds_map_add(_map_macro,"FONT.SANS",3);
ds_map_add(_map_macro,"FONT.PAPYRUS",4);
ds_map_add(_map_macro,"FONT.GASTER",5);
ds_map_add(_map_macro,"FONT.INKSANS",6);

ds_map_add(_map_macro,"VOICE.NULL",-1);
ds_map_add(_map_macro,"VOICE.DEFAULT",0);
ds_map_add(_map_macro,"VOICE.TYPER",1);
ds_map_add(_map_macro,"VOICE.TORIEL",2);
ds_map_add(_map_macro,"VOICE.SANS",3);
ds_map_add(_map_macro,"VOICE.PAPYRUS",4);
ds_map_add(_map_macro,"VOICE.ASGORE",5);
ds_map_add(_map_macro,"VOICE.GASTER",6);
ds_map_add(_map_macro,"VOICE.CHARA",7);
ds_map_add(_map_macro,"VOICE.ASRIEL",8);
ds_map_add(_map_macro,"VOICE.ASRIEL_DREEMURR",9);
ds_map_add(_map_macro,"VOICE.FLOWEY",10);
ds_map_add(_map_macro,"VOICE.ALPHYS",11);
ds_map_add(_map_macro,"VOICE.UNDYNE",12);
ds_map_add(_map_macro,"VOICE.SPONGE",13);

_group_font[0,0]=font_dialog
_group_font_scale_x[0,0]=1;
_group_font_scale_y[0,0]=1;
_group_font_space_x[0,0]=0;
_group_font[0,1]=font_chs
_group_font_scale_x[0,1]=1;
_group_font_scale_y[0,1]=1;
_group_font_space_x[0,1]=1
_group_font_space_y[0]=0;

_group_font[1,0]=font_menu
_group_font_scale_x[1,0]=1;
_group_font_scale_y[1,0]=1;
_group_font_space_x[1,0]=0;
_group_font[1,1]=font_chs
_group_font_scale_x[1,1]=1;
_group_font_scale_y[1,1]=1;
_group_font_space_x[1,1]=0
_group_font_space_y[1]=0;

_group_font[2,0]=font_battle
_group_font_scale_x[2,0]=1;
_group_font_scale_y[2,0]=1;
_group_font_space_x[2,0]=0;
_group_font[2,1]=font_chs_enemy
_group_font_scale_x[2,1]=1;
_group_font_scale_y[2,1]=1;
_group_font_space_x[2,1]=1
_group_font_space_y[2]=1;

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

_group_font[6,0]=font_inksans
_group_font_scale_x[6,0]=1
_group_font_scale_y[6,0]=1
_group_font_space_x[6,0]=1
_group_font[6,1]=font_sans
_group_font_scale_x[6,1]=1
_group_font_scale_y[6,1]=1
_group_font_space_x[6,1]=1
_group_font_space_y[6]=1

_group_voice[0,0]=snd_text_voice_default;
_group_voice[1,0]=snd_text_voice_typer;
_group_voice[2,0]=snd_text_voice_toriel;
_group_voice[3,0]=snd_text_voice_sans;
_group_voice[4,0]=snd_text_voice_papyrus;
_group_voice[5,0]=snd_text_voice_asgore;
_group_voice[6,0]=snd_text_voice_gaster1
_group_voice[6,1]=snd_text_voice_gaster2
_group_voice[6,2]=snd_text_voice_gaster3
_group_voice[6,3]=snd_text_voice_gaster4
_group_voice[6,4]=snd_text_voice_gaster5
_group_voice[6,5]=snd_text_voice_gaster6
_group_voice[6,6]=snd_text_voice_gaster7
_group_voice[7,0]=snd_text_voice_chara
_group_voice[8,0]=snd_text_voice_asriel
_group_voice[9,0]=snd_text_voice_asriel_dreemurr
_group_voice[10,0]=snd_text_voice_flowey
_group_voice[11,0]=snd_text_voice_alphys
_group_voice[12,0]=snd_text_voice_undyne
_group_voice[13,0]=snd_text_voice_spongebob

_group_face[0]=face;
_group_face[1]=face_sans;