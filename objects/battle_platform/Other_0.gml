if(auto_destroy){
	var destroy=false;
	if(auto_destroy_dir==DIR.UP&&y<0){
		destroy=true;
	}
	if(auto_destroy_dir==DIR.DOWN&&y>480){
		destroy=true;
	}
	if(auto_destroy_dir==DIR.LEFT&&x<0){
		destroy=true;
	}
	if(auto_destroy_dir==DIR.RIGHT&&y>640){
		destroy=true;
	}
	if(destroy){
		instance_destroy();
	}
}
