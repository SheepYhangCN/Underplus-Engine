///@descr shield timer control
if((!keyboard_check(ord("C"))) || global.shield_useable == false)
        {
            if(global.shieldval < 120){
			if(global.mode=GAME_MODE.NORMAL){
                global.shieldval += 1.5}
			if(global.mode=GAME_MODE.EASY){
                global.shieldval += 2}
			if(global.mode=GAME_MODE.HARD){
                global.shieldval += 1}
			}
			global.shielding=false
        }
if(keyboard_check(ord("C")) && global.shield_useable == true && global.shieldval > 0)
        {
			if(global.mode=GAME_MODE.NORMAL){
            global.shieldval -= 2}
			if(global.mode=GAME_MODE.EASY){
            global.shieldval -= 1}
			if(global.mode=GAME_MODE.HARD){
            global.shieldval -= 3}
            global.shielding = true
        }
if(global.shieldval<=0){global.shielding=false}
        if(global.shieldval > 120){
            global.shieldval = 120}
        if(global.shieldval < 0){
            global.shieldval = 0}