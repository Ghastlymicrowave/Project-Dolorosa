x =obj_player.x
y= obj_player.y-60



if irandom(8) = 0 {
if irandom(1) = 0 then x = x + irandom(1)
else x = x - irandom(1)
}

if irandom(8) = 0 {
if irandom(1) = 0 then y = y + irandom(5)
else y = y - irandom(5)
}



tick = tick -1
if tick = 0 {
	tick = tick1max
	
	if fadeIn1FadeOut0 = 0 { 
	 image_alpha = image_alpha -0.1  
}
else if fadeIn1FadeOut0 = 1 {

	image_alpha = image_alpha +0.1
}
	tick2 = tick2 -1
	if tick2 = 0 {
		tick2 = 10
if fadeIn1FadeOut0= 1 then fadeIn1FadeOut0 = 0 
else if fadeIn1FadeOut0 = 0 then fadeIn1FadeOut0 = 1
	}
}