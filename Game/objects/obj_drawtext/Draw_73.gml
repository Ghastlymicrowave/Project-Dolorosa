draw_set_font(global.customfont1);
draw_set_halign(fa_middle);
draw_set_valign(fa_middle);
//draw_text_transformed(obj_player.x-100,obj_player.y-100,string(drawtext),2, 2, 0);


if texttype=1 {
	draw_text_ext(camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*.7861,drawtext,8,600)
}
else if texttype=2{
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_text_ext(camera_get_view_x(view_camera[0]) + 21 ,camera_get_view_y(view_camera[0])+camera_get_view_height(view_camera[0])*.7861,drawtext,12,607)
}// height is 283