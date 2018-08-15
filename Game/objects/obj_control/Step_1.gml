if step = -1 then step = 0


if obj_drawtext.textcomplete = 1 and keyboard_check_pressed(ord("E")) and chat = 1 and canadvancewithE = true{
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
			DrawSumText("HAAH",2,1)
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
	}else if convo = 6{
		if step =1{
			DrawSumText("EATING SUGAR",2,1)
		} 
		else if step = 3{
			canadvancewithE=true
			arechoicescreated=false
			DrawSumText("EATING ",2,1)
			
			
		//	if choice = 1 then DrawSumText("YOU LITTLE BITCH I TOLD YOU NOT TO",2,1)
		//	else DrawSumText("YOU GOOD FAM",2,1)
			
		} 
		else if step = 2{
			canadvancewithE = false
			DrawSumText("EATING SUGAAAR GEORG",2,1)
			if arechoicescreated=false {
				arechoicescreated=true
				ID1 = instance_create_depth(camera_get_view_x(view_camera[0]) +100 ,camera_get_view_y(view_camera[0])+283,-100,obj_option) 
				ID1.value=1
				}
				
				
		}
		else if step = 4{
			EndConvo()
			StopDrawingText()
		}
		}
		
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
