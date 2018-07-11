x = obj_player.x + obj_player.hspeed
y = obj_player.y + obj_player.vspeed

speed = obj_player.timeheld * 2 +100

if speed > 400 then speed = 400

if obj_player.mouseaiming = 1 then direction = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y)
else direction = obj_player.dir
//if distance_to_object(obj_player) > point_distance(obj_player.x,obj_player.x,mouse_x,mouse_y){
//	speed = speed *.9}




//if speed > 0 and tick2 = 0 {
//	tick = tick + 1
//	tick2 = 2
//} else tick2 = tick2 - 1
