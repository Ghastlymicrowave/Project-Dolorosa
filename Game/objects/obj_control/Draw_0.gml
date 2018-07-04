if chat = 1 {
	if tick != 1 then tick += faderate
	draw_sprite_ext(spr_testbackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,tick)
	
	} else tick = 0