///@arg index
function Shop_CallDialog(){
	var INDEX = argument[0];

	if(INDEX < 4 && INDEX >= 0)
	{
		var blt = instance_create_depth(0,0,0,shop._host.dialog[INDEX]);
		with(blt)
			event_user(0);
	}
}