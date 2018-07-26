
		if argument[0].x > x {
x = obj_player.x  + point_distance(obj_player.x,0,argument[0].x,0)/2
		} else {
x = obj_player.x  - point_distance(obj_player.x,0,argument[0].x,0)/2			
		}
	
	
	    if argument[0].x > y {
y = obj_player.y  + point_distance(0,obj_player.y,0,argument[0].y)/2
		} else {
y = obj_player.y  - point_distance(0,obj_player.y,0,argument[0].y)/2
		}
