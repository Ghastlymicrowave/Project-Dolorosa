if chat = 1{
	if convo = 1{
		if step = 1{
			DrawSumText("EEFSAFSAFASEAFE",2,1)
			if not instance_exists(obj_textclicker) {
					if obj_drawtext.textcomplete = 1 then instance_create_depth(x,y, -100, obj_textclicker)
			}
		}
		else if step = 2{
			DrawSumText("DSFDSFSDF",2,1)
			if not instance_exists(obj_textclicker) {
					if obj_drawtext.textcomplete = 1 then instance_create_depth(x,y, -100, obj_textclicker)
			}
		else if step = 3{
		chat = 0
		convo = 0
		step = 0
		StopDrawingText()
		
		}
		}
	}
}