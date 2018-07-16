if step = -1 then step = 0


if obj_drawtext.textcomplete = 1 and keyboard_check_pressed(ord("E")) and chat = 1{
step = step + 1	
obj_drawtext.textcomplete=0
obj_drawtext.drawing = 0
} else if obj_drawtext.textcomplete = 0 and keyboard_check_pressed(ord("E")) and chat = 1 {
obj_drawtext.drawtext = obj_drawtext.text	
obj_drawtext.text= ""
}


if chat = 1{
	if convo = 4{
		if step = 1{
			DrawSumText("SUCC BUTT",2,1)
		}
		else if step = 2{
			DrawSumText("BUST NUT",2,1)
		}
		else if step = 3{
			EndConvo()
			StopDrawingText()
		}
	}else if convo = 5{
		if step = 1{
			DrawSumText("YA YEET",2,1)
		}
		else if step = 2{
			DrawSumText("MY MEAT",2,1)
		}
		else if step = 3{
			EndConvo()
			StopDrawingText()
		}
	//}else if convo = 3{
	//	if step = 1{
	//		DrawSumText("STOP TALKING TO ME NOW",2,1)
	//	}
	//	else if step = 2{
	//		DrawSumText("ITS GETTING ANNOYING",2,1)
	//	}
	//	else if step = 3{
	//		EndConvo()
	//		StopDrawingText()
	//	}
	}
	}
