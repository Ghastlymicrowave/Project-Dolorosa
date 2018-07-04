//x = camera_get_view_x(view_camera[0]) + 500
//y = camera_get_view_y(view_camera[0]) + 400

x= obj_player.x
y= obj_player.y

if keyboard_check_pressed(ord("E")) {
	obj_drawtext.textcomplete=0
	obj_drawtext.drawing = 0
	obj_control.step = obj_control.step + 1
	instance_destroy()
}