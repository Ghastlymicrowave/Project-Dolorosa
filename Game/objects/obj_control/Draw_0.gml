if chat = 1 {
	if tick != 1 then tick += faderate
//	draw_sprite_ext(spr_testbackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,tick)
	draw_sprite_stretched_ext(spr_testbackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,tick)
	depth = -500
	
	if obj_drawtext.textcomplete=1 then draw_sprite(spr_textarrow,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*.85,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*.75)
	} else tick = 0
	
	
