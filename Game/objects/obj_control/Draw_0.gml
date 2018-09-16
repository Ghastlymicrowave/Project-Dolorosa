if chat = 1 {
	
	camx = camera_get_view_x(view_camera[0])
	camy = camera_get_view_y(view_camera[0])
	camw = camera_get_view_width(view_camera[0])
	camh = camera_get_view_height(view_camera[0])
	
	
	
	if tick != 1 then tick += faderate
//	draw_sprite_ext(spr_testbackground,0,camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]),1,1,0,c_white,tick)
	
	//left
		draw_sprite(leftSprite,0,camx+camw*leftSpriteHOffset,camy+camh*leftSpriteVOffset)
	// right
		draw_sprite(rightSprite,0,camx+camw*rightSpriteHOffset,camy+camh*rightSpriteVOffset)

	depth = -500
	draw_sprite_stretched_ext(spr_backgroundNameplate,0,camx,camy,camw,camh,c_white,tick)
	draw_sprite_stretched_ext(spr_backgroundBackground,0,camx,camy,camw,camh,c_white,tick)
	
		// nameplate
		draw_sprite(nameplate,0,camx+camw*0.6875,camy+camh*0.611111)
	} else tick = 0
	
	
if inventory = 1 {
	camx = camera_get_view_x(view_camera[0])
	camy = camera_get_view_y(view_camera[0])
	camw = camera_get_view_width(view_camera[0])
	camh = camera_get_view_height(view_camera[0])
	depth = -500
	draw_sprite_stretched_ext(spr_inventoryBackground,0,camx,camy,camw,camh,c_white,1)	
	
	
}