if place_meeting(x,y,obj_interacthitbox) and not instance_exists(obj_indicator) { 
	instance_create_depth(obj_player.x,obj_player.y-60,-20,obj_indicator)}
else if instance_exists(obj_indicator) then obj_indicator.boom=1
// Use this code in a step command
// use obj_control.chat = 1 to make the chat stuff happen
//if place_meeting(x,y,obj_interacthitbox) and keyboard_check_pressed(ord("E")) {
//}