

wview = camera_get_view_width(view_camera[0]) 
hview = camera_get_view_height(view_camera[0]) 

if chat = 1 and viewschecked = 0{
startwview = wview
starthview = hview

widthttogo = startwview - 640
heighttogo = starthview - 360

viewschecked = 1
tick2 = 10
}



if chat =1{
	if tick2 != 0 {	
		camera_set_view_size(view_camera[0],wview -widthttogo * .1 ,hview - heighttogo * .1)
		tick2 = tick2 -1
	}
}else {
if wview != startwview then camera_set_view_size(view_camera[0],wview +widthttogo * .1 ,hview + heighttogo * .1)
	viewschecked=0
}

