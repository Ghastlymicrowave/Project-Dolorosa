x = obj_player.x + obj_player.hspeed
y = obj_player.y + obj_player.vspeed

//speed = obj_player.timeheld * 2 +100
xviewcenter = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2
yviewcenter = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2
speed = point_distance(xviewcenter,yviewcenter,mouse_x,mouse_y)
if obj_control.chat = 1 {
	if speed > 50 then speed = 50

	if obj_control.convo = 1 or obj_control.convo = 2 obj_control.convo = 3{
		if obj_interactable_test.x > x {
x = obj_player.x  + point_distance(obj_player.x,0,obj_interactable_test.x,0)/2
		} else {
x = obj_player.x  - point_distance(obj_player.x,0,obj_interactable_test.x,0)/2			
		}
	
	
	    if obj_interactable_test.y > y {
y = obj_player.y  + point_distance(0,obj_player.y,0,obj_interactable_test.y)/2
		} else {
y = obj_player.y  - point_distance(0,obj_player.y,0,obj_interactable_test.y)/2
		}
	}
}
if speed > 250 then speed = 250
if obj_player.mouseaiming = 1 then direction = point_direction(xviewcenter,yviewcenter,mouse_x,mouse_y)
else direction = obj_player.dir
if speed = 0{
	direction = 0
}

speed = speed * modifier

//if distance_to_object(obj_player) > point_distance(obj_player.x,obj_player.x,mouse_x,mouse_y){
//	speed = speed *.9}




//if speed > 0 and tick2 = 0 {
//	tick = tick + 1
//	tick2 = 2
//} else tick2 = tick2 - 1
