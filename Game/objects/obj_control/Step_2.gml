


if chat = 1 {
obj_player.x -= obj_player.hspeed
obj_player.y -= obj_player.vspeed
obj_player.attacking = 0
obj_player.windup = -1
obj_player.cooldown = -1

}

if instance_exists(obj_option) and ID1 !=0 {
ID1.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/2) + obj_camerafollwing.hspeed
ID1.y = camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
	if ID2 !=0 {
		ID1.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/3) + obj_camerafollwing.hspeed
		ID1.y = camera_get_view_y(view_camera[0])+ (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
		ID2.x = camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0])/3)*2 + obj_camerafollwing.hspeed
		ID2.y = camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])) * .86 + obj_camerafollwing.vspeed
	}
}