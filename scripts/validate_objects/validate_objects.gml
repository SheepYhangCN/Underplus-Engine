
/// @description Calls the right object functions

function check(instance, fun)
{
	
/// @arg instance 
/// @arg function 
/// @arg angle*

	var angle = argument_count > 2 ? argument[2] : -1
	
	if instance_exists(instance)
	{
		with(instance) 
		{
			switch(fun)
			{
				case "move": _move()	  break
				case "stop": _stop()	  break
				case "lerp": _lerp(angle) break
			}
		}
	}
}