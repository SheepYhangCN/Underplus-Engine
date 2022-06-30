var a=irandom_range(0,3)
if(global.mode=2){var time=90}else{var time=100}
if(a=0){
Battle_MakeBoneWallBottom(time,88,60)
Battle_MakeBoneWallLeft(time,88,60)
Battle_MakeBoneWallRight(time,88,60)
}

if(a=1){
Battle_MakeBoneWallTop(time,88,60)
Battle_MakeBoneWallLeft(time,88,60)
Battle_MakeBoneWallRight(time,88,60)
}

if(a=2){
Battle_MakeBoneWallTop(time,88,60)
Battle_MakeBoneWallBottom(time,88,60)
Battle_MakeBoneWallRight(time,88,60)
}

if(a=3){
Battle_MakeBoneWallTop(time,88,60)
Battle_MakeBoneWallBottom(time,88,60)
Battle_MakeBoneWallLeft(time,88,60)
}

alarm[0]=160