/*
x = obj_player.x + obj_player.hspeed
y = obj_player.y + obj_player.vspeed
*/

//speed = obj_player.timeheld * 2 +100

xviewcenter =  window_get_width()/2
yviewcenter =  window_get_height()/2

cursorx = window_mouse_get_x()
cursory = window_mouse_get_y()

//yviewcenter = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2
//xviewcenter = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2
//cursorx = mouse_x
//cursory = mouse_y



x = obj_player.x
y = obj_player.y

//if mouse_x < obj_player.x then x = x + horizoffset* -horizmod
//else if mouse_x < obj_player.x then x = x + horizoffset* horizmod
//if mouse_y < obj_player.y then y = y + verticaloffset* -verticalmod
//else if mouse_y > obj_player.y then y = y + verticaloffset* verticalmod

if cursorx < xviewcenter then x = x + horizoffset* -horizmod
else if cursorx < xviewcenter then x = x + horizoffset* horizmod
if cursory < yviewcenter then y = y + verticaloffset* -verticalmod
else if cursory > yviewcenter then y = y + verticaloffset* verticalmod

speed = point_distance(xviewcenter,yviewcenter,cursorx,cursory) /camerasenitivity

//speed = round(speed)
if obj_control.inventory = 1 {
	modifier = .25
}
if obj_control.chat = 1 {
	if speed > 50 then speed = 50

	if obj_control.convo=4 then centerCamBetweenPlayerAndObj(obj_interactable_test)
	else if obj_control.convo=5 then centerCamBetweenPlayerAndObj(obj_interactable_test2)
	else if obj_control.convo=6 then centerCamBetweenPlayerAndObj(obj_interactable_test3)
}
if speed > 250 then speed = 250
if obj_player.mouseaiming = 1 { direction = point_direction(xviewcenter,yviewcenter,cursorx,cursory)}
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
