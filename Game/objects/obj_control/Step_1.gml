if step = -1 then step = 0


if obj_drawtext.textcomplete = 1 and keyboard_check_pressed(ord("E")) and chat = 1{
step = step + 1	
obj_drawtext.textcomplete=0
obj_drawtext.drawing = 0
}


if chat = 1{
	if convo = 1{
		if step = 1{
			DrawSumText("EEFSAFSAFASEAFE",2,1)
		}
		else if step = 2{
			DrawSumText("DSFDSFSDF",2,1)
		}
		else if step = 3{
		chat = 0
		convo = 0
		step = -1
		StopDrawingText()
		
		}
		}
	}
