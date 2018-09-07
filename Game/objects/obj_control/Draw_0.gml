if chat = 1 {
	if tick != 1 then tick += faderate
//	draw_sprite_ext(spr_testbackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,tick)
	
	//left
		draw_sprite(leftSprite,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*leftSpriteHOffset,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*leftSpriteVOffset)
	// right
		draw_sprite(rightSprite,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*rightSpriteHOffset,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*rightSpriteVOffset)

	depth = -500
	draw_sprite_stretched_ext(spr_backgroundNameplate,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,tick)
	draw_sprite_stretched_ext(spr_backgroundBackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]),c_white,tick)
	
		// nameplate
		draw_sprite(nameplate,0,camera_get_view_x(view_camera[0])+camera_get_view_width(view_camera[0])*0.6875,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*0.611111)
	} else tick = 0
	
	
